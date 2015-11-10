#!/usr/bin/perl -w

$filename = "report.txt";
open FILE, $filename;
@array1 = <FILE>;
print @array1,"\n";

open ($handle, ">>" , $filename);
print $handle "hello again\n";
close $handle;
