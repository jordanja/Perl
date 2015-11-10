#!/usr/bin/perl -w
# compile with: /usr/bin/perl -w die.pl

# perl has no argc
# $#ARRAY is count of elements
# die tells us which line we failed on

if ($#ARGV < 0){					# OR !@ARGV
	print "Usag: $0 <number>\n";	# print STDERR ... OR die
	exit 1;
}
# OR
#	 die "Usag: $0 <number>\n" if !@ARGV



$n = $ARGV[0];
$n_factors = 0;
foreach $i (1..$n){
	if ($n % $i == 0 ){
		$n_factors ++;
	}
}

print "$n has $n_factors factors\n";