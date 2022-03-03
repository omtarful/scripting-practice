#!/usr/bin/perl

@array=qw(1 2 3 4 5 6 7 8 9 10);

foreach $x (@array)
	{

	if ($x%2!=0)
	{
	@odd=(@odd,$x);
	}



	while ($n<=$#array){
	$count=0;
	for ($i=2;$i<$n;$i++)

	{

	if (($n % $i)==0)
	{
	$count++;
	last ;
	}
   
	}


	if ($count==0)
	{
	@prime=(@prime,$n)
	}
	$n++;

	}
}






print "the prime numbers are \n";
while ($#prime!=0)
{ 
$counter=$#prime;
$var= pop @prime;
print " $var \n";
}
print "the odd numbers are \n";
while ($#odd!=0)
{ 
$counter=$#prime;
$var= pop @odd;
print " $var \n";
}
