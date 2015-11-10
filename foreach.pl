#!/usr/bin/perl -w
# compile with: /usr/bin/perl -w foreach.pl


$a = "Andrew Rocks ";

foreach $i (0..19) {
	$a = $a . $a;
}

print $a, "\n";