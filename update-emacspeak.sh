#!/usr/bin/bash
cd ~/emacspeak
git pull
make clean
make -j$(nproc --all)
