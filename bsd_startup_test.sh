#!/bin/sh
tmux new-session -d -s scripts
tmux new-window -a -c '/mnt/zfsPool/sys/minecraft/' -n 'minecraft' -t scripts './minecraft.sh'
