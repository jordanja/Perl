#!/usr/bin/perl -w
# compile with: /usr/bin/perl -w tail.pl

$N=10;
$line = 0;


# if there are command line arguments
if (@ARGV != 0) {
	#cycle through arguments
	foreach $arg (@ARGV){
		#check for line counter
		if ($arg =~ /-[0-9]+/){
			$arg =~ s/-([0-9]+)/$1/;
			$N = $arg;
	    } else {
	    	#push fules
	        push @files, $arg;
	    }
	}
# if there are no command line arguments
} else {

	foreach $arg (<STDIN>){
		chomp $arg;
		if ($arg =~ /-[0-9]+/){
			$arg =~ s/-([0-9]+)/$1/;
			$N = $arg;
	    } else {
	        push @files, $arg;
	    }
	}

}


# move through files one by one
foreach $f (@files) {
	$lineStart = 0;
	$countLine = 0;
    open(F,"<$f") or die "tail.pl: can't open $f: $!\n";

#of more than one file display file name
    if (@files > 1){
    	print "==> $f <==\n";
    }


#get line count
	$lineCount = `wc -l < $f`;
	$lineCount++;

#if required print line
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

}