###  Reference: 2.4.1 Unix Tools for Crude Tokenization and Normalization
### Command line use

## Tokenization 
tr -sc 'A-Za-z' '\n' < sh.txt

# Frequency computation
tr -sc 'A-Za-z' '\n' < sh.txt | sort | uniq -c

# Case folding
tr -sc 'A-Za-z' '\n' < sh.txt | tr A-Z a-z | sort | uniq -c

# Most frequent words in Shakespeare..not surprising they're function words! 
tr 'A-Za-z' '\n' <train.txt | tr A-Z a-z | sort | uniq -c | sort -n -r 

# Unix is a great tool for quick word count statistics on corpora!
