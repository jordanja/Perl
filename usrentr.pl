#!/usr/bin/perl -w
# compile with: /usr/bin/perl -w usrentr.pl
# infinate loop

while ("Andrew Rocks"){
	print "Enter a number: ";
	$n = <STDIN>;

	#look for white space: print "xxx$nxxx\n" pearl sees $nxxx
	#			  we must: print "xxx${n}xxx\n"
	#				   or: print "#$n#\n"
	# Result: gets us new-line after number.

	chomp $n;

	$n_factors = 0;
	foreach $i (1..$n){
		if ($n % $i == 0 ){
			$n_factors ++;
		}
		
	}
	print "$n has $n_factors factors\n";
}


