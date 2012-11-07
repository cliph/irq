#!/bin/bash

source .irqhashtagrc

twitter_url=https://stream.twitter.com/1/statuses/filter.json

# usage() {
# 	echo "$0 <hashtag>"
# }

# if [ $# != 1 ]; then
#	usage
#	exit 1
# else
#	hashtag=$1
# fi


# echo curl -s $twitter_url -d track=\'$hashtags\' -u $twitter_user:$twitter_pass 
# echo "curl -Ns $twitter_url -d track=\'$hashtags\' -u $twitter_user:$twitter_pass | tr -u , '\n' | grep --line-buffered media_url\" | sed -l 's/\\//g'" 
curl -Ns $twitter_url -d track=${hashtags} -u $twitter_user:$twitter_pass | tr -u , '\n' | grep --line-buffered media_url\" | sed -l 's/\\//g' | cut -d\" -f4
# curl -v -o - $twitter_url -d track=\'$hashtags\' -u $twitter_user:$twitter_pass 2>1

# | tr -u , '\n' | grep --line-buffered media_url\" # | sed -l 's/\\//g' 

# | cut -d\" -f4 
# curl $twitter_url -d track=\'$hashtags\' -u $twitter_user:$twitter_pass | tr , '\n' | grep media_url\" | sed 's/\\//g' | cut -d\" -f4 
# curl -s $twitter_url -d track=\'$hashtags\' -u $twitter_user:$twitter_pass | tr , '\n' | grep media_url\" | sed 's/\\//g' | cut -d\" -f4 
# cut -d\" -f4 | \
# sort|uniq|sed 's/\\//g'

