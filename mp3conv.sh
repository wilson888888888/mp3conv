#!/bin/bash
if [ $# -le 1 ]; then
	echo "Please specify quality and format being converted from"
	exit 1
fi
form=$1
from=$2
dir="${PWD##*/}"
dir=""$dir"-mp3-"$form""
mkdir $dir
first=${form:0:1}
echo "Converting all flacs to mp3 $1..."
if [ $first = "V" ]; then
	arg="-q:a ${form:1:${#form}-1}"
else
	arg="-b:a ${form}k"
fi
if [ $from = "flac" ]; then
	for a in *.flac; do
		ffmpeg -i "$a" $arg "${a[@]/%flac/mp3}"
	done
	mv *.mp3 $dir
else
	for a in *.mp3; do
		ffmpeg -i "$a" $arg "${a:0:${#a}-4}-$form.mp3"
	done
	mv *$form.mp3 $dir	
fi
mv $dir ..
