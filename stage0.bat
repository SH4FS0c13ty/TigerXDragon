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
set /p start=Do you have WSL with Ubuntu already installed (y/n)?
if /i "%start%" NEQ "y" (
echo Installing WSL with Ubuntu...
wsl --install
)
echo.
set /p start=Did your computer reboot (y/n)?
if /i "%start%" NEQ "y" shutdown /r /t 0
echo.
echo Updating and upgrading Ubuntu packages ...
bash -c "sudo apt update"
bash -c "sudo apt -y full-upgrade"
echo Installing requirements ...
bash -c "sudo apt -y install translate-toolkit sed"
echo Done!
pause