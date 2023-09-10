@echo off
echo                *********************************************************************
echo                ********** MeKLiN Method A1 DeSTRoYeR KIT FOR WINDOWS v2.0 **********
echo                *********************************************************************
SET SCRIPTPATH=%~DP0
ECHO LOCATION OF .BAT FILE: %SCRIPTPATH%
ECHO YOUR NAME IS:
echo %userprofile%
C:\WINDOWS\SYSTEM32\WHOAMI.EXE /USER
:choice
echo.
echo HOLD DOWN ALT + C TO CLOSE POPUPS FAST ONCE THE SCRIPT STARTS!
echo Only hold it down for a second or so at a time. Be gentle. This is the main DOS window and it will ask you to abort
echo script. Press N then enter, it will keep going. At the end of this once all the batch files run it will say it has
echo ran them all. If you don't get to the end message then you closed this window early. You can use ProcessHacker to
echo close all the OpenWith.exe windows. It doesn't matter if u set permissions, if this is ran with NSudo. If there is
echo a problem booting Windows, run the script again in the windows installer dvd/usb install boot screen. Boot to the
echo Windows install dvd/usb .iso and open a DOS prompt with Shift+F10 and navigate to where you have A1.BAT. Good luck.
echo.
set /P c=Are you sure you want to delete a lot of stuff? press key [Y/N] then press ENTER 
if /I "%c%" EQU "Y" goto :somewhere
if /I "%c%" EQU "N" goto :somewhere_else
goto :choice
:somewhere
DEL /F /Q C:\WINDOWS\SYSTEM32\DRIVERS\ETC\HOSTS
COPY %SCRIPTPATH%\HOSTS.TXT C:\WINDOWS\SYSTEM32\DRIVERS\ETC\HOSTS /Y
copy %SCRIPTPATH%\quake.ahk %systemdrive%\windows\system32
copy %SCRIPTPATH%\autohotkeyu64.exe %systemdrive%\windows\system32
copy %SCRIPTPATH%\MouseSC_x64.exe %systemdrive%\windows\system32
%SCRIPTPATH%\mousesc_x64.exe /PointerPrecision:Disable
%SCRIPTPATH%\mousesc_x64.exe /speed:4
%SCRIPTPATH%\mousesc_x64.exe /VerticalScroll:3
%SCRIPTPATH%\mousesc_x64.exe /HorizontalScroll:3
%SCRIPTPATH%\mousesc_x64.exe /PrimaryButton:Left
ren %systemdrive%windows\system32\taskmgr.exe taskmgr2.exe
copy %SCRIPTPATH%\processhacker.exe %systemdrive%\windows\system32\taskmgr.exe
copy %SCRIPTPATH%\processhacker.sig %systemdrive%\windows\system32
copy %SCRIPTPATH%\kprocesshacker.sys %systemdrive%\windows\system32
copy %SCRIPTPATH%\setacl.exe %systemdrive%\windows\system32
copy %SCRIPTPATH%\DEVCON.EXE %systemdrive%\windows\system32
REG IMPORT %SCRIPTPATH%\SearchKit.reg
REG IMPORT %SCRIPTPATH%\SearchKitSmall.reg
REG IMPORT %SCRIPTPATH%\0000000INDEXKIT.reg
REG IMPORT %SCRIPTPATH%\00KitOnlyGUID.reg
REG IMPORT %SCRIPTPATH%\007700EVENTSYSTEMKIT.reg
REG IMPORT %SCRIPTPATH%\A1FULLKIT.REG
REG IMPORT %SCRIPTPATH%\KITSPP.REG
REG IMPORT %SCRIPTPATH%\FIX3.REG
START /WAIT %SCRIPTPATH%\servbasic.bat
START /WAIT %SCRIPTPATH%\wmic_virus.bat
START /WAIT %SCRIPTPATH%\unlodctr.bat
START /WAIT %SCRIPTPATH%\lodctr.bat
START /WAIT %SCRIPTPATH%\logman.bat
START /WAIT %SCRIPTPATH%\netsh.bat
START /WAIT %SCRIPTPATH%\WININETKIT.BAT
START /WAIT %SCRIPTPATH%\B2NEW.BAT
START /WAIT %SCRIPTPATH%\B3NEW.BAT
START /WAIT %SCRIPTPATH%\0000000LORDKIT1APP1.BAT
START /WAIT %SCRIPTPATH%\0000000LORDKIT1APP2.BAT
START /WAIT %SCRIPTPATH%\0000000LORDKIT1EDGE.BAT
START /WAIT %SCRIPTPATH%\0000000LORDKIT1FINAL.BAT
START /WAIT %SCRIPTPATH%\0000000LORDKIT1IE.BAT
START /WAIT %SCRIPTPATH%\0000000LORDKIT1IE2.BAT
START /WAIT %SCRIPTPATH%\0000000LORDKIT1IE3.BAT
START /WAIT %SCRIPTPATH%\0000000LORDKIT1IE4.BAT
START /WAIT %SCRIPTPATH%\0000000LORDKIT1INI1.BAT
START /WAIT %SCRIPTPATH%\0000000LORDKIT1INI2.BAT
START /WAIT %SCRIPTPATH%\0000000LORDKIT1REG.BAT
START /WAIT %SCRIPTPATH%\0000000LORDKIT1REG2.BAT
START /WAIT %SCRIPTPATH%\0000000LORDKIT1REN.BAT
START /WAIT %SCRIPTPATH%\0000000LORDKIT1SERV.BAT
START /WAIT %SCRIPTPATH%\0000000LORDKIT1TASK.BAT
START /WAIT %SCRIPTPATH%\etl_oldOneNEW.bat
START /WAIT %SCRIPTPATH%\etl3.bat
START /WAIT %SCRIPTPATH%\etl2023.bat
START /WAIT %SCRIPTPATH%\EVENTKIT.bat
START /WAIT %SCRIPTPATH%\hello.bat
START /WAIT %SCRIPTPATH%\TASKTHUMB.BAT
START /WAIT %SCRIPTPATH%\etl.bat
START /WAIT %SCRIPTPATH%\RENN.BAT
START /WAIT %SCRIPTPATH%\RENAME.BAT
START /WAIT %SCRIPTPATH%\FIX9.BAT
echo.
echo *** If you are reading this all the scripts ran successfully. ***
echo END
echo.
echo                         [Lovingly hand-edited by MeKLiN Method]  tinychat.com/cancers
echo                         [Sept. 6 2023: MEANT TO BE RUN ON C:\ ]  youtube.com/indicator27
echo                         [       with NSUDO.EXE                ]  youtube.com/genjiaeneid
echo                         [       github.com/meklin2            ]  archive.org/details/@meklin
echo                         [       github.com/meklin2/A1         ]  facebook.com/DrMeklin
timeout /t 60 /nobreak
pause
:somewhere_else
echo BYE!
pause
