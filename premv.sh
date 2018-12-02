#!/bin/bash

ans=$1
ans2=$2

for filename in *; do  
	mv $filename $(echo $filename | sed s/$ans/$ans2/) 
done
