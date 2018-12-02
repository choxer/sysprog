#!/bin/bash

usage(){
	echo "./rls.sh <min> <max>" >>/dev/stderr
	exit 1
}

if test "$#" -ne 2; then 
	usage
fi

for filename in $(ls); do 
	#echo $filename

	if [[ "${#filename}" -ge "$1" && "${#filename}" -le "$2" ]]; then
		echo $filename
	fi
done
