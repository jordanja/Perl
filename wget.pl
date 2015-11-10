#!/usr/bin/perl -w
# compile with: /usr/bin/perl -w prereq.pl

$flag = "";



$url = "http://www.handbook.unsw.edu.au/postgraduate/courses/2015/$ARGV[0].html";
open F, "wget -q -O- $url|" or die;

while ($line = <F>) {
	$flag .=$line;

    	print "$line\n";
    
}

if ($flag eq ""){
	$url = "http://www.handbook.unsw.edu.au/undergraduate/courses/2015/$ARGV[0].html";
	open F, "wget -q -O- $url|" or die;
	while ($line = <F>) {

	    	print "$line\n";
    }
}
