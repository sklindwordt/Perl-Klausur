#!/usr/bin/perl

#use strict;
use warnings;

# Aufruf des Programms: examfahrenheit.pl 
#Aufgabe: Konvertiere Temperatur von F in C oder von C in F
#Input: Temperatur in F oder in C
#Ausgabe: Temperatur in C und in F

my ($c,$f,$temp,$count);

$count="J";

while ($count eq J){
	print "Hallo zum Temperatur-Konverter: haben sie eine C Temperatur und möchten die entsprechende F Temperatur wissen [C]?\nOder haben sie eine F Temperatur und möchten die entsprechende C Temperatur wissen [F]?\n";
	$temp=<STDIN>;
	chomp($temp);

	if ($temp eq C){
		print "Bitte geben sie die Temperatur in C an:\n";
		$c=<STDIN>;
		chomp($c);
		$f=$c*1.8+32;
	}elsif ($temp eq F){
		print "Bitte geben sie die Temperatur in F an:\n";
		$f=<STDIN>;
		chomp($f);
		$c=($f-32)/1.8;
	}else{
		print "Ihr eingegebenes Temperaturskalensystem wird nicht unterstützt.\n";
	}
	print "C Temperatur = $c\n";
	print "F Temperatur = $f\n\n";
	print "Möchten sie eine weitere Konvertierung machen ? [ J oder N ]\n";
	$count=<STDIN>;
	chomp($count);
}

	
