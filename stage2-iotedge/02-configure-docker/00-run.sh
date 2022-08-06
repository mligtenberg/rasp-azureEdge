#!/bin/bash -e
JSON_STRING='{"log-driver": "local"}'
echo JSON_STRING > "${ROOTFS_DIR}/etc/docker/daemon.json"