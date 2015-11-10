#!/usr/bin/perl -w
# compile with: /usr/bin/perl -w subr.pl

sub andrew {
	print "Andrew Rocks! @_\n";
	print "you gave me". ($#_+1). "eparamiors"\n";
}

andrew 42;
------------------------------------------------------

sub andrew {
	print "$_[0] Rocks!\n foreach 1..$_[1]";
}

andrew "Mary", 42;


---------------------------------------------------------

sub andrew {
	($who,$n) = @_;
	print "$who rocks\n" foreach 1..$n
}

andrew 42;









