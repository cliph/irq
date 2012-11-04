#!/bin/bash

source .irqhashtagrc

insta_url=https://api.instagram.com/v1/tags/ # irq/media/recent

usage() {
	echo "$0 <hashtag>"
}

if [ $# != 1 ]; then
	usage
	exit 1
else
	hashtag=$1
fi

# while true
# do
	
	# for tag in $hashtags
	# do
		# echo https://api.instagram.com/v1/tags/$tag/media/recent
		# curl -s $insta_url/$tag/media/recent?client_id=$insta_clientid | tr , '\n' | grep standard_resolution | cut -d\" -f6|sort|uniq|sed 's/\\//g'
		curl -s $insta_url/$hashtag/media/recent?client_id=$insta_clientid | tr , '\n' | grep standard_resolution | cut -d\" -f6 | sed 's/\\//g'
		# curl -s $insta_url/$hashtag/media/recent?client_id=$insta_clientid | tr , '\n' | grep standard_resolution | cut -d\" -f6|sort|uniq|sed 's/\\//g'; echo $?
		# curl $insta_url/$hashtag/media/recent?client_id=$insta_clientid | tr , '\n' | grep standard_resolution | cut -d\" -f6|sort|uniq|sed 's/\\//g'
		# | cut -d\" -f6|sort|uniq|sed 's/\\//g'

	# done
	sleep $poll_interval
# done
