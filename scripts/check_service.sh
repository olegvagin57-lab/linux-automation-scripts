#!/bin/bash

if [ "$#" -ne 2 ]; then
	echo "You must write server addr and port"
	exit 1
else
	echo "Start cheching sevice $1 $2"
	if  nc -zw 5 "$1" "$2" > /dev/null 2>&1; then
		echo "Service "$1" "$2" is UP"
	else
		echo "Service "$1" "$2" is DOWN"
	fi
fi
