#!/bin/bash
image_path=$(readlink -f $1)
if [ ! -f $image_path ]
then
    echo "$@: Given argument (\"$1\") is not valid file path"
    exit
fi

dir=$(dirname $0)
wall_symlink=$dir/wallpaper

rm $wall_symlink
ln -s $image_path $wall_symlink

#refresh wallpaper
bash $dir/refreshWall.sh
