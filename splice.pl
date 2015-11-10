#!/usr/bin/perl

@array = qw(1 2 4 5);
splice(@array,2,0,3);
print "$_\n" for @array;