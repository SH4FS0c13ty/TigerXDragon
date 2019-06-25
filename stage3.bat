@echo off
title Toradora! Portable Translation Toolkit Stage 3 by SH4FS0c13ty
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
echo Toradora! Portable Translation Toolkit Stage 3 by SH4FS0c13ty
echo Stage 3 will generate the seekmap.dat file and repack everything.
echo.
SET dir=%~dp0
set /p start=Start stage 3 (y/n)? 
if /i "%start%" NEQ "y" exit
echo Repacking resource.dat file ...
cd DatWorker
%dir%\DatWorker\DatWorker.exe %dir%\DatWorker\resource.dat-LstOrder.lst
cd ..
echo Generating seekmap.dat ...
copy %dir%\DatWorker\resource.dat %dir%\DatWorker\Workspace\RES.DAT
copy %dir%\DatWorker\first\seekmap.dat %dir%\DatWorker\Workspace\seekmap.txt.gz
cd DatWorker\Workspace
%dir%\DatWorker\Workspace\gzip.exe -d -q %dir%\DatWorker\Workspace\seekmap.txt.gz
%dir%\DatWorker\Workspace\modseekmap.exe
%dir%\DatWorker\Workspace\gzip.exe -n9 %dir%\DatWorker\Workspace\seekmap.new
rename %dir%\DatWorker\Workspace\seekmap.new.gz seekmap.dat
copy %dir%\DatWorker\Workspace\seekmap.dat %dir%\DatWorker\first\seekmap.dat
cd ..
%dir%\DatWorker\DatWorker.exe %dir%\DatWorker\first.dat-LstOrder.lst
cd ..
copy %dir%\DatWorker\resource.dat %dir%\export\resource.dat
copy %dir%\DatWorker\first.dat %dir%\export\first.dat
echo Files exported in export\ folder.
echo Done!
pause