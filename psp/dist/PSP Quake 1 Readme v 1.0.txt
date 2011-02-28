--------------------------
Quake 1 for PSP v 1.0

Juraj Styk 		
10th Nov 2007 

Introduction
------------

This is a port of ID Software's Quake 1 to the PSP. 
Based on PSP Quake port by Peter Mackay and Chris Swindle. 
source code released under GNU GPL License. 
Compiled and linked with PSPDev Environment for Win32.
MAD audio library used for music playback

Links
-----
	Quake 1 for PSP v 1.0 install files and source code:
		http://jurajstyk.host.sk/download.htm	
	
	PSP Quake source code:
		http://sourceforge.net/projects/psp-quake/
		https://psp-quake.svn.sourceforge.net/svnroot/psp-quake/
	
	PSPDev Environment for Win32:		
		http://xorloser.com/	

	Water transparency patches and tools:
		http://www.atomicgamer.com/directory.php?id=3138

Features
--------

Working:
- Music playback trough MP3 implemented with MAD audio library (can be switched on/off from options menu)
- Software and Hardware rendering.
- Single player game 
- Sound
- Save/Load
- Console commands
- Command line params (through 'quake.cmdline' file)
- Multiple screen resolutions in software rendering (trough command line params)
- User made maps loading (from console or command line params)
- User made mods loading (through command line params)
- Demo recording and playback (from console)
- On Screen Keyboard 

Known issues:
- Some mods or maps might not work due to memory constrains or might not work correctly
- timerefresh command disabled in hardware rendering (stability issue)
- Some maps require raising 'r_maxsurfs' and 'r_maxedges' to render correctly in SW client
  (can be done from command line or console)	

This game is for PSP with firmware versions custom firmwares 
(should work on fw 1.5 but it was not tested on fw 1.5).
Developed and tested on PSP with firmware version '3.40 OE'.
For running mods you will need files from full version of Quake

Four different packages are provided
	1. PSP_Quake1_HW_KM.zip
		- Quake client using hardware rendering compiled in kernel mode
		- Display resolution used : 480x272
		- Default CPU clock is 222 MHz (can be raised to 333 Mhz from commandline)
		- Memory usage: 19 MBytes total (14 MBytes used for quake heap)
		- Faster than software client 
		- Smaller quake heap means worse mod compatibility then software client 
		- Kernel plugins like 'JoySens' wont work 
		- Transparent water in maps that support water transparency
			
	2. PSP_Quake1_HW_UM.zip
		- Quake client using hardware rendering compiled in user mode
		- Display resolution used : 480x272
		- Default CPU clock is 222 MHz (can be raised to 333 Mhz from commandline)
		- Memory usage: 18 MBytes total (13 MBytes used for Quake heap)
		- Faster than software client 
		- Smaller quake heap means worse mod compatibility
		- Transparent water in maps that support water transparency
		
	3. PSP_Quake1_SW_KM.zip
		- Quake client using software rendering compiled in kernel mode
		- Display resolution used : configurable (from command line) in range from 320x200 to 480x272 
		  (default is 320x200 stretched to 480x272)
		- CPU clock is 333 MHz 
		- Memory usage: 19 MBytes total (17 MBytes used for Quake heap)
		- Kernel plugins like 'JoySens' wont work 
		
	4. PSP_Quake1_SW_UM.zip
		- Quake client using software rendering compiled in user mode
		- Display resolution used : configurable (from commandline) in range from 320x200 to 480x272 
		  (default is 320x200 stretched to 480x272)
		- CPU clock is 333 MHz 
		- Memory usage: 18 MBytes total (16 MBytes used for Quake heap)

Installation
------------

Installing PSP_Quake1_HW_KM:

	1. Unzip the package PSP_Quake1_HW_KM
	2. Copy the PSP_Quake1_HW_KM and PSP_Quake1_HW_KM% folders to the PSP/GAME150 folder on your PSP.
 	3. Copy the ID1 folder from the shareware or full version of Quake to inside your PSP/GAME/PSP_Quake1_HW_KM folder.
	4. Create a file named quake.cmdline and put any command line params you wish to use there


Installing PSP_Quake1_SW_KM:

	1. Unzip the package PSP_Quake1_SW_KM
	2. Copy the PSP_Quake1_SW_KM and PSP_Quake1_SW_KM% folders to the PSP/GAME150 folder on your PSP.   
	3. Copy the ID1 folder from the shareware or full version of Quake to inside your PSP/GAME/PSP_Quake1_SW_KM folder.
	4. Create a file named quake.cmdline and put any command line params you wish to use there

Installing PSP_Quake1_HW_UM:

	1. Unzip the package PSP_Quake1_HW_UM
	2. Copy the PSP_Quake1_HW_UM folder to the PSP/GAME folder on your PSP.
 	3. Copy the ID1 folder from the shareware or full version of Quake to inside your PSP/GAME/PSP_Quake1_HW_UM folder.
	4. Create a file named quake.cmdline and put any command line params you wish to use there

Installing PSP_Quake1_SW_UM:

	1. Unzip the package PSP_Quake1_SW_UM
	2. Copy the PSP_Quake1_SW_UM folder to the PSP/GAME folder on your PSP.
 	3. Copy the ID1 folder from the shareware or full version of Quake to inside your PSP/GAME/PSP_Quake1_SW_UM folder.
	4. Create a file named quake.cmdline and put any command line params you wish to use there


If you want to use music playback in Quake 1:
	1. Create a subdirectory named MP3 in the same directory where is ID1 directory
	2. Put files named 01.mp3, 02.mp2, 03.mp3 and so on into this directory 
	  (any mp3 should work / tested with mp3 with constant bitrate of 96 and 192 kbps 
	  and sampling rate of 22khz and 44khz)


Using mods/data discs:
	1. Copy directory with mod files into the same directory where is ID1 directory
	2. Add command '-game modname' into quake.cmdline file where modname in name directory which contains mod files
	3. Optionally add command '+map mapname' into quake.cmdline file where mapname in name of map to start 
	
Using custom maps:
	1. Go to ID1 directory and create directory named maps there 
	2. Put any map you wish to use into this directory (map files end with .bsp extension)
	3. Add command '+map mapname' into quake.cmdline
	4. Alternatively you can load a map from quake console with 'map mapname' command

Water transparency:
	Quake client using hardware rendering can render transparent water however only on maps 
	that are compiled with water transparency option. Maps compiled without this option (like original quake maps) 
        must be reprocessed to make this feature work correctly.  For this you will need to apply 'vis' and 'bsp2prt' utility
	on each map.  First you need to extract map files from pak file ( with PackExplorer or QuArK editor ) . Then apply
	first 'bsp2prt' and then 'vis' utility on map. After that use PackExplorer to copy updated map back into pak file.
	
	 'bsp2prt' and 'vis' are command line tools so run them from command line window or create batch file which will contain
	 these two line for each map you wish to process ( e1m1 map in this case) :
		 bsp2prt.exe e1m1.bsp
		 vis.exe e1m1.bsp

	There is patch available for original quake maps as well as some user made maps that will add water transparency without the 
	need to reprocess the map.
	
	Patches and tools mentioned above can be downloaded from here for example:
		http://www.atomicgamer.com/directory.php?id=3138

Tested mods and maps
--------------------

Tested data discs
	- Dissolution of Eternity Data disc [Rogue]: works fine

Tested user created mods 
	- Frogbot bot: works fine with SW client but is unstable with HW client 
	- DMSP mod: works 
	- Prydon Gate mod: works
	- Operation: Urth Majik mod: works
	- The Cassandra Calamity mod: works 

Tested user created maps
	- Contract Revoked: works
	- Moonlight Assault: works
	- The Terracotta Terror: works with SW client (but not with HW client)
	- Fall Cleaning: works (Require raising value of r_maxsurf and r_maxedges in SW client)
	     
(works means that it did not crash while testing but was not tested very much)	 
		
Command line options
--------------------
If you want to start Quake with some specific command line options create file named 
'quake.cmdline' in Quake directory (the same directory that contains eboot.pbp) and put 
command line option here 

examples: 
	-condebug -rwidth 368 -rheight 272 -swidth 368 -sheight 272 +map e1m1
	(will start Quake in map e1m1 with console logging and with render and screen resolution set both to 368 x 272)

	-cpu333	-gamedir ms0://Psp/Game150/PSP_Quake1_HW_KM
	(will start Quake with cpu clocked to 333 MHz and instruct it to look for quake files in directory ms0://Psp/Game150/PSP_Quake1_HW_KM )

	-game frogbot -zone 1024
	(will start Quake with FrogBot bot)
	
	-game rogue +map start
	(will start Quake with Dissolution of Eternity data disk)
	
Extra command line options
---------------------------------
-rwidth 
-rheight 
-swidth 
-sheight
-cpu333
-gamedir

'-rwidth' and '-rheight' set resolution at which is game rendered internally (SW rendering only)		
	( default: 320x200 )
'-swidth' and '-sheight' set resolution at which is internally rendered image displayed (SW rendering only)
	( default: 480x272 )

Any resolution between 320x200 and 480x272 will work as long both width and height is multiple of 8 

'-cpu333' will force game to run with cpu clocked to 333 Mhz (HW rendering only , SW rendering runs at 333 MHz by default)

'-gamedir' will make game to look for quake files in directory other then the current directory (both relative and absolute paths works)
	

Controls
--------

Regarding the buttons:

The PSP buttons are connected to the following keys during the game and when the menu 
is shown. You will need to go into options menu and configure the keys you want to use.

PSP      | Game key   | Menu key   | Default game function
---------+------------+------------+----------------------
SELECT   | ~          | ~          | Toggle console
START    | ESCAPE     | ESCAPE     | Show menu
LTRIGGER | LTRIGGER   |            |
RTRIGGER | RTRIGGER   |            |
UP       | UPARROW    | UPARROW    | Move forward
RIGHT    | RIGHTARROW | RIGHTARROW | Turn right
DOWN     | DOWNARROW  | DOWNARROW  | Move backwards
LEFT     | LEFTARROW  | LEFTARROW  | Turn left
TRIANGLE | TRIANGLE   |            |
CIRCLE   | CIRCLE     | ESCAPE     |
CROSS    | CROSS      | ENTER      |
SQUARE   | SQUARE     |            |

For example, when you press CROSS, game gets a CROSS key press, which you will 
need to set to your desired action in the game options screen.


On screen keyboard (OSK)
-----------------------
Available from console and from text input boxes in Multiplayer menus.

Press SQUARE to activate the OSK. 

Is OSK use arrows to select character and press CROSS to type it. To input 'space' 
move cursor to empty space (cursor will change to 'X') and press CROSS.  
Press TRIANGLE to erase last typed character. Press SQUARE to finish typing and 
return to console. Press CIRCLE to cancel input and return to console.

When back in console execute command by pressing CROSS.
Press RIGHT ARROW to use auto complete feature. L/R Buttons scroll console output up and down.
UP/DOWND ARROW browse trough previously entered console commands.


Thanks
------

Big thanks go out to:
- ID Software, for releasing Quake source code.
- Peter Mackay and Chris Swindle for creating PSP Quake port 
- Underbit Technologies for MAD audio library and John_K  for porting it to PSP.
- Makers of PSPDev Environment for Win32.