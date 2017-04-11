#!/bin/sh

# Apollia's note, 19:45:44 02/22/2017:
#
# Requires ImageMagick: https://www.imagemagick.org/
# (I used version 7.0.5-0.)
#
# Converts every image in $IMAGES_FOLDER into shades of green.
#
#
# These pages were very helpful:
#
# http://steveliles.github.io/creating_colourised_icon_theme_sets_with_image_magick.html
#
# http://www.wizards-toolkit.org/discourse-server/viewtopic.php?t=17529#p65948


IMAGES_FOLDER="/root/00-BackupWorkspace/vue/*"

for file in $IMAGES_FOLDER
do

	filename=$(basename "$file")
	fileext=${filename##*.}
	
	alphafile="$file.alpha.$fileext"


	cp --no-clobber "$file" "$alphafile"
	
	mogrify +level-colors "#004400","#00AA00" "$file"
	
	convert "$file" "$alphafile" -compose CopyOpacity -composite "$file"
	
	rm "$alphafile"
done
