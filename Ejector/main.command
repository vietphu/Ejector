#!/usr/bin/env sh

#  main.command
#  Ejector

#  Created by seemiller on 9/27/11.
#  Copyright 2011 -. All rights reserved.

disks=`diskutil list | awk '/ disk[0-9]+$/ {print $5}'`;
  for disk in $disks;
    do
      if [ "`diskutil info $disk | grep -i eject | awk '/Ejectable/ {print $2}'`" == "Yes" ]; then
        diskutil eject $disk;
      fi
    done
