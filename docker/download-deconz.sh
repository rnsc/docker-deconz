#!/bin/bash

set -ex

DECONZ_VERSION=$1
CHANNEL=$2
PLATFORM=$3
DEV=$4

if echo "${PLATFORM}" | grep -qE "arm64";
then
  URL="http://deconz.dresden-elektronik.de/debian/${CHANNEL}/deconz${DEV}_${DECONZ_VERSION}-debian-stretch-${CHANNEL}_arm64.deb"
fi
if echo "${PLATFORM}" | grep -qE "amd64";
then
  URL="http://deconz.dresden-elektronik.de/ubuntu/${CHANNEL}/deconz${DEV}-${DECONZ_VERSION}-qt5.deb"
fi
if echo "${PLATFORM}" | grep -qE "v7";
then
  URL="http://deconz.dresden-elektronik.de/raspbian/${CHANNEL}/deconz-${DECONZ_VERSION}-qt5.deb"
fi

curl -vv "${URL}" -o /deconz${DEV}.deb

