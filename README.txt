
████████╗██╗ ██████╗ ███████╗██████╗     ██╗  ██╗    ██████╗ ██████╗  █████╗  ██████╗  ██████╗ ███╗   ██╗
╚══██╔══╝██║██╔════╝ ██╔════╝██╔══██╗    ╚██╗██╔╝    ██╔══██╗██╔══██╗██╔══██╗██╔════╝ ██╔═══██╗████╗  ██║
   ██║   ██║██║  ███╗█████╗  ██████╔╝     ╚███╔╝     ██║  ██║██████╔╝███████║██║  ███╗██║   ██║██╔██╗ ██║
   ██║   ██║██║   ██║██╔══╝  ██╔══██╗     ██╔██╗     ██║  ██║██╔══██╗██╔══██║██║   ██║██║   ██║██║╚██╗██║
   ██║   ██║╚██████╔╝███████╗██║  ██║    ██╔╝ ██╗    ██████╔╝██║  ██║██║  ██║╚██████╔╝╚██████╔╝██║ ╚████║
   ╚═╝   ╚═╝ ╚═════╝ ╚══════╝╚═╝  ╚═╝    ╚═╝  ╚═╝    ╚═════╝ ╚═╝  ╚═╝╚═╝  ╚═╝ ╚═════╝  ╚═════╝ ╚═╝  ╚═══╝

  _______                  _                 _       _____           _        _     _      
 |__   __|                | |               | |     |  __ \         | |      | |   | |     
    | | ___  _ __ __ _  __| | ___  _ __ __ _| |     | |__) |__  _ __| |_ __ _| |__ | | ___ 
    | |/ _ \| '__/ _` |/ _` |/ _ \| '__/ _` | |     |  ___/ _ \| '__| __/ _` | '_ \| |/ _ \
    | | (_) | | | (_| | (_| | (_) | | | (_| |_|     | |  | (_) | |  | || (_| | |_) | |  __/
    |_|\___/|_|  \__,_|\__,_|\___/|_|  \__,_(_)     |_|   \___/|_|   \__\__,_|_.__/|_|\___|
  
      _______                  _       _   _               _______          _ _    _ _
     |__   __|                | |     | | (_)             |__   __|        | | |  (_) |    
        | |_ __ __ _ _ __  ___| | __ _| |_ _  ___  _ __      | | ___   ___ | | | ___| |_   
        | | '__/ _` | '_ \/ __| |/ _` | __| |/ _ \| '_ \     | |/ _ \ / _ \| | |/ / | __|  
        | | | | (_| | | | \__ \ | (_| | |_| | (_) | | | |    | | (_) | (_) | |   <| | |_   
        |_|_|  \__,_|_| |_|___/_|\__,_|\__|_|\___/|_| |_|    |_|\___/ \___/|_|_|\_\_|\__|  


Created by SH4FS0c13ty


Requirements
============

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




Instructions
============

Do NOT copy the TigerXDragon toolkit in a path that contains spaces (you can use "C:\TigerXDragon\" for example).
Download the Toradora! Portable ISO from https://mega.nz/#!WkIBTa5S!gGzJt54CXdte0yodkR4UzRvsEQhUqyeqw3MUruXC7mw.
Copy the "Toradora_Portable[EN].iso" file to the "ISO/" folder.
Extract ISO files with UMDGen into "ISO/Extracted/".
Copy "ISO/Extracted/NoLabel/PSP_GAME/USRDIR/resource.dat" and "ISO/Extracted/NoLabel/PSP_GAME/USRDIR/first.dat" to "dat-files/" folder.
Download the strings (*.po files) from https://traduction.toradora-fr.tk/.
Copy the .po files in "po-files/" folder.
Start the stage you want, if you never used this toolkit before, follow the numbers.


To repack the ISO file, copy the "export/PSP_GAME/" folder to the "ISO/Extracted/NoLabel/" folder.
Start UMDGen and click on the "New" button.
Go on the right blank space, right click and go to "Add > Existing Folder...".
Select the "ISO/Extracted/NoLabel/PSP_GAME/" folder and click on the "OK" button.
Go on the right blank space, right click and go to "Add > Existing File(s)...".
Select the "ISO/Extracted/NoLabel/PSP_GAME/UMD_DATA.bin" file and click on the "OK" button.
Click on the "Save" button, select "Uncompressed (*.iso)" and export the ISO file wherever you want.




Execution time
==============

These measures are related to the material, below are the
specifications of the machine used to test the toolkit:

 - System: Windows 10 Pro 1903 Build 18362.175
 - Processor: Intel Core i5-6300U CPU @ 2.40GHz 2.50GHz
 - RAM: 8 Go DDR4
 - Network speed: 90 Mb/s Down


Stage 0: [3min] [7min]
Stage 1: [19min 20s]
Stage 2: [5min 10s]
Stage 3: [12min 50s]
Stage 4: [20s]




License
=======

MIT License (https://opensource.org/licenses/mit-license.php)

Copyright (c) 2019 SH4FS0c13ty

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and
associated documentation files (the "Software"), to deal in the Software without restriction,
including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense,
and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so,
subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial
portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT
LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.
IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY,
WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE
SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.




Credits
=======

Check the project website to know more about it: https://toradora-fr.tk
Author: SH4FS0c13ty (Twitter: @SH4FS0c13ty, Discord: Le Panda Roux#1562, Github: https://github.com/SH4FS0c13ty)

Thanks to xyz for the "taiga-aisaka" project (https://github.com/xyzz/taiga-aisaka).
Thanks to marcussacana for the "DatWorker" project (https://github.com/marcussacana/Specific-Games/tree/master/Stuff's).
Thanks to 123321mario for his help (http://123321mario.tk/).
Thanks to the french translation team of Toradora! Portable (https://traduction.toradora-fr.tk/).