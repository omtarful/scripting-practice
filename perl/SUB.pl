#!/usr/bin/perl

use strict ;
my $x=3;

sub fun1 
{




print "$x+@_[0]  ";
my $x=100; # we put my always to save the value of x without my you allow it to change  
}


fun1(3);
print $x;
