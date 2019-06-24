tenoritool
This is free software. You may redistribute copies of it under the terms of
the MIT License <http://www.opensource.org/licenses/mit-license.php>.
  - Based on Giacomo Stelluti Scala's cptree program, Version 1.1 (http://cptree.codeplex.com/).
  - Includes Giacomo Stelluti Scala's Command Line Library, Version 1.5 (http://commandline.codeplex.com/).
  - Includes a code fragment from Banshee, Version 1.4.1 (http://banshee-project.org/).




General Info:
This tool is designed to extract from archives in GPDA (Guyzware's Packed Data Archive) format.
These files are found in Toradora P! on PlayStation Portable (ULJS-00186) and carry the *.dat
file extension.

This tool was build upon open-source package CPTreeCopy by Giacomo Stelluti Scala, available at:
<http://cptree.codeplex.com/>, licensed under the terms of the MIT License.


Known bugs:
- Listing may be useless when name collision occurs. Shall be fixed some time later.


Build:
You can build using Visual C# 2005 Express Edition (C# 2.0).
NAnt scripts are provided but not up-to-date (i.e. they probably won't work).
Dependencies are nunit.framework.dll and Mono.Posix.dll - both included in lib subdirectory.
A precompiled executable against .NET Framework version 2.0.50727 is provided in the src/bin directory
(use at your own risk).

Unit Tests:
-

Dependencies:
This program uses a patched version of Command Line Parser Library 1.5 (libcmdline-1.5.9.1-stable-src.zip)
available under the MIT License.

Project Home: http://commandline.codeplex.com/
Release 1.5.9.1: http://www.codeplex.com/commandline/Release/ProjectReleases.aspx?ReleaseId=22107
Also contains portions from Banshee 1.4.1 (http://banshee-project.org/) for setting the process in *nix OS
to something different from 'mono'.

Windows User:
Although Mono.Posix.dll is needed for build process you may not redistribute it in a deployment
environment. (For *nix users is already installed in the GAC).

Framework Compatibility:
  MS .NET Framework Version 2.0+
  Mono 2.0 Profile+

Licence:
  MIT License
  http://www.opensource.org/licenses/mit-license.php

Usage Examples:
  Help, copyright and license info:
    C:\> tenoritool --help
  List archive content verbosely:
    C:\> tenoritool --list="" -v archive.dat
  Extract archive content verbosely in a subdirectory "extract":
    C:\> tenoritool --list="" -v -x -d extract archive.dat

Comments, bugs and other:
  Somewhere on the VisualNews Gemot.
