#!/usr/bin/perl -w
# compile with: /usr/bin/perl -w forloop.pl


$a = "Andrew Rocks ";

for ($i = 0; $i < 10 ; $i ++){
	$a = $a . $a;
	$i ++;
}

print $a, "\n";