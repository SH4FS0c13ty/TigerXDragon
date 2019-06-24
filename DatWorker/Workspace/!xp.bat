@echo off
cd Workspace
SET EXTRACT=%CD%\src\bin\Release\tenoritool.exe
SET MASK=%1
if "%1"=="" SET MASK=*.dat


for %%f in (%MASK%) do "%EXTRACT%" -l "" -v -x -d "%%~nf" "%%f"