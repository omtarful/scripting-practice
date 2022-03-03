#!/usr/bin/perl


$d=0;
$f=0;

opendir (TEMPDIR ,"/home/manal/Desktop/sc")  || die;
readdir TEMPDIR;
@filelist=readdir TEMPDIR ;
closedir ;
foreach $x (@filelist )
{
	if (! grep (^[^.],$x))
	{
		if (-d $x)
		{
		$d++;
		}
			if (-f $x)
				{
					$f++;
				}}
}

print "the number of file is $f ";

print "the number of file is $d ";

