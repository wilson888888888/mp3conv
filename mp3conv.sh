#!/bin/bash
if [ $# -eq 0 ]; then
  echo "Please specify quality"
  exit 1
fi
form=$1
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
for a in *.flac; do
  ffmpeg -i "$a" $arg "${a[@]/%flac/mp3}"
done
mv *.mp3 $dir
mv $dir ..
