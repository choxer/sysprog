#!/bin/bash

param=$1

echo $param

ls -a  

if [ -e backup ]; then 
	echo "ja!"
else 
	mkdir ~/sysprog/aufg4/backup
	echo "nein!"
fi

counter=1
for filename in $(ls *"$param"); do
	echo $counter. $filename "-- Soll diese Datei kopiert werden? (j/N)\n"
       	read answer 	
	counter=$(($counter + 1))
	if [ $answer == "j" ]; then
		cp -f ~/sysprog/aufg4/$filename ~/sysprog/aufg4/backup
		echo "copied!"
	fi
done



