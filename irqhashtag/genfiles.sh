#!/bin/bash

source .irqhashtagrc

echo -n "Generating front end ... "
for file in `ls *.php`; do
	basefile=`basename -s .php $file`
	echo -n "$basefile "
	php $file > $basefile.html
done
echo "done."
