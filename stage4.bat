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
cd data\
del /S /Q /F *.*
cd ..\DatWorker\resource\
del /S /Q /F *.*
cd ..\first\
del /S /Q /F *.*
cd ..
rmdir /S /Q first\
rmdir /S /Q resource\
del /S /Q /F *.dat
del /S /Q /F *.lst
del /S /Q /F seekmap*.*
cd ..\out\
del /S /Q /F *.*
rmdir /S /Q first\
rmdir /S /Q resource\
cd ..\source\
del /S /Q /F *.*
rmdir /S /Q first\
rmdir /S /Q resource\
echo Done!
pause