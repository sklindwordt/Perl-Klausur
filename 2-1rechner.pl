#!/usr/bin/perl

#use strict;
use warnings;

# Aufruf des Programms: 2-1rechner.pl
#Aufgabe: Taschenrechner mittels eingabe
#Input: Zahlen und Rechenoption im Programm eingeben
#Ausgabe: Ergebnis ausgeben

my ($result,$zahl1,$zahl2,$durchschnitt,$operator,$controll,@durchzahlen,$i,$weiter);
$i=0;
$controll=1;
$result=0;

while ($controll==1){
	print "Gib die Rechenoperation an:\n \t[M] für Multiplikation\n\t[A] für Addition\n\t[D] für Division\n\t[S] für Subtraktion\n\t[Q] für Quadrieren\n\t[W] für Wurzel\n\t[du] für den Durchschnitt\n\n";
		$operator=<STDIN>;
		chomp($operator);
		if ($operator eq M){
			
			print "Gib die Erste Zahl ein:[oder J für das vorriege Resultat]\n";
			$zahl1=<STDIN>;
			chomp($zahl1);
			if ($zahl1 eq J){
				$zahl1=$result;
			}
			print "Gib die Zweite Zahl ein:\n";
			$zahl2=<STDIN>;
			chomp($zahl2);
			$result=$zahl1*$zahl2;
			print "Ergebnis von".$zahl1."*".$zahl2."=$result\n";
		}elsif($operator eq A){
			
			print "Gib die Erste Zahl ein:[oder J für das vorriege Resultat]\n";
			$zahl1=<STDIN>;
			chomp($zahl1);
			if ($zahl1 eq J){
				$zahl1=$result;
			}
			print "Gib die Zweite Zahl ein:\n";
			$zahl2=<STDIN>;
			chomp($zahl2);
			$result=$zahl1+$zahl2;
			print "Ergebnis von".$zahl1."+".$zahl2."=$result\n";
		}elsif($operator eq D){
			
			print "Gib die Erste Zahl ein:[oder J für das vorriege Resultat]\n";
			$zahl1=<STDIN>;
			chomp($zahl1);
			if ($zahl1 eq J){
				$zahl1=$result;
			}
			print "Gib die Zweite Zahl ein:\n";
			$zahl2=<STDIN>;
			chomp($zahl2);
			$result=$zahl1/$zahl2;
			print "Ergebnis von".$zahl1."/".$zahl2."=$result\n";
		}elsif($operator eq S){
			
			print "Gib die Erste Zahl ein:[oder J für das vorriege Resultat]\n";
			$zahl1=<STDIN>;
			chomp($zahl1);
			if ($zahl1 eq J){
				$zahl1=$result;
			}
			print "Gib die Zweite Zahl ein:\n";
			$zahl2=<STDIN>;
			chomp($zahl2);
			$result=$zahl1-$zahl2;
			print "Ergebnis von".$zahl1."-".$zahl2."=$result\n";
		}elsif($operator eq Q){
			
			print "Gib die Erste Zahl ein:[oder J für das vorriege Resultat]\n";
			$zahl1=<STDIN>;
			chomp($zahl1);
			if ($zahl1 eq J){
				$zahl1=$result;
			}
			print "Gib die Zweite Zahl ein:\n";
			$zahl2=<STDIN>;
			chomp($zahl2);
			$result=$zahl1**$zahl2;
			print "Ergebnis von".$zahl1."**".$zahl2."=$result\n";
		}elsif($operator eq W){
			
			print "Gib die Erste Zahl ein:[oder J für das vorriege Resultat]\n";
			$zahl1=<STDIN>;
			chomp($zahl1);
			if ($zahl1 eq J){
				$zahl1=$result;
			}
			$result=sqrt($zahl1);
			print "Ergebnis von Wurzel".$zahl1."=$result\n";
		}elsif($operator eq du){
			
			print "Gib die Zahlen ein mit einem Space von einander getrennt:\n";
			$zahl1=<STDIN>;
			chomp($zahl1);
			@durchzahlen=split(/ /,$zahl1);
			
			while ($i<= $#durchzahlen){
				$result=$result+$durchzahlen[$i];
				$i++;
				#print "$durchzahl[$i]\n";
			}
			$result=$result/(scalar(@durchzahlen));				
			print "Durchschnitt von @durchzahlen =$result\n";
		}else{
			print "Ihr eingegebener Rechenoperator ist nicht verfügbar. Bitte wählen sie einen anderen aus.\n";
		}
	print "Möchten sie weitere Rechenoperationen durchführen [ J oder N] ?\n";
		$weiter=<STDIN>;
		chomp($weiter);
		if ($weiter eq N){
			$controll=0;
		}
	}
print "Vielen dank für die Verwendung dieses schönen Rechners. \n";
