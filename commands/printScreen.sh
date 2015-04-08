#!/bin/bash

# Take a screenshot and move it to Pictures
scrot '%Y-%m-%d_%H:%M:%S_$wx$h.png' -e 'mv $f ~/Pictures/screenshots/'
