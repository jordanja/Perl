#!/usr/bin/perl -w
# compile with: /usr/bin/perl -w all_whales.pl



%whaleCount = ();
%podCount = ();

$count = 0;
$animal = "";

foreach $arg (<STDIN>){
	if($arg =~ /([0-9]+) *(.*)/){
		$animal = $2;
		$count = $1;
		
		$animal = lc $animal;

		$animal =~ s/ +/ /g;
		$animal =~ s/ $//g;

		$animal =~ s/s$//g;


		


		$whaleCount{$animal} += $count;
		$podCount{$animal} += 1;
	}





}



foreach $animal (sort keys %whaleCount){
	print "$animal observations:  $podCount{$animal} pods, $whaleCount{$animal} individuals\n";

}







