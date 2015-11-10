#!/usr/bin/perl -w

@array = <STDIN>;

foreach $line (@array){
	foreach $key (@ARGV){
		$line =~ s/$key/\($key\)/g;
		
	}
	print $line;
}