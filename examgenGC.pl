#!/usr/bin/perl

#use strict;
use warnings;

# Aufruf des Programms: examgenGC.pl (txt-datei]
#Aufgabe: Berechne alles möglche an Dingen für die txt-Datei
#Input: Eingabe der zu verwendenen Fasta-Datei (DNA-Seq-Datei) und der anschleßenden Aktion damt
#Ausgabe: Ausgabe der geforderten Aktion

my(@gene,$datei,$gc,$at,$i,$gen,$max,$min,$durchschnitt,$aufgabe);
$datei=$ARGV[0];
#@gene="";
open (INFILE,"$datei");
	while(<INFILE>){
		chomp($_);
		push(@gene,"$_");
	}
close (INFILE);

$i=0;
$gen="";
$max=-9999999;
$min=9999999;
$durchschnitt=0;
while ($i <= ($#gene)){
	if ($i%2==0){
		$gen=$gene[$i];
		$i++;
	}else{
		$at=($gene[$i]=~tr/AT/TA/);
		$gc=($gene[$i]=~tr/GC/CG/);
		print "$gen\t$at\t$gc\n";
		$i++;
		if($gc >= $max){
			$max=$gc;
		}
		if($gc <= $min){
			$min=$gc;
		}
		$durchschnitt=$durchschnitt+$gc;
	}
}

print "Bitte waehlen Sie\n";
print "[a] Durchschnittlicher GC-Gehalt\n";
print "[b] Minimaler GC-Gehalt\n";
print "[c] Maximaler GC-Gehalt\n";

$aufgabe=<STDIN>;
chomp($aufgabe);

if ($aufgabe eq "a"){
	$durchschnitt=($durchschnitt/($i/2));
	print "Durchschnittlicher GC-Gehalt: $durchschnitt\n";
}elsif($aufgabe eq "b"){
	print "Minimaler GC-Gehalt: $min\n";
}elsif($aufgabe eq "c"){
	print "Maximaler GC-Gehalt: $max\n";
}else{
	print " Ihre gewählte Option wird nicht unterstützt.\n";
}

