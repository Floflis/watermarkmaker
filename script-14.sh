#!/bin/bash

cp watermark_template.png watermark.png

convert watermark.png -size 511x81 \
  \( xc:transparent -font "Arial" -pointsize 20 -fill black -draw "text 20,55 'Floflis 19 Insider Preview'" -blur 0x1 \) \
  -geometry +2+2   -composite \
  -font "Arial" -fill white -pointsize 20 -draw "text 20,55 'Floflis 19 Insider Preview'" \
  watermark.png
#- from https://stackoverflow.com/a/20861391/5623661

convert watermark.png -size 511x81 \
  \( xc:transparent -font "Arial" -pointsize 20 -fill black -draw "text 40,75 'Evaluation compilation. Build 2301 Eusoumafoca'" -blur 0x1 \) \
  -geometry +2+2   -composite \
  -font "Arial" -fill white -pointsize 20 -draw "text 40,75 'Evaluation compilation. Build 2301 Eusoumafoca'" \
  watermark.png
