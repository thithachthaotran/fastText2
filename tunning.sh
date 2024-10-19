#!/bin/bash

# Define ranges for hyperparameters
learning_rates=(0.1 0.5 1.0)
epochs=(10 25 50)
dimensions=(50 100)
word_ngrams=(1 2 3)

# Variables to track the best results
best_precision=0
best_params=""

# Iterate over all combinations of hyperparameters
for lr in "${learning_rates[@]}"; do
    for epoch in "${epochs[@]}"; do
        for dim in "${dimensions[@]}"; do
            for ngram in "${word_ngrams[@]}"; do
                # Train the model with the current hyperparameters
                model_output="model_ticket_lr${lr}_epoch${epoch}_dim${dim}_ngram${ngram}"
                fastText-0.9.2/fasttext supervised -input tickets.train -output "$model_output" -lr "$lr" -epoch "$epoch" -wordNgrams "$ngram" -bucket 200000 -dim "$dim" -loss hs > /dev/null 2>&1
                
                # Test the model and extract precision (P@1) silently
                precision=$(fastText-0.9.2/fasttext test "$model_output.bin" tickets.valid | grep "P@1" | awk '{print $2}' 2>/dev/null)
                
                # Check if this is the best precision
                if (( $(echo "$precision > $best_precision" | bc -l) )); then
                    best_precision="$precision"
                    best_params="lr=${lr}, epoch=${epoch}, dim=${dim}, ngram=${ngram}"
                fi
            done
        done
    done
done

# Save the best parameters and their corresponding result to a file
echo "Best parameters: $best_params" > best_results.txt
echo "Best precision (P@1): $best_precision" >> best_results.txt
