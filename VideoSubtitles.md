# How to add caption/subtitles to video

Subtitles can be softembedded: they can be attached and then from the video player you can show them or not.

1. Create subtitles file, use like https://maestrasuite.com/ (free version max 15min video)
2. Attach subtitles file (like `.srt` or `.stl`) to video with ffmpeg:
  ```
  ffmpeg -i video.mp4 -i sub.srt -c copy -c:s mov_text out.mp4 
  ```
  (from https://stackoverflow.com/questions/8672809/use-ffmpeg-to-add-text-subtitles/17584272#17584272)
  
  ### Note
  Vlc on Ubuntu may have problem in visualize captions. I solved installing vlc from `apt-get` instead of `snap`
