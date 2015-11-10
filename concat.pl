#!/usr/bin/perl -w
# compile with: /usr/bin/perl -w concat.pl
# . concatonates variables
# no initialisation needed
# runs slower than c but easier to code

$a = "Andrew Rocks ";
$a = $a . $a;
#or $a = "$a$a"
print $a, "\n";



while ($i < 10){
	$a = $a . $a;
	$i ++;
}

print $a, "\n";