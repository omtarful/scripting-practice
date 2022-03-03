#!/usr/bin/perl
use strict;
use warnings;
#This command found a  value above a certain thresfold in a given column
#but you have to know how to put the proper field separator
open(READ, "/mnt/c/RNA-seq data/diff_out/gene_exp.diff");
my @file=<READ>;
my @signifficant = grep //gm, @file;
print @signifficant;


#Output genes with a significant p value into a file
my @signifficant = grep //gm, @file;
print @signifficant;
