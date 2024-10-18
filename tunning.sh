#!/bin/bash

# Define ranges for hyperparameters
learning_rates=(0.1 0.5 1.0)
epochs=(10 25 50)
dimensions=(50 100)
word_ngrams=(1 2 3)

# Iterate over all combinations of hyperparameters
for lr in "${learning_rates[@]}"; do
    for epoch in "${epochs[@]}"; do
        for dim in "${dimensions[@]}"; do
            for ngram in "${word_ngrams[@]}"; do
                # Train the model with the current hyperparameters
                fastText-0.9.2/fasttext supervised -input tickets.train -output model_ticket_lr${lr}_epoch${epoch}_dim${dim}_ngram${ngram} -lr $lr -epoch $epoch -wordNgrams $ngram -bucket 200000 -dim $dim -loss hs
                
                # Test the model and capture output
                output=$(fastText-0.9.2/fasttext test model_ticket_lr${lr}_epoch${epoch}_dim${dim}_ngram${ngram}.bin tickets.valid)
                
                # Print the results for this set of hyperparameters
                echo "Results for lr=$lr, epoch=$epoch, dim=$dim, ngram=$ngram"
                echo "$output"
            done
        done
    done
done
