#!/usr/bin/perl

@array=qw(1 2 5 4 3 6 7 8 9 10);

@newlist= sort{ $a <=> $b } @array;

foreach $n (@newlist)
{
print "$n \n";
}


for ($i=$#newlist+1 ;$i!=0;$i--){
print "@newlist[$i]\n";

}
#in descending we should $b'<=> $a 
