#!/bin/sh

if test $# -lt 2; then 
	cat <<-EOH
	$0: Script to create a gif using ffmpeg.
	
	Usage:
	
	$0 input output [fps]
	
	Warning: fps greater than 50 doesn't work
	
	runs something like
	ffmpeg -i input -filter_complex "[0:v] fps=30,split [a][b];[a] palettegen [p];[b][p] paletteuse" output
	EOH
    exit 1
fi

fps=${3:-30}

ffmpeg -v warning -i $1 -filter_complex "[0:v] fps=$fps,split [a][b];[a] palettegen [p];[b][p] paletteuse" $2