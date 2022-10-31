#!/bin/sh
clear

echo "yt-dlp and ffmpeg must be installed."
echo "Enter a playlist or a song url:"
read URL

yt-dlp \
-x \
-f 'ba' \
--audio-format mp3 \
--embed-thumbnail \
--embed-metadata $URL \
-N 16 \
--convert-thumbnail jpg \
-o "%(title)s.%(ext)s" \
--ppa "EmbedThumbnail+ffmpeg_o:-c:v mjpeg -vf crop=\"'if(gt(ih,iw),iw,ih)':'if(gt(iw,ih),ih,iw)'\""
