#!/usr/bin/perl

@array=qw(1 2 3 4 5 6 7 8 9 10);

foreach $x (@array)
{
if ($x%2==0)
{
@even=(@even,$x);

}
 if ($x%2!=0)
{
@odd=(@odd,$x);
}
}

print "the even number are : \n";
foreach $n (@even)
{
print "$n \n";
}

print "the odd number are : \n";
foreach $z (@odd)
{
print "$z \n";
}

print "the size of the even array is $#even \n ";
print "the size of the even array is $#odd \n";
