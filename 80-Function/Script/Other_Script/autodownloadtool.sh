#!/bin/bash

# Update package list
sudo apt-get update

# Install dependencies
sudo apt-get install -y \
    libx11-dev:i386 libreadline6-dev:i386 libgl1-mesa-dev g++-multilib \
    git flex bison gperf build-essential libncurses5-dev:i386 \
    tofrodos python-markdown libxml2-utils xsltproc zlib1g-dev:i386 \
    dpkg-dev libsdl1.2-dev libesd0-dev \
    git-core gnupg flex bison gperf build-essential \
    zip curl zlib1g-dev gcc-multilib g++-multilib \
    libc6-dev-i386 \
    lib32ncurses5-dev x11proto-core-dev libx11-dev \
    libgl1-mesa-dev libxml2-utils xsltproc unzip m4 \
    lib32z-dev ccache \
    libssl-dev \
    libncurses5

echo "All dependencies have been installed."
