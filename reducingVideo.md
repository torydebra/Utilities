## Reducing video size with ffmpeg

`ffmpeg -i VIDEO.mp4 -filter:v "fps=fps=30, scale=1280:-1" -vcodec libx265 -crf 30 -c:a copy VIDEOREDUCED.mp4`

Options:
- Most important is crf. Since a reasonable range for H.265 may be 24 to 30. Note that lower CRF values correspond to higher bitrates, and hence produce higher quality videos.

- in future libx265 can become 266


### Script for reduce all video ending with .MP4 in a folder renaming each with an appended "_low.mp4"

~~~sh
#!/bin/bash
rename="_low.mp4"
for f in *.MP4
do
  filename=$(basename -- "$f")
  filename="${filename%.*}"
  ffmpeg -i "$f" -filter:v "fps=fps=60, scale=1280:-1" -vcodec libx265 -crf 30 -c:a copy "$filename$rename"

done
~~~


### ISSUES
```
[mp4 @ 0x564d5f06b440] Could not find tag for codec pcm_s16be in stream #1, codec not currently supported in container
Could not write header for output file #0 (incorrect codec parameters ?): Invalid argument
Error initializing output stream 0:0 -- 
```

from [this](https://stackoverflow.com/questions/47495713/could-not-find-tag-for-codec-pcm-alaw-in-stream-1-codec-not-currently-supporte)

use `-c:a acc` like:
```
ffmpeg -i input.mov -c:v copy -c:a aac output.mp4
```

