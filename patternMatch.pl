# data: pandora.txt
# Casual Regex for named entities | piped with command line 

# Step. 1a
perl -le 'open $f, "pandora.txt"; while (<$f>) {while (/[A-Z](\w+[-]?)+/g) {print $&}}' | wc -l
# no [A-Z]([a-z][-]?)+

# Step 1b
perl -le 'use utf8; use open qw(:std :utf8); open $f, "pandora.txt"; while (<$f>) {while (/[A-Z](\w+[-]?)+/g) {print $&}}' | wc -l

# Exceptions in txt file
# 1. "de" translates to determiner: "the" (e.g., [Helenda] de Chair)
# 2. "al" translates to determiner: "the" (e.g., al-Zayani)
# 3. Bonus: "bin" translates to: "Son of". (e.g., Zayed bin Rashid) 

# Step 2
perl -le 'open $f, "pandora.txt"; while (<$f>) {while (/\b([A-Z]\.?){2,}/g) {print $&}}' | wc -l

# Step 3

perl -le 'open $f, "pandora.txt"; while (<$f>) {while (/(([A-Z][a-z]+)\s?(?:of )?){2,}/g) {print $&}}' | wc -l

# Casual Regex | organized table structure

perl -le 'open $f, "pandora.txt"; while (<$f>) {while (/\b[A-Z][a-z]+\b(?: of)*(?: for)?(?: [A-Z]\w+)+/g) {$freq{$&}++}}; for (sort {$freq{$b} <=> $freq{$a}} keys %freq) {printf "%-40s %s\n", $_, $freq{$_}}' > sorted.txt

# Freq table via command line
pr -2t -s$'\t' sorted.txt
