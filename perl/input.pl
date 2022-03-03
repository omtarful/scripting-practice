#!/usr/bin/perl

$number=int(rand(100)+1);
print "enter  a guess";
$guess=<STDIN> ;
chomp $guess ;

if ($number==$guess)
{
print "you are the winner ";
}

elsif ($number>$guess)
{
print "what you enterd is less than the number \n";
}
else {

print "what you enterd is greater than the number \n";
}
