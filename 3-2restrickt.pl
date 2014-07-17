#!/usr/bin/perl

#use strict;
use warnings;

# Aufruf des Programms: 3-2restrickt.pl
#Aufgabe: Einlesen einer DNA-Sequenz, und ihr Komplement zurückgeben
#Input: DNA-Sequenz
#Ausgabe: DNA-Sequqenz wie auch ihr Komplement

my ($dna,$komplement,$count,$kontrolle,$enzym,%enzym,$pos1,$pos2,$leerzeichen);


$kontrolle=1;
while ($kontrolle==1){
	print "Bitte geben sie ihre DNA-Sequenz an: \n";
	$dna=<STDIN>;
	chomp($dna);
	#$dna=$ARGV[0];
	$dna=uc($dna);
	$komplement=$dna;
	#$komplement=~tr/ATGC/TACG/;
	$kontrolle=$dna;
	$count=($kontrolle=~tr/ATGC/TACG/);
	if ($count != length($kontrolle)){
		print "Die von ihnen eingegebene Sequenz ist keine DNA-Sequqnz.\n";
		$kontrolle=1;
	}else{
		$kontrolle=0;
	}
}

print "Bitte geben sie ihr gewünschtes Restricktionsenzym an [EcoRI, EcoRII, BamHI, HindIII oder NotI ]\n";
$enzym=<STDIN>;
chomp($enzym);
#$enzym=$ARGV[1];
my $i=0;
if ($enzym eq EcoRI){
	while (!((substr($dna,$i,6)) eq GAATTC)){
		$pos1=$i+2;
		$pos2=$i+3;
		$i++;
	}
	print "Sequenz:\t\t$dna\n";
	print "Erkennungssequenz EcoRI:G|AATTC\n";
	print "Fragment 1:\t 1-$pos1\t".substr($dna,0,$pos1) . "\n";
	print "Fragment 2:\t $pos2-".length($dna)."\t".substr($dna,$pos2-1,). "\n";
}elsif ($enzym eq EcoRII){
	while (!((substr($dna,$i,5)) eq CCAGG||(substr($dna,$i,5)) eq CCTGG)){
		$pos1=$i+1;
		$pos2=$i+2;
		$i++;
	}
	print "Sequenz:\t\t$dna\n";
	print "Erkennungssequenz EcoRII:|CCWGG\n";
	print "Fragment 1:\t 1-$pos1\t".substr($dna,0,$pos1) . "\n";
	print "Fragment 2:\t $pos2-".length($dna)."\t".substr($dna,$pos2-1,). "\n";
}elsif ($enzym eq BamHI){
	while (!((substr($dna,$i,6)) eq GGATCC)){
		$pos1=$i+2;
		$pos2=$i+3;
		$i++;
	}
	print "Sequenz:\t\t$dna\n";
	print "Erkennungssequenz BamHI:G|GATCCC\n";
	print "Fragment 1:\t 1-$pos1\t".substr($dna,0,$pos1) . "\n";
	print "Fragment 2:\t $pos2-".length($dna)."\t".substr($dna,$pos2-1,). "\n";
}elsif ($enzym eq HindIII){
	while (!((substr($dna,$i,6)) eq AAGCTT)){
		$pos1=$i+2;
		$pos2=$i+3;
		$i++;
	}
	print "Sequenz:\t\t$dna\n";
	print "Erkennungssequenz HindIII:A|AGCTT\n";
	print "Fragment 1:\t 1-$pos1\t".substr($dna,0,$pos1) . "\n";
	print "Fragment 2:\t $pos2-".length($dna)."\t".substr($dna,$pos2-1,). "\n";
}elsif ($enzym eq NotI){
	while (!((substr($dna,$i,8)) eq GCGGCCGC)){
		$pos1=$i+3;
		$pos2=$i+4;
		$i++;
	}
	print "Sequenz:\t\t$dna\n";
	print "Erkennungssequenz NotI:GC|GGCCGCC\n";
	print "Fragment 1:\t 1-$pos1\t".substr($dna,0,$pos1) . "\n";
	print "Fragment 2:\t $pos2-".length($dna)."\t".substr($dna,$pos2-1,). "\n";
}else{
	print "Das von ihnen eingegebene Restricktionssenzym wird nicht unterstützt.\n";
}
