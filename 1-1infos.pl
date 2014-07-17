#!/usr/bin/perl

#use strict;
use warnings;

# Aufruf des Programms: 1-1infos.pl
#Aufgabe: Begrüßen und Einlesen von Daten
#Input: Daten im Programm eingeben
#Ausgabe: Eingegebene Daten

my ($name,$studium,$semester,$controlle,$frage);
$controlle=1;
while ($controlle==1){
	print "Hallo Nutzer. \nWie heißen sie ?\n";
	$name=<STDIN>;
	chomp($name);
	print "\nHallo $name, ich freue mich ihnen heute zu Diensten sein zu dürfen! \nWas studieren sie denn? \n";
	$studium=<STDIN>;
	chomp($studium);

	print "\nIn welchem Semester studieren sie $studium denn mttlerweile ?\n";
	$semester=<STDIN>;
	chomp($semester);

	print "\nName:\t $name \nStudium:\t $studium \nSemester:\t $semester \n";
	print "Sind Ihre Angaben so richtig und vollständig [J oder N]?\n";
	$frage=<STDIN>;
	chomp($frage);
	if ($frage eq J){
		$controlle=0;
	}
}
