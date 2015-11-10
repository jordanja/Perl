

sub function_name($,@);


sub function_name ($var,@arr) {
	# body...
}



#5)
	#!/usr/bin/perl -w
	sub printHash(%colours);
	%colours = ("John"=>"blue", "Anne"=>"red", "Andrew"=>"green");




	sub printHash(%){
		(\%hm) = @_;
		
		#scalors hashmaps arrays

		foreach $key (sortkeys %hm){
			print '['.$key.']'. "=>" $hm{$key}."\n";
		}
	}




#2)

	#!/usr/bin/perl -w

	while($line = <>){
		$line =lc ($line);
		#or use $line =~ tr/A-Z/a-z;

		@arr = split(/\W+/,$line);

		foreach $word (@arr){
			$hm{$word}++;
		}
	}

	#foreach $key (sort{ $hm{$a} <=> $hm{$b}} keys %hm){ #sort ascending numerically
	foreach $key (sort{} keys %hm){

		print $key."\t".$hm{$key}."\n";



	}


#6)

#!/usr/bin/perl -w
%hm = ();


while ($line = <>){

	$line = lc($line);
	@arr = split(/\W+/,$line);

	foreach $word (@arr){
		if (defined($prevWord)){
			$hm{$prevWord}{$word}++;
		}
		$prevWord = $word;
	}

}



foreach $key (keys %hm){
	foreach $keys2 (keys %{$hm{$keys}}){
		print $key. "\t". $key2."\t".$hm{$key}{$key2}."\n";
	}
}








































