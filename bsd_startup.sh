#!/bin/sh
tmux new-session -d -s scripts
cd /mnt/zfsPool/sys/minecraft
tmux new-window -t scripts:1 -n 'minecraft'
cd /mnt/zfsPool/sys/subsonic
tmux new-window -t scripts:2 -n 'subsonic'
cd /mnt/zfsPool/sys/pms
tmux new-window -t scripts:3 -n 'pms'
cd /mnt/zfsPool/sys/sabnzbd
tmux new-window -t scripts:4 -n 'sabnzbd'
cd /mnt/zfsPool/sys/couchpotato/RuudBurger-CouchPotato-33a99b4
tmux new-window -t scripts:5 -n 'couchpotato'
cd /mnt/zfsPool/sys/sickbeard/midgetspy-Sick-Beard-b3a7afe
tmux new-window -t scripts:6 -n 'sickbeard'
cd /root
tmux new-window -t scripts:7 -n 'backup'

tmux send-keys -t1 "cd /mnt/zfsPool/sys/minecraft;./minecraft.sh" C-m
tmux send-keys -t2 "cd /mnt/zfsPool/sys/subsonic; ./subsonic.sh" C-m
tmux send-keys -t3 "cd /mnt/zfsPool/sys/pms;su disgustipated -c ./PMS.sh" C-m
tmux send-keys -t4 "cd /mnt/zfsPool/sys/sabnzbd;python SABnzbd.py -s 6.13.0.138:8613" C-m
tmux send-keys -t5 "cd /mnt/zfsPool/sys/couchpotato/;python CouchPotato.py" C-m
tmux send-keys -t6 "cd /mnt/zfsPool/sys/sickbeard/midgetspy-Sick-Beard-b3a7afe;python SickBeard.py" C-m
tmux send-keys -t7 "cd /root" C-m
