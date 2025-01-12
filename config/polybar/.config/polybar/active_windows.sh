#!/bin/bash
active_window=$(i3-msg -t get_tree | jq -r '.. | select(.focused?==true)|.name')

all_windows=$(i3-msg -t get_tree | jq -r '.. | .nodes?[]?.nodes?[]?.nodes?[]?.name // empty')
echo $all_windows
