#!/bin/sh

# Apollia's note, 19:46:21 02/22/2017.
#
# Requires ImageMagick: https://www.imagemagick.org/
# (I used version 7.0.5-0.)
#
# Makes every image in $IMAGES_FOLDER greyscale.


IMAGES_FOLDER="/root/00-BackupWorkspace/vue/*"

for file in $IMAGES_FOLDER
do
	convert "$file" -colorspace gray "$file"
done
