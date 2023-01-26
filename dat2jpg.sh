#!/bin/bash

# Created by Anja Sheppard on 1/26/23 to aid in displaying
# .DAT files from NASA PDS

# Usage: ./dat2jpg file_1.DAT file_2.DAT ...

# Output: .jpg of the file at the location where you ran the script
#         image viewer opens converted jpgs

for (( i=1; i <= "$#"; i++ )); do
  DAT_PATH="${!i}"
  DAT_FILE_NAME="$(basename $DAT_PATH .DAT)"
  
  # .DAT to .IMG (dat2img tool https://pds-imaging.jpl.nasa.gov/data/msl/MSLMHL_0013/SOFTWARE/DOC/MMM_DAT2IMG.TXT)
  dat2img $DAT_PATH /tmp/

  # .IMG to .JPG (NASA transform tool https://nasa-pds.github.io/transform/operate/index.html)
  transform "/tmp/${DAT_FILE_NAME}_00.IMG" -f jpg

  # Remove extraneous _00 in file name
  mv "./${DAT_FILE_NAME}_00.jpg" "./${DAT_FILE_NAME}.jpg"

  # Open in image viewer
  xdg-open "./${DAT_FILE_NAME}.jpg"
done
