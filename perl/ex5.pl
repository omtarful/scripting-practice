#!/usr/bin/perl 



for($i=3;$i<=1000;$i++) 
{ 
  for($j=2;$j<1000;$j++) 
 { 
  if(($i%$j)==0) 
   { last;
     
   } 
 } 
 
  } 
print $sum;
}
