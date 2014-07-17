#!/usr/bin/perl

#use strict;
use warnings;

# Aufruf des Programms: 6-1fibonacciArray.pl
#Aufgabe: Berechne die n-te Fibonacci-Zahl
#Input: Eingabe bis wohin(=n) Fibonacci berechnet werden soll
#Ausgabe: der Fibonacci-Wert zum n-ten Wert

my (@fib,$zahl,$n,$i,$f1,$f2);

@fib=("1","1");
$zahl=0;
$i=1;
print "Bitte geben sie an die wievielte Fibonacci-Zahl berechnet werden soll.\n";
$n=<STDIN>;
chomp($n);

if ($n==0){
	print "Die Fibonacci-Zahl zu $n ist 1\n";
}elsif($n==1){
	print "Die Fibonacci-Zahl zu $n ist 1\n";
}else{
	while ($i<=$n){
		$f1=$fib[$i];
		$f2=$fib[($i-1)];
		$zahl="$f1"+"$f2";
		push(@fib,"$zahl");
		$i++;
	}
}
print "Die Fibonacci-Zahl zu $n ist $zahl\n";
