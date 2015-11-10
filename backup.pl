#!/usr/bin/perl -w
# compile with: /usr/bin/perl -w backup.pl
# write to a file
# 

$i = 0;

foreach $file (@ARGV){
	if (!open ANDREW, $file){
	die "$0: could not open '$file': !$\n"
	}

	@lines = <FILE>;
	open BACKUP, ">file.backip" or die;
	print @lines;
	close BACKUP;
	close FILE;
}
