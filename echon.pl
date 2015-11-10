#!/usr/bin/perl -w
# compile with: /usr/bin/perl -w echon.pl


#let count be one less than argv[0] since 
#our cound begins from 0
$count = $ARGV[0] - 1;

#let a be the string to repeat
$a = $ARGV[1];


#if the count of arguments is 
#not 2 display and error
if (@ARGV != 2){
	print "Usage: ./echon.pl <number of lines> <string>\n"
} else {
	
	#loop and print the string
	foreach  $i (0..$count) {
		print $a, "\n";
		$i ++;
	}

}