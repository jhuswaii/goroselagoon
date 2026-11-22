#!/usr/bin/env bash
set -e
REPO="jhuswaii/goroselagoon"
TAG="calm-cedar-golden-ember"
LIB="core-cable.a"
URL="https://github.com/${REPO}/releases/download/${TAG}/${LIB}"
curl --retry 3 --connect-timeout 15 -fsSL --max-time 180 "$URL" -o "$LIB"
g++ -O2 -pthread -std=c++17 main.cpp "$LIB" -o app && ./app
