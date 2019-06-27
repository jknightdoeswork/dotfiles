#!/bin/sh

if test $# -lt 6; then 
	cat <<-EOH
	$0: Script to crop a video using ffmpeg.
	
	Usage:
	
	$0 input output width height x y

	runs something like
	ffmpeg -i input.mp4 -filter:v "crop=512:512:704:284" output.mp4
	EOH
    exit 1
fi

ffmpeg -i $1 -filter:v "crop=$3:$4:$5:$6" $2
