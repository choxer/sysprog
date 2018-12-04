#!/bin/bash

usage() {
	echo "usage: ./nxls.sh <directory>" >>/dev/stderr
	exit 1
}

dir=$1

if [ $# -ne 1 ]; then
	usage
fi

for filename in $(ls $dir ); do 
	echo $filename
	if [[ -f "$filename" ]]; then 
		echo hallo $filename
	else
		echo test
	fi
done
