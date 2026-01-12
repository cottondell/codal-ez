@echo off

set "BUILD_SCRIPT_WSL=/mnt/d/IDEs/codal/helper/build.sh"

wsl -e "%BUILD_SCRIPT_WSL%"
if errorlevel 1 exit

echo Sending to MICROBIT (F:\)
copy MICROBIT.hex F:\