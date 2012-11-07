#!/bin/bash

source .irqhashtagrc
touch $outputlog

count=0

mkdir $imagedir 2> /dev/null

for url in `cat processed.log|grep ^http`; do
	grep -q $url $outputlog
	if [ $? != 0 ]; then
		count=$((count + 1))
		cd $imagedir
		echo "Downloading $url"
		curl -s --remote-name $url
		cd ..
		echo "$count $url" >> $outputlog 
	# else
	# 	echo "$url has already been downloaded, skipping ..."
	fi
done
