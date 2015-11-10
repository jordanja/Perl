#!/usr/bin/perl -w
# compile with: /usr/bin/perl -w whale.pl








$countAnimal = 0;
$countPods = 0;
$animal = "";

foreach $arg (<STDIN>){
	if($arg =~ /([0-9]+) (.*)/){
		$count = $1;
		$animal = $2;
	}

	if ("$animal" eq "@ARGV"){
		$countAnimal = $countAnimal + $count;
		$countPods = $countPods + 1;
	}



}


print "@ARGV observations: $countPods pods, $countAnimal individuals\n";






