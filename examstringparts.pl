#!/usr/bin/perl

#use strict;
use warnings;

# Aufruf des Programms: examstrinparts.pl 
#Aufgabe: verschiedene Dinge mit einem String tuen
#Input: Eingabe welches Ding mit dem String getan werden soll
#Ausgabe: den gedingten String ausgeben

my ($text,$string,$count,$aufgabe,$ausgabe);

$count="J";
$text="ThiS Is a sTrIng tO pRacTice soMe PERL funCtIons";
$string=$text;
while ($count eq J){
	print "Was soll mit dem String \t$text\t gemacht werden?\n";
	print "1[a] finde den Substring vom ersten (a) bis zum ersten (g)\n";
	print "2[b] den gesamten string klein schreiben \n";
	print "3[c] den gesamten String Groß schreiben \n";
	print "4[d] (some) durch (many) ersetzen\n";
	$aufgabe=<STDIN>;
	chomp($aufgabe);
	if ($aufgabe eq "a"){
		$text=~m/(a.+?g)/;
		print "$1\n";
	}elsif($aufgabe eq "b"){
		$ausgabe=lc($text);
		print "$ausgabe\n";
	}elsif($aufgabe eq "c"){
		$ausgabe=uc($text);
		print "$ausgabe\n";
	}elsif($aufgabe eq "d"){
		$text=~s/(some)/many/i;
		print "$text\n";
	}else{
		print "Ihr eingebener Buchstabe entspricht keiner angegebenen Aufgabe.\n";
	}
	print "Möchten Sie noch mal etwas mit dem String tuen? [J oder N] \n";
	$count=<STDIN>;
	chomp($count);
}
