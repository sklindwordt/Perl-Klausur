#!/usr/bin/perl

#use strict;
use warnings;

# Aufruf des Programms: 3-1komplement.pl
#Aufgabe: Einlesen einer DNA-Sequenz, und ihr Komplement zurückgeben
#Input: DNA-Sequenz
#Ausgabe: DNA-Sequqenz wie auch ihr Komplement

my ($dna,$komplement,$count,$kontrolle);

$kontrolle=1;
while ($kontrolle==1){
	print "Bitte geben sie ihre DNA-Sequenz an: \n";
	$dna=<STDIN>;
	chomp($dna);
	$dna=uc($dna);
	$komplement=$dna;
	$komplement=~tr/ATGC/TACG/;
	$kontrolle=$dna;
	$count=($kontrolle=~tr/ATGC/TACG/);
	if ($count != length($kontrolle)){
		print "Die von ihnen eingegebene Sequenz ist keine DNA-Sequqnz.\n";
		$kontrolle=1;
	}else{
		$kontrolle=0;
	}
}
print "DNA-Sequqenz:  $dna\n";
print "Komplenentseq: $komplement\n";

