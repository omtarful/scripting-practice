#!/usr/bin/perl 

%hash1=("Lebanon " , "961" , "Syria ", "960" , "Turkey " , "963");

%hash2= reverse %hash1 ;

print "what do you want to enter the zip code or the country name if you want to search through zip code enter one else enter 2";
$choice=<STDIN>;
chomp $choice;

if ($choice==1)
{

print "we have the following zips";

for (keys %hash2)
{ 
print "$_ \n";
}
print "which code do you want to choose ";

$zip=<STDIN>;
chomp ($zip);
print $hash2{$zip};

}
else 
{

print "we have the following country";

for (keys %hash1)
{ 
print "$_ \n";
}
print "which code do you want to choose ";
$country=<STDIN>;
chomp ($country);
print $hash1{$country};

}
