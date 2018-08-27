#!/bin/bash
#Cirros VM machine
#$1 represents boot image
#$2 : Storage image
#Machine spec
# Name: cirros
#RAM size is 2G with extra hotplugabble slots and maximum ram of 8G
#Disable graphical output wih -curses
#Use Spanish keyboards
#Display a spash Screen for 5 seconds
#Use harddisk file

#Disk container the os and boot files
iso=/mnt/elements/iso/qcow2/cirros-0.4.0-x86_64-disk.img

#Extra storage 10G size
disk1=/mnt/share-1/data/share/hdd.img

qemu-system-x86_64 -name cirros -m 2G,slots=2,maxmem=8G -hda $iso -hdb $disk1 -curses -enable-kvm





