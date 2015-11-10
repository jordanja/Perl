#!/usr/bin/perl -w
# compile with: /usr/bin/perl -w readfile.pl
# traditionally files are in caps

$file = "die.pl"
open ANDREW, $file;
$n_lines = 0;
while ("Andrew Rocks"){
	$line = <ANDREW>;
	
	if (!$line){
		last;
	}
	$n_lines++;
}
print "$n_lines lines\n";
close ANDREW

