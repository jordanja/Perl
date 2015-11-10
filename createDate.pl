#!/usr/bin/perl -w
# compile with: /usr/bin/perl -w createDate.pl
# read in text file with names, dates reasons
# parse lines

while ($line = <STDIN>) {
	@field = split /,/, $line; #like cut but a regexp
	$name = $field[0];
	$name =` s/"//g;
	chomp $name;
	print "$name\n";
}

