#!/bin/bash

# Variables
CODAL_DIR="/home/dylanb/codal"
src="$(pwd)"

# Set codal source directory to src (symlink)
cd $CODAL_DIR
rm "./source"
ln -s -T "$src" "./source"

# Build
if python3 build.py;
then
    echo "Copying HEX file to project dir."
    cp "./MICROBIT.hex" "$src"

    exit 0
else
    echo "Build command failed."
    exit 1
fi