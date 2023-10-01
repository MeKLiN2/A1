
#                *******************************************************
#                 MeKLiN Method A1 DeSTRoYeR KIT FOR WINDOWS v3.1
#                *******************************************************
For elite PC gamers who need a boost in performance. See your computer's true power level unrestricted by under-the-hood windows apps that silently eat CPU and RAM.
Lowers input lag in FPS games drastically, reduces cpu to zero, breaks every moving thing windows has under its hood forever.

## Run A1.bat with NSUDO.exe or open !A1KITNSUDO.bat

WARNING: Breaks start menu, makes windows take a minute to start up. Breaks copy and paste, you must drag items between two open folders only to copy or move if it's on the same drive. Makes every explorer folder opened to another window unless you use the navigation bar. Breaks installing drivers, make sure you install all your drivers before using this script. Breaks modern ui settings. Make sure you do those before you use this script. Use SSSERV.BAT to disable services by group to isolate any problems caused. It will run on its own at the end anyway. I have had very minimal issues using these scripts with https://archive.org/details/micro-10-pro-22-h-2-19045.3086_202306

If anyone has a clean windows 22H2 image, I would like to see it for my work and to ensure my work is done on a safe iso. Scripts run best after W10privacy, Blackbird, and Oosu10, which are included. Breaks webcams but not microphones. Breaks most shortcuts to basic rundll windows settings, but they can be opened with batch files which I've included. Shortcuts can be created with right click drag and copypaste occasionally works when between folders of two different drives. Can't do internet changes or ipconfig really so make sure your net is set right before you do this. Odin included for disk imaging, and Nirsoft RegistryChangesView (Rcv.exe) to backup registry as most changes are done there. Scripts are fixed to run individually. if something broke and you want to isolate the problem. By individually I mean that if something is disabled or renamed, anything that depended on it is disabled in the same script.

Netprofm and Netman service can be turned back on though there is not much in there but displays the network connection and advanced adapter properties doesn't show anything, so you must install your lan card and hold down windows key + R, and type ncpa.cpl in the run prompt where you can remove everything except microsoft network and tcpip4. In the properties of tcpip4 and I can't regedit script this for you, you will find an advanced options button on the first tab shown for the advanced settings tcpip4. disable netbios and WINS to finish closing all of your network ports, enabling True Gaming Mode. Windows control panel type shortcuts are in the SHORT folder or you can google rundll 32 shortcut list and make them yourself. Most often breaks the taskbar from showing what apps are open but you can still alt tab. Sometimes it comes back.

DPC latency tweaks are necessary which are outlined in .png files in the folder. I learned this from https://www.youtube.com/watch?v=x0BN608Sd3Q

Set all your file assoications and install all your drivers and do all your modern ui windows settings before doing this as well as any changers to ncpa.cpl.

2.0 http://i.imgur.com/yEARsTt.png

3.0 https://i.imgur.com/39eWvwd.png

3.1 https://i.imgur.com/8qwoo0k.png https://i.imgur.com/iUWTCB7.png

back up your rpcepmap.dll and rpcss.dll ... if you are not running the newest windows 10 there is a chance your computer wont start up when the script replaces those with hex edited versions to close port 135. you can do this yourself by searching the .dll's you have with a hex editor and search for unicode string: 135 ... you will find hex bytes 33 00 33 00 33 00, or some sort, and when you click one of the 33's, it will show the corresponding unicode number on the right, in the ascii part, click the RIGHT three of ALL the "33"s shown highlighted from a search of unicode: 135 ... change the RIGHT three of each set of 33 to 0, so you will have 30 00 30 00 30 00, or something like it, and it will show EXACTLY "0.0.0" instead of "1.3.5" on the right once you change the hex bytes on the left.

                         [Lovingly hand-edited by MeKLiN Method  tinychat.com/cancers
                         [Sept. 16 2023: MEANT TO BE RUN ON C:\   youtube.com/indicator27
                         [       with NSUDO.EXE                  youtube.com/genjiaeneid
                         [       github.com/meklin2              archive.org/details/@meklin
                         [       github.com/meklin2/A1           facebook.com/DrMeklin
