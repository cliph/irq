#!/bin/bash

source ../../config

while true; do
    date=`date +%d%m%y%H%M%S`
	datefile=$name_$date.jpg
	namefile=$name.jpg
	echo -n "Capturing image ... "
	$linbin $archive/$datefile
	echo "Done."

	echo -n "Making image link ... "
	ln -fs $archive/$datefile $outdir/$namefile
	echo "Done."

	echo

	sleep $interval

done

