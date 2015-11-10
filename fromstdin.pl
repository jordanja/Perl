#!/usr/bin/perl -w
# compile with: /usr/bin/perl -w fromstdin.pl


while ($line =~ <STDIN>) {
	print $line;
}