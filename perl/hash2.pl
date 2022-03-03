#!/usr/bin/perl

@days=qw(Monday , Tuesday , Friday , hi);
@result = grep /day/, @days ;

foreach $x (@result)

{
print "$x \n";
}
