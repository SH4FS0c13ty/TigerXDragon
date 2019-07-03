@echo off
title Toradora! Portable Translation Toolkit Stage 0 by SH4FS0c13ty
chcp 65001
cls
echo.
echo ████████╗██╗ ██████╗ ███████╗██████╗     ██╗  ██╗    ██████╗ ██████╗  █████╗  ██████╗  ██████╗ ███╗   ██╗
echo ╚══██╔══╝██║██╔════╝ ██╔════╝██╔══██╗    ╚██╗██╔╝    ██╔══██╗██╔══██╗██╔══██╗██╔════╝ ██╔═══██╗████╗  ██║
echo    ██║   ██║██║  ███╗█████╗  ██████╔╝     ╚███╔╝     ██║  ██║██████╔╝███████║██║  ███╗██║   ██║██╔██╗ ██║
echo    ██║   ██║██║   ██║██╔══╝  ██╔══██╗     ██╔██╗     ██║  ██║██╔══██╗██╔══██║██║   ██║██║   ██║██║╚██╗██║
echo    ██║   ██║╚██████╔╝███████╗██║  ██║    ██╔╝ ██╗    ██████╔╝██║  ██║██║  ██║╚██████╔╝╚██████╔╝██║ ╚████║
echo    ╚═╝   ╚═╝ ╚═════╝ ╚══════╝╚═╝  ╚═╝    ╚═╝  ╚═╝    ╚═════╝ ╚═╝  ╚═╝╚═╝  ╚═╝ ╚═════╝  ╚═════╝ ╚═╝  ╚═══╝
echo.
echo Toradora! Portable Translation Toolkit Stage 0 by SH4FS0c13ty
echo Stage 0 will install the requirements for the toolkit.
echo.
set /p start=Start stage 0 (y/n)? 
if /i "%start%" NEQ "y" exit
echo.
echo Installing .Net Framework 3.5 ...
DISM /online /enable-feature /featurename:NetFx3
echo.
echo Installing .Net Framework 4.0 ...
DISM /online /enable-feature /featurename:NetFx4-AdvSrvs
echo.
echo Enabling Windows Subsystem for Linux ...
echo Please reboot when prompted and re-execute stage 0
DISM /online /enable-feature /featurename:Microsoft-Windows-Subsystem-Linux
echo.
set /p start=Did your computer reboot (y/n)? 
if /i "%start%" NEQ "y" shutdown /r /t 0
echo Installing Debian on Windows ...
echo.
curl.exe -L -o C:\debian.appx https://aka.ms/wsl-debian-gnulinux
powershell.exe -Command "Rename-Item C:\debian.appx C:\debian.zip"
powershell.exe -Command "Expand-Archive C:\debian.zip C:\debian"
setx path "%path%;c:\debian"
C:\debian\debian.exe config --default-user root
echo Updating and upgrading Debian packages ...
bash -c "apt update"
bash -c "apt -y full-upgrade"
echo Installing requirements ...
bash -c "apt -y install translate-toolkit openjdk-8-jdk"
echo Done!
pause