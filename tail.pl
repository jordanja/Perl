#!/usr/bin/perl -w
# compile with: /usr/bin/perl -w tail.pl

$N=10;
$line = 0;



foreach $arg (@ARGV){
	chomp $arg;
	if ($arg =~ /-[0-9]+/){
		$arg =~ s/-([0-9]+)/$1/;
		$N = $arg;
    } else {
        push @files, $arg;
    }
}





foreach $f (@files) {
	$lineStart = 0;
	$countLine = 0;
    open(F,"<$f") or die "tail.pl: can't open $f: $!\n";

    if (@files > 1){
    	print "==> $f <==\n";
    }



	$lineCount = `wc -l < $f`;
	$lineCount++;

	$lineStart = $lineCount - $N;
	if ($lineStart < 0){
		$lineStart = 0;
	}

	foreach $line (<F>){
		$countLine ++;
		if ($countLine >= $lineStart){
			print "$line";
		}
	}



}

if ($#files == -1){ 

	foreach $line (<STDIN>) { 
		chomp($line);
		push @file ,$line; 
	} 

	$lineCount = scalar @file;
	$lineCount++;

	$lineStart = $lineCount - $N;
	if ($lineStart < 0){
		$lineStart = 0;
	}

	foreach $line (@file){
		$countLine ++;
		if ($countLine >= $lineStart){
			print "$line\n";
		}
	}




}  








