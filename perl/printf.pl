#!/usr/bin/perl


@records=("album1 , 2000 , artist1", "album2 ,2001 ,artist2","album3 ,2003 ,artist3");







foreach $x (@records)
{
($album,$year,$artist)=split(/,/,$x);
printf "%s %s %s \n",$album,$artist,$year;
}


