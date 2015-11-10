#!/usr/bin/perl -w
# compile with: /usr/bin/perl -w allfiles.pl
# opens all files

foreach $file (@ARGV){
	open ANDREW, $file;

	if (!open ANDREW, $file){
		die "$0: could not open '$file': $!\n";
	}

	$n_lines = 0;
	while ("Andrew Rocks"){
		$line = <ANDREW>;
		
		if (!$line){
			last;
		}
		$n_lines++;
	}
	print "$file has $n_lines lines\n";
	close ANDREW
}











