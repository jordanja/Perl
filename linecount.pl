#!/usr/bin/perl -w
# compile with: /usr/bin/perl -w linecount.pl
# ctrl-d to exit

while ("Andrew Rocks"){
	$line = <STDIN>;
	$n_lines++;
	if (!defined $line){
		last;
	}
	
}
print "$n_lines lines\n";


