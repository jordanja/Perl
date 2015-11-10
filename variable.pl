#!/usr/bin/perl -w
# compile with: /usr/bin/perl -w variable.pl
# $ means scalor/simple type (string/number/undefined value/reference)
# Quotes are same as shell. DOuble means interpolate variables


$course = 'COMP[29]041';
printf "I love %s\n",$course;
print "I love $course\n";

