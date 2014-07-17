#!/usr/bin/perl

#use strict;
use warnings;

# Aufruf des Programms: 4-2start-codon.pl [Para]
#Aufgabe: Suche alle Startcodone
#Input: DNA-Sequenz
#Ausgabe: Für jeden Leserahmen alle Startcodons ausgeben

my ($dna,$orf1,$orf2,$orf3,$count1,$count2,$count4);

$dna=$ARGV[0];

$orf1=$dna;
$orf2=substr($dna,1,);
$orf3=substr($dna,2,);

#$orf1=~s/(ATG)/-ATG-/g;
#$orf2=~s/(ATG)/-ATG-/g;
#$orf3=~s/(ATG)/-ATG-/g;
$count1=($orf1=~s/(ATG)/-ATG-/g);
$count2=($orf2=~s/(ATG)/-ATG-/g);
$count3=($orf3=~s/(ATG)/-ATG-/g);
print "$orf1\t $count1\n";
print " $orf2\t $count2\n";
print "  $orf3\t $count3\n";
