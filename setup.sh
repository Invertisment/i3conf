#!/bin/bash
cd $(dirname $0)
ln -sf `pwd`/i3status.conf ~/.i3status.conf
ln -sfd `pwd` ~/.config/i3
