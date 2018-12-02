#!/bin/bash


# wordlist
W=$1

# hashlist
H=$2




file=$(cat $W)
file2=$( cat $H )


for line in $file; do
	echo $line

	hash=$( echo -n $line | md5sum )
	echo $hash
	
	grep $hash battlefiel-hashes.md5 
done
