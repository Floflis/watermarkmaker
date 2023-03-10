#!/bin/bash

. /usr/lib/floflis/./config

if [ ! -f watermark_template.png ]; then convert -size 511x81 xc:transparent watermark_template.png; fi
#- from https://stackoverflow.com/a/39504523/5623661

convert watermark_template.png -size 511x81 \
  \( xc:transparent -font "Arial" -pointsize 20 -fill black -draw "text 40,35 '$osname $osversion Insider Preview'" -blur 0x1 \) \
  -geometry +2+2   -composite \
  -font "Arial" -fill white -pointsize 20 -draw "text 40,35 '$osname $osversion Insider Preview'" \
  watermark.png
#- from https://stackoverflow.com/a/20861391/5623661

convert watermark.png -size 511x81 \
  \( xc:transparent -font "Arial" -pointsize 20 -fill black -draw "text 40,60 'Evaluation compilation. Build $osbuild $osbuildcodename'" -blur 0x1 \) \
  -geometry +2+2   -composite \
  -font "Arial" -fill white -pointsize 20 -draw "text 40,60 'Evaluation compilation. Build $osbuild $osbuildcodename'" \
  watermark.png
  
convert watermark.png -size 511x81 \
  \( xc:transparent -font "Arial" -pointsize 16 -fill black -draw "text 180,76 'Build attempt $specialbuildattempt'" -blur 0x1 \) \
  -geometry +2+2   -composite \
  -font "Arial" -fill white -pointsize 16 -draw "text 180,76 'Build attempt $specialbuildattempt'" \
  watermark.png
