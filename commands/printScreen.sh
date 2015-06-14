#!/bin/bash

# Take a screenshot and move it to Pictures

args=""
title="%Y-%m-%d_%X.$(date +%s%N)"
if [ "$1" == "-f" ]
then
    # scrot parameter: printscreen focused window
    args="$args --focused"
fi

extension='.png'
title="$title$extension"

scrot $title -e 'mv $f ~/Pictures/screenshots/' $args
