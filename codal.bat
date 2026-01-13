@echo off

:: Config
set PROGRAM_DIR_WSL=/mnt/d/IDEs/codal/codal-ez
set CODAL_WSL=/home/dylanb/codal

:: Run CODAL build script in WSL
set WSLENV=CODAL_WSL
wsl -e "%PROGRAM_DIR_WSL%/build.sh"

:: If unsuccessful, exit
if errorlevel 1 exit

:: If successful, upload to the micro:bit
echo Sending to MICROBIT (F:\)
copy MICROBIT.hex F:\