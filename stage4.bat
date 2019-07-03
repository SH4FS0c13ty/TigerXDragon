@echo off
title Toradora! Portable Translation Toolkit Stage 4 by SH4FS0c13ty
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
echo Toradora! Portable Translation Toolkit Stage 4 by SH4FS0c13ty
echo Stage 4 will remove non-needed files.
echo.
set /p start=Start stage 4 (y/n)? 
if /i "%start%" NEQ "y" exit
echo Deleting non-needed files ...
cd data\obj\
del /S /Q /F *.*
cd ..\strings\
del /S /Q /F *.*
cd ../..
rmdir /S /Q DatWorker\first\
rmdir /S /Q DatWorker\resource\
cd DatWorker\
del /S /Q /F *.dat
del /S /Q /F *.lst
del /S /Q /F seekmap*.*
cd ..\export\
del /S /Q /F *.*
rmdir /S /Q PSP_GAME\
echo Done!
pause