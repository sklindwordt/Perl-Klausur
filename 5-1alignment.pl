#!/usr/bin/perl

#use strict;
use warnings;

# Aufruf des Programms: 5-1alignment.pl [Para1] [Para2]
#Aufgabe: Suche alle identischen Nucleotide
#Input: DNA-Sequenzen und ob sie überinstimmend sind
#Ausgabe: DNA-Sequenzen und Alignment

my ($dna1,$dna2,$align,$count,$i,$test1,$test2,$leng1,$leng2);

$dna1=$ARGV[0];
$dna2=$ARGV[1];
$align="";
$count=0;
$test1=substr($dna1,0,1);
$test2=substr($dna2,0,1);
$i=1;
for ($i=1;$i<=length($dna1);$i++){
	if ($test1 eq $test2){
		$align="$align"."*";
		$count++;
		$test1=(substr($dna1,$i,1));
		$test2=substr($dna2,$i,1);
	}else{
		$align="$align"." ";
	$test1=substr($dna1,$i,1);
	$test2=substr($dna2,$i,1);
	}
}
$leng1=length($dna1);
$leng2=length($dna2);
print "\nLänge der Sequenz 1: $leng1\n";
print "Länge der Sequenz 2: $leng2\n";
print "Identische Positionen: $count \n\n";

print "Sequenz 1: $dna1\n";
print "Sequenz 2: $dna2 \n";
print "Alignment: $align\n";
