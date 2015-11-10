#!/usr/bin/perl -w
# compile with: /usr/bin/perl -w array.pl


while (1) {
	print "Enter array index: ";
	$n = <STDIN>;
	if (!$n){
		last;
	}
	comp $n
	$a[$n] = 42;
	print "Element $n not contains $a[$n]\n";
	printf "Array is now size %d\n";
}