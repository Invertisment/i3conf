#!/bin/bash
# This script accepts arguments that it will pass to dmenu

function getWindowName {
  WINDOW_ID=$1
  echo -n $WINDOW_ID" "
  echo $(xprop -id $WINDOW_ID | grep _NET_WM_NAME | grep -o "\".*\"" | xargs echo -n)
}

function getWindowIDs {
  echo -n $(xprop -root | grep '^_NET_CLIENT_LIST_STACKING(WINDOW)' | grep -o "#.*$" | cut -c 2-)
}

function findMenuItems {
  export -f getWindowName
  getWindowIDs | xargs -L 1 -I {} -d , -r bash -c 'getWindowName "{}"'
}

function showMenu {
  DMENU_LIST=$1
  echo $DMENU_LIST | dmenu -l 25 -i
}

findMenuItems | dmenu -l 25 -i | cut -d " " -f1
