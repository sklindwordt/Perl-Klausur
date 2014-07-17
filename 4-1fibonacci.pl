#!/usr/bin/perl

#use strict;
use warnings;

# Aufruf des Programms: 4-1fibunac.pl [Para]
#Aufgabe: Berechnen der Fibunacci-Zahl
#Input: bis wohin die Fibunacci-Zahl berechnet werden soll
#Ausgabe: Der wert der gefoderten Fibunacci-Zahl

my ($result,$fib1,$fib2,$n,$f1,$fmerk);
$n=$ARGV[0];
$fib1=0;
$fib2=1;
$i=0;

while ($i<$n){
	$result=$fib1+$fib2;
	$fib1=$fib2;
	$fib2=$result;
	$i++;
}
print "Die $n.te Fibonacci-Zahl lautet: $result\n";

#0=1
#1=1
#2=2
#3=3
#4=5
