#!/usr/bin/perl -w
# compile with: /usr/bin/perl -w prereq.pl



$url = "https://en.wikipedia.org/wiki/List_of_colors_(compact)";
open F, "wget -q -O- $url|" or die;

while ($line = <F>) {
	if ($line =~ /\"\>([^\<]+)\<\/a\>$/){
		$line = $1;
		print "$line\n";
	}
    
    
}

