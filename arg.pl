#!/usr/bin/perl -w
# compile with: /usr/bin/perl -w arg.pl

# perl has many special variables
# $0 prints program name
# $ARGV[0] starts with first argument not program name


print "$0\n";
print $ARGV[0], "\n";