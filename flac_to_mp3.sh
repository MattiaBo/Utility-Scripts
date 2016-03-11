#!/bin/bash

for i in *.flac ; do
    ffmpeg -i "$i" -acodec libmp3lame -ab 320k "${i%.*}".mp3
    sleep 5
done
