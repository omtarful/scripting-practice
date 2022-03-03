#!/usr/bin/perl

$die1=int(rand(6)+1);
$die2=int(rand(6)+1);
$die3=int(rand(6)+1);
$die4=int(rand(5)+1);
$die5=int(rand(5)+1);
$die6=int(rand(5)+1);

$sum=$die1 + $die2 + $die3 + $die4 + $die5;
print "the sum is " . $sum ;

if ($sum > 20)
{
print " you are winner \n" ;
}
else 
{
print " you lost \n";
}

if ($sum%2==0)
{
print " it is even number\n" ;
}
else 
{
print "it is odd \n";
}

