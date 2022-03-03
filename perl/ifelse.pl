#!/usr/bin/perl

print "enter a number (enter 13 if you want to exit)";
$number=<STDIN>;

while ($number!=13)
{
if ($number==9 || $number==18)
{
print "enter a number (enter 13 if you want to exit)";
$number=<STDIN>;
}
else {
$sum+=$number;
print "enter a number (enter 13 if you want to exit)";
$number=<STDIN>;
}
}

print $sum;
