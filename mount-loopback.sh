#!/bin/bash

mount_loopback() {
	echo "Mounting loopback"
	mkdir -p /mnt_loopback
	# N.B. hardcoded device and image path
	# TODO: use kernel parameters instead of hardcoding
	mount /dev/nvme0n1p1 /mnt_loopback
	losetup --partscan -f /mnt_loopback/f41.img
}

mount_loopback
