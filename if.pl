#!/usr/bin/perl -w
# compile with: /usr/bin/perl -w if.pl

# perl has no argc
# $#ARRAY is count of elements


if ($#ARGV < 0){					
	print "Usag: $0 <number>\n";	
	exit 1;
}




$n = $ARGV[0];
$n_factors = 0;
foreach $i (1..$n){
	if ($n % $i == 0 ){
		$n_factors ++;
	}
}

print "$n has $n_factors factors\n";