#!/usr/bin/perl -w
# compile with: /usr/bin/perl -w loopcommand.pl

foreach $n (@ARGV){
	n$_factors = 0;
	foreach $i (1..$n){
		if ($n % $i == 0 ){
			$n_factors ++;
		}
		print "$n has $n_factors factors\n";
	}
}


