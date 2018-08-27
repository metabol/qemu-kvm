#!/bin/bash
#VirtualMachine image creator
param="Usage: ./quemu-kvm [file] [size]"
param1="[file]: /path/to/file of storage to create. Example - myhdd1.img"
param2="[size]: Size of storage. Example - 500M or 10G or 100G"

if [[ $# -lt 2 ]]
then
 echo
 echo $param
 echo $param1
 echo $param2
 echo
 exit 1
else
 echo "Got param1:$1 and param2:$2"
 qemu-img create $1 $2
 
fi

