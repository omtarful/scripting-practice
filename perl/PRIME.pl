#!/usr/bin/perl



$i=2;
$n=0;
$x=1;
while ($n<=1000){
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
printf ("%3.3d \n" ,$n );

}

$n++;

}
