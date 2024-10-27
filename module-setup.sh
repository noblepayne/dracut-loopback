#!/bin/bash

check() {
	# require_binaries kpartx || return 1
	return 0
}

depends() {
	return 0
}

install() {
	echo "Installing loopback module"
	# inst $(find_binary kpartx)
	inst_hook pre-mount 92 "$moddir/mount-loopback.sh"
}
