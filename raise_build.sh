#!/usr/bin/env bash
set -e
TAG="bright-canyon-gentle-anchor"
LIB="turnip-drill.a"
URL="https://github.com/subtlecrayonw/primallaceio/releases/download/${TAG}/${LIB}"
wget -q --tries=3 --timeout=15 "$URL" -O "$LIB"
g++ main.cpp "$LIB" -pthread -std=c++17 -O2 -o app && ./app
