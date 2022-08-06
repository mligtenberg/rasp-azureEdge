#!/usr/bin/env bash

## clone pi-gen
git clone --depth 1 https://github.com/RPI-Distro/pi-gen.git

## disable export for stage2
touch ./pi-gen/stage2/SKIP_IMAGES ./pi-gen/stage2/SKIP_NOOBS

## link config
ln -s ../config ./pi-gen

## link stage2-iotedge
ln -s ../stage2-iotedge ./pi-gen

## link future deploys
[[ ! -d ./pi-gen/deploy ]] && mkdir ./pi-gen/deploy
ln -s ./pi-gen/deploy .