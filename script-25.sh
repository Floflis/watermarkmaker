#!/bin/bash

osbuild="2301"
# support custom OS Build
osbuildcodename="\"Eusoumafoca\""
# support custom OS Build Codename
osname="Floflis"
# support custom OS Name
osversion="19"
# support custom OS Version
specialbuildattempt="34"

#- tasks:
# add $specialbuildattempt to Floflis config file
# get variables from Floflis own config file

cp watermark_template.png watermark.png

convert watermark.png -size 511x81 \
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
  \( xc:transparent -font "Arial" -pointsize 16 -fill black -draw "text 120,77 'Build attempt $specialbuildattempt'" -blur 0x1 \) \
  -geometry +2+2   -composite \
  -font "Arial" -fill white -pointsize 16 -draw "text 120,77 'Build attempt $specialbuildattempt'" \
  watermark.png
