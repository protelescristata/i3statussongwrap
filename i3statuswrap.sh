#!/bin/sh
# shell script to prepend i3status with more stuff

i3status | while :
do
	read line
	song="$(python3 ../song.py)"
	echo "$song | $line" || exit 1
done
