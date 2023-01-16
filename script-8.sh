#!/bin/bash

cp watermark_template.png watermark.png

convert -size 511x81 \
  \( xc:transparent -font "Arial" -pointsize 32 -fill black -draw "text 20,60 'Floflis 19 Insider Preview'" -blur 0x1 \) \
  -geometry +2+2   -composite \
  -font "Arial" -fill white -pointsize 32 -draw "text 20,60 'Floflis 19 Insider Preview'" \
  watermark.png
#- from https://stackoverflow.com/a/20861391/5623661
