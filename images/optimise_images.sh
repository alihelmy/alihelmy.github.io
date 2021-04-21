#!/bin/bash

echo 'converting pngs to jpgs'
for file in `ls *.png`
do
	newfile=`echo $file | sed 's/png/jpg/'`
	convert $file $newfile
done

echo 'optimising jpgs'
for file in `ls *.jpg`
do
	convert -verbose -resize 1920x1080 $file $file
done
