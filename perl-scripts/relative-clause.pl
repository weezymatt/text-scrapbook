# preferred (implicit) solution
print "Predicate-Argument Form\n";
$_ = qq/@ARGV/; 
while (/the (\w+) (who )?(\w+) (?=the (\w+))/g){ print "$3($1, $4)\n"};
# >>> the woman encountered the boy who encountered the girl


# Good lookahead example:
# Regex begins matching left to right; keeping track of a pointer
# Lookahead matches the overlapping pattern but does NOT advance the pointer!
# Pointer stays at the third $_ (after the relative pronoun (capture group)
# The pattern then begins where the pointer last matched

#							   v--pointer remains here (lookahead)
# ex. the (WOMAN) (ENCOUNTERED) the (?=BOY) 			   v--pointer now here
#  							    the (BOY) who (ENCOUNTERED) the (?=GIRL)


