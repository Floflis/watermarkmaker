#!/bin/bash

convert -size 280x100 pattern:SMALLFISHSCALES \
  \( xc:transparent -font "Menlo" -pointsize 32 -fill black -draw "rotate -4 text 20,60 'ImageMagick'" -blur 0x1 \) \
  -geometry +2+2   -composite \
  -font "Menlo" -fill white -pointsize 32 -draw "rotate -4 text 20,60 'ImageMagick'" \
  watermark.png
#- from https://stackoverflow.com/a/20861391/5623661
