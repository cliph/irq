#!/bin/bash

source .irqhashtagrc

pkill -f $twitter_script
pkill -f $insta_script
pkill -f curl
