# Conversion SVG to PNG


*   https://github.com/shakiba/svgexport

```
npm install svgexport -g
```


```
svgexport input.svg output.png 64x
svgexport input.svg output.png 1024:1024
```




```
convert -background none -size 1024x1024 infile.svg outfile.png
convert -density 1536 -background none -resize 100x100 input.svg output-100.png
```

```
brew install librsvg
rsvg-convert
```

```
rsvg  -w 1024 -h 1024 infile.svg  outfile.png
```
