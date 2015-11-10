#!/usr/bin/perl -w
# compile with: /usr/bin/perl -w readarray.pl
# opens all files

foreach $file (@ARGV){
	open ANDREW, $file;

	if (!open ANDREW, $file){
		die "$0: could not open '$file': $!\n";
	}

	@lines = <ANDREW>;	


	print "$file has @line lines\n";
	close ANDREW
}











