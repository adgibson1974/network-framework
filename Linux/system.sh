#!/bin/bash

#Printing free memory

top -n 1 | grep -i 'KiB Mem' | awk -F, '{print $2}' >> ~/backups/freemem/free_mem.txt

#Printing Disk Usage

top -n 1 | grep -i '%Cpu(s)' >> ~/backups/diskuse/disk_usage.txt

#Printing Open files

lsof >> ~/backups/openlist/open_list.txt

#Printing File System Disk Space stats

df >> ~/backups/freedisk/free_disk.txt

