# Reference: Language Processing with Perl and Prolog (not my function but sorting below is)
# data: browncorpus.txt
#
# Bigrams & Frequencies using Perl


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
for ($i = 0; $i < $#words; $i++) {
$bigrams[$i] = $words[$i] . " " . $words[$i + 1];
}
for ($i = 0; $i < $#words; $i++) {
if (!exists($frequency_bigrams{$bigrams[$i]})) {
$frequency_bigrams{$bigrams[$i]} = 1;
} else {
$frequency_bigrams{$bigrams[$i]}++;
}
}
foreach $bigram (sort keys %frequency_bigrams){
print "$frequency_bigrams{$bigram} $bigram \n";
}

# > sorted_bigrams.txt
# unix command to organize easiest
# sort -n -r -k1,1 sorted_bigrams.txt
