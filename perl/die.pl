#!/usr/bin/perl

$d1 = int(rand(6)) + 1;
$d2 = int(rand(6)) + 1;
$d3 =  int(rand(6)) + 1;
$d4 =  int(rand(6)) + 1;
$d5 =  int(rand(6)) + 1;
$d6 =  int(rand(6)) + 1;
$sum = $d1 + $d2 + $d3 + $d4 + $d5 + $d6;
print "The first die was: $d1\nThe second die was: $d2\nThe third die was : $d3\nThe fourth die was : $d4\nThe fifth die was : $d5\n";
print "The sum is " . $sum . "\n"; 
if($sum > 20){
    print "You win!";
} else {
    print "You lose!"
}
