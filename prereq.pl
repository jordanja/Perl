#!/usr/bin/perl -w
# compile with: /usr/bin/perl -w prereq.pl








$url = "http://www.handbook.unsw.edu.au/undergraduate/courses/2015/$ARGV[0].html";
open F, "wget -q -O- $url|" or die;

while ($line = <F>) {
    if ($line =~ /Pre(.*)<\/p/){
    	$line = $1;
    	$line =~ s/requisite[s]?: //g;
    	$line =~ s/a mark of at least 75 in //g;
    	$line =~ s/ or /\n/g;

    	$line =~ s/([0-9]{4})[\.].*/$1/g;
		$line =~ s/([0-9]{4})[<].*/$1/g;

    	print "$line\n";
    }
}


$url = "http://www.handbook.unsw.edu.au/postgraduate/courses/2015/$ARGV[0].html";
open F, "wget -q -O- $url|" or die;

while ($line = <F>) {
    if ($line =~ /Pre(.*)<\/p/){

    	$line = $1;
	    $line =~ s/requisite: //g;

		$line =~ s/a mark of at least 75 in //g;


    	$line =~ s/ or /\n/g;

    	$line =~ s/([0-9]{4})[\.].*/$1/g;
		$line =~ s/([0-9]{4})[<].*/$1/g;

		

    	print "$line\n";
    }
}