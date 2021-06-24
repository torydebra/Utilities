##Reducing video size with ffmpeg

`ffmpeg -i VIDEO.mp4 -filter:v "fps=fps=30, scale=1280:-1" -vcodec libx265 -crf 30 -c:a copy VIDEOREDUCED.mp4`

Options:
- Most important is crf. Since a reasonable range for H.265 may be 24 to 30. Note that lower CRF values correspond to higher bitrates, and hence produce higher quality videos.

- in future libx265 can become 266


### Script for reduce all video ending with .MP4 in a folder renaming each with an appended "_low.mp4"

rename="_low.mp4"
for f in *.MP4
do
  filename=$(basename -- "$f")
  filename="${filename%.*}"
  ffmpeg -i "$f" -filter:v "fps=fps=60, scale=1280:-1" -vcodec libx265 -crf 30 -c:a copy "$filename$rename"

done
