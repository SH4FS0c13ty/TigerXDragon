@echo off
bash -c "chmod +x po_extractor.sh"
bash -c "./po_extractor.sh"
set /p start=Open PO folder (y/n)? 
if /i "%start%" EQU "y" explorer.exe PO\
pause