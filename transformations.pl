#!/usr/bin/perl -w
# compile with: /usr/bin/perl -w transformations.pl
# g-do all
# i-ignore case

$line=0;


while ($line = <STDIN>) {
	$line =~ s/[aeiou]/y/gi;
	print $line;
}