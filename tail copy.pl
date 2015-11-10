#!/usr/bin/perl -w
# compile with: /usr/bin/perl -w tail.pl

$N=10;
#if ($ARGV[0] =~ /-[0-9]+/){
#	$N = $ARGV[0];
#}

$temp = 0;

foreach $arg (@ARGV){
	if ($arg =~ /-[0-9]+/){
		$arg =~ s/-([0-9]+)/$1/;
		$N = $arg;
	} elsif ($arg eq "--version") {
        print "$0: version 0.1\n";
        exit(0);
    } else {
        push @files, $arg;
    }
}




foreach $f (@files) {
	$lineStart = 0;
	$countLine = 0;
    open(F,"<$f") or die "tail.pl: can't open $f: $!\n";
    print "==> $f <==\n";




	$lineCount = `wc -l < $f`;
	$lineCount++;

	$lineStart = $lineCount - $N;
	if ($lineStart < 0){
		$lineStart = 0;
	}

	foreach $line (<F>){
		$countLine ++;
		if ($countLine > $lineStart){
			print "$line";
		}
	}

	print "\n";

    #close($f);
}