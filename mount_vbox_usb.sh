#!/bin/bash

rm $PROJECTS/usb.vmdk
sudo diskutil unmountDisk /dev/disk2
sudo VBoxManage internalcommands createrawvmdk -filename $PROJECTS/usb.vmdk -rawdisk /dev/disk2
sudo chown jonb:admin $PROJECTS/usb.vmdk
