# Text Normalization
Text normalization is a preprocessing step that puts words/tokens in a canonicalized form.

Solutions:
- Remove common substrings (stemming/lemmatization)
- Replace with vectors (embeddings)
- Mapping everything to lower case (case folding)

## Before Normalization...
1. Tokenize, or segment, words (byte-pair encoding useful to know since e.g. BERT uses bpe)
2. Normalize word formats
3. Segmenting sentences

## Minimum Edit Distance
The Levenshtein distance between two strings is defined as the mininum number of operations (i.e., deletion, insertion, substitution) required to transform string-1 to string-2. 

For a good visualization, please [click here](https://www.youtube.com/watch?v=We3YDTzNXEk).

## Byte Pair Encoding
Working on implementation... Click *insert link* to tokenization folder.
