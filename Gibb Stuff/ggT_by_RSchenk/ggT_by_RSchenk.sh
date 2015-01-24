#!/bin/bash
#=================================================================="
#|Script mit Funktion: grösster gemeinsamer Teiler ggT	          |"
#=================================================================="
#=================================================================="
#|Script:    M122_Scripts/ggt.sh       		  					  |"
#|Author:    Lrd. R. Schenk aka Powerslave                        |"
#|Category:  M122 / Scripts / Bash                                |"       
#|Date:      16/02/2014                                           |"
#|Web:       http://www.powerslave.ch                             |"
#|Mail:      info@powerslave.ch                                   |"       
#|MotD:      ASCII Obsiegt!                                       |"
#=================================================================="

#ENGINE/MECHANIK/FUNKTION
#War nicht sicher wann die Funktion geladen wird bzw. Verfügbar ist,
#darum habe ich sie nach ganz Oben verfrachtet.

#Den Vorgang zum errechnen des ggT habe ich in eine Funktion gepackt.
function ggt #Einleitung ggT FUnktion: 
	{
	while [ $b -ne 0 ];
		#Solange $b -ne (Not Equal / !=) 0
		do
			#Führe dieses if Statement aus
        	if [ $a -gt $b ]; then #Wenn $a > $b (-gt Grater Than)
           		     a=$(( $a - $b )) #Subtrahiere $b von $a
        	else	#sonst...
                b=$(( $b - $a )) #Subtrahiere $a von $b
        	fi #END IF 
        	# Die Geschichte wiederholt sich solange bis $b = 0
        	# Dann ist $a der ggT
	done #END WHILE/DO
}
#ENDE ENGINE/MECHANIK/FUNKTION

#App Header, Macht das Script persönlicher und sieht hübsch aus ;)
echo "=================================================================="
echo "| ______............................_............................|"                
echo "|(_____ \..........................| |...........................|"                
echo "| _____) )__.._._._._____..____.___| |._____._..._._____.........|"
echo "||  ____/ _ \| | | | ___ |/ ___)___) |(____ | | | | ___ |........|"
echo "|| |...| |_| | | | | ____| |..|___ | |/ ___ |\ V /| ____|........|"
echo "||_|....\___/.\___/|_____)_|..(___/.\_)_____|.\_/.|_____).CH.....|"
echo "|Powerslave industries proudly presents: Das ggT Bash Script.....|"
echo "=================================================================="

#START USER INTERFACE
#Scriptname (mit $0 Parameter) & Author ausgeben.
echo "-------------------------"
echo "STARTING $0 SCRIPT"
echo "Author: Ramon Schenk"
echo "-------------------------"

#Schnittstelle zur Usereingabe.
#TODO: Vielleicht kommt noch eine Validierung hinzu (Zahl oder nicht)
echo "Bitte ersten Wert zur bestimmung des ggT eingeben:"
read a
echo "Jetzt den zweiten Wert, danach folgt die Bestimmung des ggT"
read b

#Funktionsaufruf ggT
ggt $a $b

#Ausgabe des Resultats
echo "-------------------------------------------------------------------------"
echo "Der grösste gemeinesame Teiler, der Werte $value1 und $value2 ist: $a"
echo "-------------------------------------------------------------------------"
echo "Vielen Dank das Sie Software von Powerslave Industries nutzen"
echo "SCRIPT END"

#Bemerkung: 
#Die Aufgabe hat viel spass gemacht, ich mag bash, und ich mag auch Konsolenzeug.
#Habe zusätzlich die Verwendung von Funktionen gelernt, da es hierfür ideal ist.
															#2014 / Ramon Schenk

#PS: Oh ja, ich kommentiere gerne...
