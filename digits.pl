#!/usr/bin/perl -w
# compile with: /usr/bin/perl -w digits.pl
# g-do all
# i-ignore case

$line=0;

#Loop goes through 
#each line in standard input
while ($line = <>) {
	#change each line using regexp's
	$line =~ s/[01234]/</gi;
	$line =~ s/[6789]/>/gi;	

	#display line
	print $line;
}