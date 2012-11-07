#!/bin/bash

source .irqhashtagrc

pkill -f $twitter_script
pkill -f $insta_script

for file in `ls *.log`; do
	> $file
done

cd $imagedir && rm *.jpg
