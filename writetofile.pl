#!/usr/bin/perl -w
# compile with: /usr/bin/perl -w writetofile.pl
# write to a file

$i = 0;
open BLAH, ">andrewt.txt" or die;
foreach $i (1..1000){
	print BLAH "Andrew Rocks\n"
}
close BLAH;

