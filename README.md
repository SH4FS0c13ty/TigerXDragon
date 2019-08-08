![TigerXDragon](https://i.ibb.co/XtP134w/Tiger-XDragon.jpg)
# TigerXDragon
Toradora! Portable Translation Toolkit<br />
Created by SH4FS0c13ty
<br />
<br />

### Requirements

 - Windows 10
 - .Net Framework 3.5
 - .Net Framework 4.5
 - Windows Subsystem for Linux with translate-toolkit and sed


This toolkit contains 5 stages decribed below:
 - Stage 0: Script to install everything that is required by the toolkit (the requirements above). [RUN AS ADMIN]
 - Stage 1: Script to extract .dat files with the DatWorker program.
 - Stage 2: Script to extract .obj files, build the strings and repack .obj files.
 - Stage 3: Script to generate the seekmap.dat file and repack everything.
 - Stage 4: Script to delete every non-needed file in the toolkit's directory.
<br />



### Instructions

Do NOT copy the TigerXDragon toolkit in a path that contains spaces (you can use "C:\TigerXDragon\" for example).<br />
Download the Toradora! Portable ISO EN version (find the JP version and apply the EN patch from http://toradora.xyz.is/).<br />
Copy the "Toradora_Portable[EN].iso" file to the "ISO/" folder.<br />
Extract ISO files with UMDGen into "ISO\/Extracted/".<br />
Copy "ISO/Extracted/NoLabel/PSP_GAME/USRDIR/resource.dat" and "ISO/Extracted/NoLabel/PSP_GAME/USRDIR/first.dat" to "dat-files/" folder.<br />
Download the strings (.po files) from https://traduction.toradora-fr.tk/.<br />
Extract the archive in the "po-files/" folder.<br />
Execute "PO_Renamer/PO_Renamer.bat" to organize the .po files in order to use them with TigerXDragon.<br />
Start the stage you want, if you never used this toolkit before, follow the numbers.<br />
<br />
To repack the ISO file, copy the "export/PSP_GAME/" folder to the "ISO/Extracted/NoLabel/" folder.<br />
Start UMDGen and click on the "New" button.<br />
Go on the right blank space, right click and go to "Add > Existing Folder...".<br />
Select the "ISO/Extracted/NoLabel/PSP_GAME/" folder and click on the "OK" button.<br />
Go on the right blank space, right click and go to "Add > Existing File(s)...".<br />
Select the "ISO/Extracted/NoLabel/PSP_GAME/UMD_DATA.bin" file and click on the "OK" button.<br />
Click on the "Save" button, select "Uncompressed (\*.iso)" and export the ISO file wherever you want.<br />
<br />



### Execution time

These measures are related to the material, below are the 
specifications of the machine used to test the toolkit:<br />

 - System: Windows 10 Pro 1903 Build 18362.175
 - Processor: Intel Core i5-6300U CPU @ 2.40GHz 2.50GHz
 - RAM: 8 Go DDR4
 - Network speed: 90 Mb/s Down
<br />

Stage 0: [3min] [7min]<br />
Stage 1: [19min 20s]<br />
Stage 2: [5min 10s]<br />
Stage 3: [12min 50s]<br />
Stage 4: [20s]<br />
<br />



### License

MIT License (https://opensource.org/licenses/mit-license.php)<br />

Copyright (c) 2019 SH4FS0c13ty<br />

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and<br />
associated documentation files (the "Software"), to deal in the Software without restriction,<br />
including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense,<br />
and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so,<br />
subject to the following conditions:<br />

The above copyright notice and this permission notice shall be included in all copies or substantial<br />
portions of the Software.<br />

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT<br />
LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.<br />
IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY,<br />
WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE<br />
SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.<br />
<br />



### Credits

Check the project website to know more about it: https://toradora-fr.tk<br />
Author: SH4FS0c13ty (Twitter: @SH4FS0c13ty, Discord: SH4FS0c13ty#1562, Github: https://github.com/SH4FS0c13ty)<br />
<br />
Thanks to xyz for the "taiga-aisaka" project (https://github.com/xyzz/taiga-aisaka).<br />
Thanks to marcussacana for the "DatWorker" project (https://github.com/marcussacana/Specific-Games/tree/master/Stuff's).<br />
Thanks to 123321mario for his help (http://123321mario.tk/).<br />
Thanks to the french translation team of Toradora! Portable (https://traduction.toradora-fr.tk/).<br />
