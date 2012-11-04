#!/bin/bash

source .irqhashtagrc

if [ $dotwitter != 0 ]; then
	echo "Starting twitter poller"
	./$twitter_script >> $twitterlog &
fi

# ./$insta_script >> $instalog &

# sleep 20

twitter() {
	if [ $dotwitter != 0 ]; then
		# for tag in $hashtags; do
		for line in `cat $twitterlog`; do
			grep -q $line $processedlog
			if [ $? != 0 ] 
				then
					echo $line >> $processedlog
			fi
		done
	else
		echo "Skipping twitter"
	fi
}


instagram() {
	if [ $doinsta != 0 ]; then
		for tag in $hashtags; do
			echo "Polling instagram for $tag"
			./$insta_script $tag >> $instalog
		done
		for line in `cat $instalog`; do
			grep -q $line $processedlog
			if [ $? != 0 ]
				then
					echo $line >> $processedlog
			fi
		done
	else
		echo "Skipping instagram"
	fi

}

control_c () {
	echo "Quitting!"
	./kill.sh
	exit $?
}

# trap keyboard interrupt (control-c)
trap control_c SIGINT

while true; do
	source .irqhashtagrc
	echo -n "Hashtags are:"
	for tag in $hashtags; do
		echo -n " $tag"
	done
	echo "."
	twitter
	instagram

	# echo "Processing logs ..."
	# sort $processedlog | uniq > $processedlog.tmp && mv $processedlog.tmp $processedlog
	./fetchfiles.sh
	./genfiles.sh
	sleep 20
done


