# fastText2

## Replicate tutorial: 
### Download fastText: 
$ wget https://github.com/facebookresearch/fastText/archive/v0.9.2.zip
$ unzip v0.9.2.zip


Move to the fastText directory and build it:

$ cd fastText-0.9.2
For command line tool :
$ make
For python bindings :
$ pip install .


### Getting and preparing the data
- We download examples of questions from the cooking section of Stackexchange, and their associated tags:
$ wget https://dl.fbaipublicfiles.com/fasttext/data/cooking.stackexchange.tar.gz && tar xvzf cooking.stackexchange.tar.gz

$ head cooking.stackexchange.txt

$ Output: 
__label__sauce __label__cheese How much does potato starch affect a cheese sauce recipe?
__label__food-safety __label__acidity Dangerous pathogens capable of growing in acidic environments
__label__cast-iron __label__stove How do I cover up the white spots on my cast iron stove?

- Use this bash to check number of examples in the full dataset: 
$ wc cooking.stackexchange.txt

Output: 15404  169582 1401900 cooking.stackexchange.txt
(This is similar to our tutorial)

- Split the dataset into training and validation set: 
$ head -n 12404 cooking.stackexchange.txt > cooking.train
$ tail -n 3000 cooking.stackexchange.txt > cooking.valid

### First Classifier: 
Run out first classifier by this command: 
$ ./fasttext supervised -input cooking.train -output model_cooking

Output: 
Read 0M words
Number of words:  14543
Number of labels: 735
Progress: 100.0% words/sec/thread:   17458 lr:  0.000000 avg.loss: 10.138867 ETA:   0h 0m 0s

Total number of words is 14543 which is smaller than the tutorial which has 14598 words. 

Test on validation data:
$ ./fasttext test model_cooking.bin cooking.valid

Output: 
N       3000
P@1     0.139
R@1     0.0603

My P@1 and R@1  are higher than the tutorial's result ( 0.139 > 0.124 and  0.0603 > 0.0541)

### Improve Model: 

#### preprocessing the data
A crude normalization can be obtained using command line tools such as sed and tr:
>> cat cooking.stackexchange.txt | sed -e "s/\([.\!?,'/()]\)/ \1 /g" | tr "[:upper:]" "[:lower:]" > cooking.preprocessed.txt
>> head -n 12404 cooking.preprocessed.txt > cooking.train
>> tail -n 3000 cooking.preprocessed.txt > cooking.valid

Train a new model: 
>> ./fasttext supervised -input cooking.train -output model_cooking

>> Output: 
Read 0M words
Number of words:  8952
Number of labels: 735
Progress: 100.0% words/sec/thread:   19030 lr:  0.000000 avg.loss: 10.080169 ETA:   0h 0m 0s
>> ./fasttext test model_cooking.bin cooking.valid
N       3000
P@1     0.166
R@1     0.0718

Although the precise number is different but we also observe a similar trend compare to the tutorial thanks to the pre-processing. The vocabulary is smaller (from 14k words to 8k). The precision is also starting to go up by 3%!


#### word n-grams
>> ./fasttext supervised -input cooking.train -output model_cooking -lr 1.0 -epoch 25 -wordNgrams 2

>> Read 0M words
Number of words:  8952
Number of labels: 735
Progress: 100.0% words/sec/thread:   19590 lr:  0.000000 avg.loss:  3.228167 ETA:   0h 0m 0s

>> ./fasttext test model_cooking.bin cooking.valid

N       3000
P@1     0.609
R@1     0.263

The result is even better. 

#### Hierarchical softmax
>> ./fasttext supervised -input cooking.train -output model_cooking -lr 1.0 -epoch 25 -wordNgrams 2 -bucket 200000 -dim 50 -loss hs

Output: 
Read 0M words
Number of words:  8952
Number of labels: 735
Progress: 100.0% words/sec/thread:  471924 lr:  0.000000 avg.loss:  2.071534 ETA:   0h 0m 0s

The processing time is faster. 

#### Multi-label classification
>> ./fasttext supervised -input cooking.train -output model_cooking -lr 0.5 -epoch 25 -wordNgrams 2 -bucket 200000 -dim 50 -loss one-vs-all

Read 0M words
Number of words:  8952
Number of labels: 735
Progress: 100.0% words/sec/thread:   29994 lr:  0.000000 avg.loss:  4.091903 ETA:   0h 0m 0s

>> ./fasttext test model_cooking.bin cooking.valid -1 0.5 

N       3000
P@-1    0.681
R@-1    0.255




## Try on new dataset 
<!-- Step 1: Set up environment by using pip: 
>> pip install requests beautifulsoup4
Step 2: Run the scraping code: 
python scrape_data.py 

https://www.kaggle.com/datasets/adisongoh/it-service-ticket-classification-dataset -->

1. Download dataset using: 
### Install Kaggle API
pip install kaggle

### Download the dataset
kaggle datasets download -d adisongoh/it-service-ticket-classification-dataset

### Unzip the downloaded file
unzip it-service-ticket-classification-dataset.zip

### Convert a CSV file to a TXT file while adding the prefix __label__ to the values in the "Topic_group" column: 
awk -F, 'NR==1 {print; next} {print "__label__" $2, $0}' all_tickets_processed_improved_v3.csv > all_tickets.txt 

<!-- mv all_tickets_processed_improved_v3.csv all_tickets.txt  -->
2. Split the data into training and testing: 
### Check how many entries in the dataset: 
$ wc all_tickets.txt
   47838  2100361 14568920 all_tickets.txt
- Split the dataset into training and validation set: (70% and 30%)
$ head -n 33486 all_tickets.txt > tickets.train
$ tail -n 14352 all_tickets.txt > tickets.valid

### First Classifier: 
Run out first classifier by this command: 
$ fastText-0.9.2/fasttext supervised -input tickets.train -output model_ticket

Output: 
Read 1M words
Number of words:  13688
Number of labels: 9
Progress:  16.3% words/sec/thread:  879402 lr:  0.083690 avg.loss:  0.923751 ETProgress:  32.9% words/sec/thread:  887807 lr:  0.067093 avg.loss:  0.596394 ETProgress:  49.4% words/sec/thread:  905318 lr:  0.050602 avg.loss:  0.448394 ETProgress:  65.4% words/sec/thread:  907600 lr:  0.034555 avg.loss:  0.369345 ETProgress:  78.4% words/sec/thread:  874508 lr:  0.021640 avg.loss:  0.330661 ETProgress:  95.3% words/sec/thread:  885206 lr:  0.004714 avg.loss:  0.292644 ETProgress: 100.0% words/sec/thread:  799274 lr: -0.000024 avg.loss:  0.282090 ETProgress: 100.0% words/sec/thread:  799057 lr:  0.000000 avg.loss:  0.282090 ETA:   0h 0m 0s

Test on validation data:
$ fastText-0.9.2/fasttext test model_ticket.bin tickets.valid

N       14352
P@1     0.895
R@1     0.895

### Improve Model: 

#### preprocessing the data
A crude normalization can be obtained using command line tools such as sed and tr:
>> cat all_tickets.txt | sed -e "s/\([.\!?,'/()]\)/ \1 /g" | tr "[:upper:]" "[:lower:]" > tickets.preprocessed.txt

>> head -n 33486 tickets.preprocessed.txt > tickets.train

>> tail -n 14352 tickets.preprocessed.txt > tickets.valid

Train a new model: 
>> fastText-0.9.2/fasttext supervised -input tickets.train -output model_ticket

Output: 
Read 1M words
Number of words:  11093
Number of labels: 9
Progress: 100.0% words/sec/thread:  836397 lr:  0.000000 avg.loss:  0.227094 ETA:   0h 0m 0s

The total number of words decrease from 13k to 11k. 

>> fastText-0.9.2/fasttext test model_ticket.bin tickets.valid

N       14352
P@1     0.927
R@1     0.927

Although the precise number is different but we also observe a similar trend compare to the tutorial thanks to the pre-processing. The vocabulary is smaller (from 13k words to 11k). The precision is also starting to go up by 1%!


#### word n-grams
>> fastText-0.9.2/fasttext supervised -input tickets.train -output model_ticket -lr 1.0 -epoch 25 -wordNgrams 2

Read 1M words
Number of words:  11093
Number of labels: 9
Progress: 100.0% words/sec/thread:  499870 lr:  0.000000 avg.loss:  0.003626 ETA:   0h 0m 0s

>> fastText-0.9.2/fasttext test model_ticket.bin tickets.valid

N       14352
P@1     0.976
R@1     0.976

The result is even better.The precision now is 97.6%. 


#### Hierarchical softmax
>> fastText-0.9.2/fasttext supervised -input tickets.train -output model_ticket -lr 1.0 -epoch 25 -wordNgrams 2 -bucket 200000 -dim 50 -loss hs

Output: 
Read 1M words
Number of words:  11093
Number of labels: 9
Progress: 100.0% words/sec/thread:  725031 lr:  0.000000 avg.loss:  0.004239 ETA:   0h 0m 0s

The processing time is faster. 

>> fastText-0.9.2/fasttext test model_ticket.bin tickets.valid

N       14352
P@1     0.988
R@1     0.988

The result is even better.The precision now is 98.8%. 

### Hyperparameter tuning
>> bash tunning.sh 

The hyperparameter result is saved in "best_results.txt"