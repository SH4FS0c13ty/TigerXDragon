![TigerXDragon](https://i.ibb.co/XtP134w/Tiger-XDragon.jpg)
# TigerXDragon
Toradora! Portable Translation Toolkit<br />
Created by SH4FS0c13ty
<br />

### Requirements

 - Windows 10
 - .Net Framework 3.5
 - .Net Framework 4.5
 - Windows Subsystem for Linux with translate-toolkit, python3 and openjdk-8-jdk


This toolkit contains 5 stages decribed below:
 - Stage 0: Script to install everything that is required by the toolkit (the requirements above). [RUN AS ADMIN]
 - Stage 1: Script to extract .dat files with the DatWorker program.
 - Stage 2: Script to extract the .dat files with Gpda.jar and build the strings.
 - Stage 3: Script to generate the seekmap.dat file and repack everything.
 - Stage 4: Script to delete every non-needed file in the toolkit's directory.
<br />



### Instructions

Do NOT copy the TigerXDragon toolkit in a path that contains spaces (you can use "C:\TigerXDragon\" for example).<br />
Download the Toradora! Portable ISO from https://mega.nz/#!WkIBTa5S!gGzJt54CXdte0yodkR4UzRvsEQhUqyeqw3MUruXC7mw.<br />
Copy the "Toradora_Portable[EN].iso" file to the "ISO/" folder.<br />
Extract ISO files with UMDGen into "ISO\/Extracted/".<br />
Copy "ISO/Extracted/NoLabel/PSP_GAME/USRDIR/resource.dat" and "ISO/Extracted/NoLabel/PSP_GAME/USRDIR/first.dat" to "dat-files/" folder.<br />
Download the strings (*.po files) from https://toradora.oneskyapp.com/.<br />
Copy the *.po files in "po-files/" folder.<br />
Start the stage you want, if you never used this toolkit before, follow the numbers.<br />
<br />
To repack the ISO file, copy "export/resource.dat" and "export/first.dat" to "ISO/Extracted/NoLabel/PSP_GAME/USRDIR/" folder.<br />
Start UMDGen and click on the "New" button.<br />
Go on the right blank space, right click and go to "Add > Existing Folder...".<br />
Select the "ISO/Extracted/NoLabel/PSP_GAME/" folder and click on the "OK" button.<br />
Go on the right blank space, right click and go to "Add > Existing File(s)...".<br />
Select the "ISO/Extracted/NoLabel/PSP_GAME/UMD_DATA.bin" file and click on the "OK" button.<br />
Click on the "Save" button, select "Uncompressed (*.iso)" and export the ISO file wherever you want.<br />
<br />



### Execution time

These measures are related to the material, below are the 
specifications of the machine used to test the toolkit:<br />

 - System: Windows 10 Pro 1903 Build 18362.175
 - Processor: Intel Core i5-6300U CPU @ 2.40GHz 2.50GHz
 - RAM: 8 Go DDR4
 - Network speed: 90 Mb/s Down
<br />

Stage 0: [4min 30s] [20min 50s]<br />
Stage 1: [22min 40s]<br />
Stage 2: [18min 30s]<br />
Stage 3: [15min 50s]<br />
Stage 4: [2min 15s]<br />
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

Author: SH4FS0c13ty (Twitter: @SH4FS0c13ty, Discord: Le Panda Roux#1562, Github: https://github.com/SH4FS0c13ty)<br />
Thanks to xyz for the "taiga-aisaka" project (https://github.com/xyzz/taiga-aisaka).<br />
Thanks to marcussacana for the "DatWorker" project (https://github.com/marcussacana/Specific-Games/tree/master/Stuff's).<br />
Thanks to 123321mario for his help (https://twitter.com/123321mario).<br />
Thanks to the french translation team of Toradora! Portable (https://toradora.oneskyapp.com/).<br />
