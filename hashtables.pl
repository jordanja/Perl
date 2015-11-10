#!/usr/bin/perl -w
# compile with: /usr/bin/perl -w hashtables.pl

%animal = ();

open(FILE,'v');
@lines = <FILE>;

foreach $line (@lines){
	chomp ($line);
	($count,$name = split(/[\s]+,$line))
	if (exists($animal{$name})){
		$animal{$name} = $animal{$name} + count;

	} else {
		$animal{$name} = count;
	}


}

foreach $f (@animal){
	print 

}
