# mp3conv
Small script to convert a directory of flacs or mp3s to mp3 using ffmpeg

Supports variable and constant bitrate.

Creates directory with mp3s in parent directory of working.

Note: Apparently converting from lossy to lossy is a pretty bad thing. So try not to do that.
### Running:
Run script inside directory with flacs.

First argument for bitrate, both CBR and VBR.

Second argument for source format, either flac or mp3

Examples:

`./mp3conv.sh V0 mp3` (equivalent to lame -V 0, converts all mp3s in directory)

`./mp3conv.sh 320 flac` (equivalent to lame -b 320, converts all flacs in directory)
