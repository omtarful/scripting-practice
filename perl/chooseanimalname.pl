#!/usr/bin/perl

print "we have cat dog torture \n  guess which animal ";

$number=int(rand(3)+1);

if ($number==1)
{
$animal="cat";
}
else if ($number==2)
{
$animal="dog";
}
else {
$animal="torture";
}

print "enter your guess "
$guess=<STDIN>;

