#!/usr/bin/perl

print "enter the temperature outsid";
$tempreture=<STDIN>;

$f=(32+$tempreture/5);

if ($f<40)

{
print "take a coat";
}

elsif ($f>80)
{
print "avoid suburn";
}
else { print "it is a great day";}

