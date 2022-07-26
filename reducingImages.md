# Reducing images

### ImageMagick (convert)
```
sudo apt-get install imagemagick
```

Standard which I use, but not working with png->png (size remains the same or even increase).  
Probably for png it should be used as png->jpg
```
convert -quality 40% input.jpg output.jpg
```
other option is :
```
convert  -resize 20% source.png dest.jpg
```
lower the `resize`, lower the quality. `resize` can also be a resolution, like `1024X768`

### pngquant (good for png)
```sudo apt-get install pngquant```

Very nice with matlab plots png, reduced of half (with speed 1) without any real visible loss
```
pngquant --speed 1 input.png -o output.png
```
more the `speed`, more the compression
