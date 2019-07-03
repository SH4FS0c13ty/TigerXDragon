@echo off
bash -c "./stage2.sh"
set /p start=Launch stage 3 (y/n)? 
if /i "%start%" EQU "y" stage3.bat
pause