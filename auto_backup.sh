#!/bin/bash
count=0
while true; do
	d=$(date)
	echo "$d" >> gStatus.txt
	git status >> gStatus.txt
	((count++))
	echo "Current backup no.$count" > backup-status.txt
	git add .
	git commit -m "$d"
	sleep $[60 * 60 * 24]
done
