#!/bin/sh

if test $# -lt 4; then 
	cat <<-EOH
	$0: Script to crop a video using ffmpeg.
	
	Usage:
	
	$0 input output start duration
	
	runs something like
	ffmpeg -ss 00:01:00 -i input.mp4 -t 30 -c copy output.mp4
	EOH
    exit 1
fi

#ffmpeg -ss 00:01:00 -i input.mp4 -to 00:02:00 -c copy output.mp4
ffmpeg -i $1 -ss "$3" -t "$4" -c copy -avoid_negative_ts 1 $2
