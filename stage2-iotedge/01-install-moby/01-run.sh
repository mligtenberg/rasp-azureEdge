#!/bin/bash -e

install -m 644 files/daemon.json "${ROOTFS_DIR}/etc/docker/daemon.json"
