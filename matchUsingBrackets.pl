#!/usr/bin/perl -w
# compile with: /usr/bin/perl -w matchUsingBrackets.pl

while ($line = <STDIN>) {
	@field = split /,/, $line; #like cut but a regexp
	$name = $field[0];
	$name =` s/"//g;
	chomp $name;
	$field[3] =~ /([0-9]+)/ or die;
	$penalty = $1;
	print "$name\n";
}

