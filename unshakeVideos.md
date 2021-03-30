### Unshaking videos how to

lib for unshaking is not build by default  (in ubuntu 18) 
So either rebuild or dowload built one at https://www.johnvansickle.com/ffmpeg/

Then:
```bash
<path of dowloaded built ffmpeg>/ffmpeg -i input.mp4 -vf "scale=1200:-2,vidstabdetect=shakiness=5:accuracy=15:stepsize=6:mincontrast=0.3:show=2" -f null -
<path of dowloaded built ffmpeg>/ffmpeg -i input.mp4 -vf "scale=1200:-2,vidstabtransform=smoothing=30:interpol=bilinear:crop=black:zoom=0:optzoom=1,unsharp=5:5:0.8:3:3:0.4,format=yuv420p" -crf 23 -preset medium output.mp4

```

Check https://ffmpeg.org/ffmpeg-filters.html#vidstabtransform-1 for option explainations.
I found the most important: shakiness (4-5 good to solve shaking by handheld smartphone which try to stay still)
