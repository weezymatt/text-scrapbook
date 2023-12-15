#!/bin/perl
%transition_table = (
	s => {a => "s", b => "2"},
	2 => {a => "3", b => "5"},
	3 => {a => "5", b => "4"},
	4 => {a => "4", b => "4"},
	5 => {a => "3", b => "5"}
);
$state = "s";
foreach $c (@ARGV) {
	$state = $transition_table{$state}{$c};
}
if ($state eq "2" || $state eq "4" || $state eq "5") {print "Accept\n";}
else {print "Reject\n"}
