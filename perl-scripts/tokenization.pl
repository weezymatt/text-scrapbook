# Reference: Language Processing with Perl and Prolog (not my function but sorting below is)
# data: browncorpus.txt
#
# Tokenization & counts using Perl

use  utf8;
binmode(STDOUT, ":encoding(UTF-8)");
binmode(STDIN, ":encoding(UTF-8)");

$text = <>;
while ($line = <>) {
$text .= $line;
}
$text =~ tr/a-zåàâäæçéèêëîïôöœßùûüÿA-ZÅÀÂÄÆÇÉÈÊËÎÏÔÖŒÙÛÜŸ
’\-,.?!:;/\n/cs;
$text =~ s/([,.?!:;])/\n$1\n/g;
$text =~ s/\n+/\n/g;
# print $text;

@words = split(/\n/, $text);
for ($i = 0; $i <= $#words; $i++) {
if (!exists($frequency{$words[$i]})) {
$frequency{$words[$i]} = 1;
} else {
$frequency{$words[$i]}++;
}
}
foreach $word (sort keys %frequency){
print "$frequency{$word} $word\n";
}
# > unigrams.txt

# Unix Commands to sort
# sort -n -r -k1,1 unigrams.txt > sorted_file.tmp && mv sorted_file.tmp sorted_unigrams.txt