#!/bin/bash

cp watermark_template.png watermark.png

convert -size 511x81 pattern:SMALLFISHSCALES \
  \( xc:transparent -font "Arial" -pointsize 32 -fill black -draw "rotate -4 text 20,60 'ImageMagick'" -blur 0x1 \) \
  -geometry +2+2   -composite \
  -font "Arial" -fill white -pointsize 32 -draw "rotate -4 text 20,60 'ImageMagick'" \
  watermark.png
#- from https://stackoverflow.com/a/20861391/5623661
