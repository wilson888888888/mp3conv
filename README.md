# mp3conv
Small script to convert many flacs to mp3 using ffmpeg
Supports variable and constant bitrate.
### Running:
Run script inside directory with flacs.
One argument for bitrate, both CBR and VBR.
Examples:
`./mp3conv.sh V0` (equivalent to lame -V 0)
`./mp3conv.sh 320` (equivalent to lame -b 320)
