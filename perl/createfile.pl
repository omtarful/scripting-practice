#!/usr/bin/perl

print "enter the file name first (read from )then enter the file write path ";

$filename=<STDIN>;
chomp($filename);
$filewrite=<STDIN>;
chomp($filewrite);


if (-e $filename && (! -e $filewrite) ){
open (MFILE , "$filename");
@list=<MFILE>;
close ( MFILE );
open ( FILESTREAM ,">", $filewrite);
print FILESTREAM @list ;
close(FILESTREAM);
}
else 
{
print "either the file that you want to read doesn't exist or the file that you want to write is already exist with the same name   ";
}
