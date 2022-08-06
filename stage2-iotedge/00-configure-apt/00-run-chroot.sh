#!/bin/bash -e

on_chroot << EOF
apt install ./packages-microsoft-prod.deb
EOF
