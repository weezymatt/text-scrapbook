# Text Normalization
Text normalization is a preprocessing step that puts words/tokens in a canonicalized form.

Solutions:
- Remove common substrings (stemming/lemmatization)
- Replace with vectors (embeddings)
- Mapping everything to lower case (case folding)

Before Normalization...

1. Tokenize, or segment, words (byte-pair encoding useful to know since e.g. BERT uses bpe)
2. Normalize word formats
3. Segmenting sentences

## Distance Measurement
The measure of similarity between texts is a useful metric in many applications. There are many approaches of how to compare two texts (strings of characters). Each metric has its own advantages, disadvantages and specific use cases. A few algorithms are outlined below:

### Minimum Edit Distance — edit based 
The Levenshtein distance between two strings is defined as the mininum number of operations (i.e., deletion, insertion, substitution) required to transform string-1 to string-2. 

For a good visualization, please [click here](https://www.youtube.com/watch?v=We3YDTzNXEk).

Besides writing code from scratch, you can import the [`textdistance` library](https://github.com/life4/textdistance), written by [Gram Voronov](https://orsinium.dev/). 

```bash
import textdistance
```

There are about 30 edit distance algorithms available (e.g., [Hamming](https://en.wikipedia.org/wiki/Hamming_distance), [Needleman Wunsch](https://en.wikipedia.org/wiki/Needleman%E2%80%93Wunsch_algorithm), and [Smith Waterman](https://en.wikipedia.org/wiki/Smith%E2%80%93Waterman_algorithm)). 

### Jaccard Coefficient — token based
Another useful distance formula to know is the Jaccard coefficient for . It is the measure of similarity for two sets of data A and B (i.e = |A ∩ B| / |A ∪ B|). 

## Byte Pair Encoding
Working on implementation... Click *insert link* to tokenization folder.
