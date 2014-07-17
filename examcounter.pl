#!/usr/bin/perl

#use strict;
use warnings;

# Aufruf des Programms: examcounter.pl 
#Aufgabe: verschiedene Dinge mit zahlen von 1-50(oder n)
#Input: Eingabe welches Ding mit den Zahlen getan werden soll
#Ausgabe: die gedingten Zahlen ausgeben

my (@zahlen,$i,$n,$count,$aufgabe);

$i=1;
print "Bitte geben sie eine Zahl an bis wohin sie informationen über die vorriegen Zahlen haben wollen.\n";
$n=<STDIN>;
chomp($n);
@zahlen="0";
while ($i<=$n){
	push(@zahlen,"$i");
	$i++;
}

$count="J";

while ($count eq "J") {
		$i=1;
		print "Was soll getan werden?\n";
		print "Für jede Zahl angeben ob sie un- oder gerade ist [a]\n";
		print "Nur die geraden Zahlen ausgeben [b]\n";
		print "Nur die ungeraden Zahlen ausgeben [c]\n";
		$aufgabe=<STDIN>;
		chomp($aufgabe);
		if ($aufgabe eq "a") {
			print "0 ist weder gerade noch ungerade\n";
			while ($i<=$n){
				if ($i%2==0) {
					print "$i ist gerade\n";
					$i++;
				}else{
					print "$i ist ungerade\n";
					$i++;
				}
			#print "blub\n";
			}
		
		}elsif($aufgabe eq "b") {
			print "0 ist weder gerade noch ungerade\n";
			while ($i<=$n) {
				if ($i%2==0) {
					print "$i ist gerade\n";
					$i++;
				}else{
					#print "$i ist ungerade\n";
					$i++;
				}
			}
		}elsif($aufgabe eq "c"){
		print "0 ist weder gerade noch ungerade\n";
			while ($i<=$n){
				if ($i%2==0){
					#print "$i ist gerade\n";
					$i++;
				}else{
					print "$i ist ungerade\n";
					$i++;
				}
			}
		}else{
			print "Die von ihnen gewünschte Aufgabe wird nicht unterstützt.\n";
		}
	print "Wollen sie noch eine Ausgabe zu ihrem Zahlenbereich wissen? [J oder N]\n";
	$count=<STDIN>;
	chomp($count);
}
	
