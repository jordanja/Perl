#!/usr/bin/perl -w
# compile with: /usr/bin/perl -w betterfile.pl
# opens all files

foreach $file (@ARGV){
	open ANDREW, $file;

	if (!open ANDREW, $file){
		die "$0: could not open '$file': $!\n";
	}

	@lines = <ANDREW>;		#reads whole file if needed

	$n_lines = @lines;

	print "$file has $n_lines lines\n";
	close ANDREW
}











