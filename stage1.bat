@echo off
title Toradora! Portable Translation Toolkit Stage 1 by SH4FS0c13ty
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
echo Toradora! Portable Translation Toolkit Stage 1 by SH4FS0c13ty
echo Stage 1 will extract resource.dat and first.dat files with DatWorker.exe.
echo.
SET dir=%~dp0
set /p start=Start stage 1 (y/n)? 
if /i "%start%" NEQ "y" exit
echo Copying files ...
copy %dir%\dat-files\resource.dat %dir%\DatWorker\
copy %dir%\dat-files\first.dat  %dir%\DatWorker\
echo Extracting .dat files with DatWorker ...
cd DatWorker\
%dir%\DatWorker\DatWorker.exe %dir%\DatWorker\first.dat
%dir%\DatWorker\DatWorker.exe %dir%\DatWorker\resource.dat
cd ..
bash -c "chmod +x stage2.sh"
echo Done!
set /p start=Launch stage 2 (y/n)? 
if /i "%start%" EQU "y" bash -c "./stage2.sh"
pause
