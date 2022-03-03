#!/usr/bin/perl

$num1 = int(rand(10)) + 1;
$num2 = int(rand(10)) + 1;
$num3 = int(rand(10)) + 1;
$sum = $num1 + $num2 + $num3;
if($sum > 15){
    print "Greater than 15\n";
} elsif($sum < 15 ){
    print "Less than 15\n";
} else {
    print "equal to 15\n";
}

if($sum % 2 == 0){
    print "Even\n";
} else {
    print "Odd\n";
}

