#!/bin/bash -e

install -m 644 files/microsoft.list "${ROOTFS_DIR}/etc/apt/sources.list.d/"
sed -i "s/RELEASE/${RELEASE}/g" "${ROOTFS_DIR}/etc/apt/sources.list.d/microsoft.list"

cat files/microsoft.asc | gpg --dearmor > "${ROOTFS_DIR}/etc/apt/trusted.gpg.d/microsoft-archive-stable.gpg"
on_chroot << EOF
apt-get update
apt-get dist-upgrade -y
EOF
