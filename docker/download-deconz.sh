#!/bin/bash

DECONZ_VERSION=$1
CHANNEL=$ARG2

if uname -a | grep -q "arm64";
then
  URL="http://deconz.dresden-elektronik.de/ubuntu/${CHANNEL}/deconz-${DECONZ_VERSION}-arm64.deb"
else
  URL="http://deconz.dresden-elektronik.de/ubuntu/${CHANNEL}/deconz-${DECONZ_VERSION}-qt5.deb"
fi

curl -sS "${URL}" -o /deconz.deb

