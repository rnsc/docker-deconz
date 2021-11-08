#!/bin/bash

set -ex

DECONZ_VERSION=$1
CHANNEL=$2

uname -a

if uname -a | grep -qE "arm64|aarch64";
then
  URL="http://deconz.dresden-elektronik.de/debian/${CHANNEL}/deconz_${DECONZ_VERSION}-debian-stretch-${CHANNEL}_arm64.deb"
fi
if uname -a | grep -qE "amd64";
then
  URL="http://deconz.dresden-elektronik.de/ubuntu/${CHANNEL}/deconz-${DECONZ_VERSION}-qt5.deb"
fi
if uname -a | grep -qE "armhf|armv7";
then
  URL="http://deconz.dresden-elektronik.de/raspbian/${CHANNEL}/deconz-${DECONZ_VERSION}-qt5.deb"
fi

curl -vv "${URL}" -o /deconz.deb

