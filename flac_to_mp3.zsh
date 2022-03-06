#!/bin/zsh

for file in $1/**/*.flac;
do
  ffmpeg -i $file -ab 320k -map_metadata 0 -id3v2_version 3 ${file:r}.mp3;
done
