#!/bin/bash

# Variables
src="$(pwd)"

# Set codal source directory to src (symlink)
cd $CODAL_WSL
rm "./source"
ln -s -T "$src" "./source"

# Build
if python3 build.py;
then
    echo -e "\nCopying HEX file to project dir."
    cp "./MICROBIT.hex" "$src"
    exit 0
else
    echo -e "\nBuild command failed."
    exit 1
fi