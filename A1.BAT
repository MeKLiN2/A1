@ECHO OFF
echo                *********************************************************************
echo                ********** MeKLiN Method A1 DeSTRoYeR KIT FOR WINDOWS v3.1 **********
echo                *********************************************************************
SET SCRIPTPATH=%~DP0
ECHO LOCATION OF .BAT FILE: %SCRIPTPATH%
ECHO YOUR NAME IS:
echo %userprofile%
C:\WINDOWS\SYSTEM32\WHOAMI.EXE /USER
echo.
echo.
echo *** Press [4] Run all third-party apps. *** (Blackbird will not run after A1 Kit finishes, do it now!)
echo.
echo *** Press [9] to run MACHINE.BAT which can only be done before the script runs. No driver installs work after this.
echo.
echo *** Machine.inf must be modified, copied, and installed to fully remove some drivers ***
echo.
echo [1] Run W10Privacy
echo [2] Run Blackbird
echo [3] Run OOSU10
echo [4] Run All
echo [5] Blackbird -app
echo [6] Skip third-party apps (not reccomended)
echo [9] Machine.inf FIX (Must be done now or never!)
:choice2
echo.
set /P c=Press a key then press Enter: 
if /I "%c%" EQU "1" goto :w10priv
if /I "%c%" EQU "2" goto :blackbird
if /I "%c%" EQU "3" goto :oosu
if /I "%c%" EQU "4" goto :all
if /I "%c%" EQU "5" goto :app
if /I "%c%" EQU "6" goto :choice
if /I "%c%" EQU "9" goto :machine
goto :choice2
:w10priv
START /WAIT %SCRIPTPATH%\w10privacy\w10privacy.exe
goto :choice2
:blackbird
START /WAIT %SCRIPTPATH%\blackbird.exe -nohost
goto :choice2
:oosu
START /WAIT %SCRIPTPATH%\oosu.exe %SCRIPTPATH%\oosu.cfg /nosrp
goto :choice2
:all
START /WAIT %SCRIPTPATH%\w10privacy\w10privacy.exe
START /WAIT %SCRIPTPATH%\blackbird.exe -nohost
START /WAIT %SCRIPTPATH%\oosu.exe %SCRIPTPATH%\oosu.cfg /nosrp
START /WAIT %SCRIPTPATH%\blackbird.exe -app
goto :choice
:app
START /WAIT %SCRIPTPATH%\blackbird.exe -app
goto :choice2
:choice
echo.
echo HOLD DOWN ALT + C OR ESCAPE TO CLOSE THE NUL POPUPS FAST ONCE THE SCRIPT STARTS!
echo Only hold it down for a second or so at a time. Be gentle. This is the main DOS window and it might say "Terminate
echo Batch job (Y/N)?" Press N then enter, and A1.BAT will continue. At the end of this file, once all the batch files
echo have run it will say ALL TASKS COMPLETED. If you don't get to the end message then you closed this window early.
echo You can use ProcessHacker to close all the OpenWith.exe windows if they appear. If this is ran with NSudo. It doesn't
echo matter if you set permissions for registry or files. If there is a problem booting Windows, run the script again in
echo the Windows installer dvd/usb install boot screen. Boot to the Windows install dvd/usb .iso and open a DOS prompt
echo by pressing Shift+F10 and navigate to where you have A1.BAT. Good luck.
echo.
set /P c=Are you sure you want to delete a lot of stuff? press key [Y/N] then press ENTER 
if /I "%c%" EQU "Y" goto :somewhere
if /I "%c%" EQU "N" goto :somewhere_else
goto :choice
:somewhere
REG DELETE HKEY_LOCAL_MACHINE\SOFTWARE\AMDLOG /F
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Winlogon" /v ParseAutoexec /f
DEL /F /Q C:\WINDOWS\SYSTEM32\DRIVERS\ETC\HOSTS
COPY %SCRIPTPATH%\HOSTS.TXT C:\WINDOWS\SYSTEM32\DRIVERS\ETC\HOSTS /Y
copy %SCRIPTPATH%\quake.ahk %systemdrive%\windows\system32
copy %SCRIPTPATH%\autohotkeyu64.exe %systemdrive%\windows\system32
copy %SCRIPTPATH%\MouseSC_x64.exe %systemdrive%\windows\system32
copy %SCRIPTPATH%\nsudo.exe %systemdrive%\windows\system32
copy %SCRIPTPATH%\inject.bat %systemdrive%\windows\system32
copy %SCRIPTPATH%\inject2.bat %systemdrive%\windows\system32
copy %SCRIPTPATH%\desktop.dll %systemdrive%\windows\system32
copy %SCRIPTPATH%\injector.exe %systemdrive%\windows\system32
%SCRIPTPATH%\mousesc_x64.exe /PointerPrecision:Disable
%SCRIPTPATH%\mousesc_x64.exe /speed:4
%SCRIPTPATH%\mousesc_x64.exe /VerticalScroll:3
%SCRIPTPATH%\mousesc_x64.exe /HorizontalScroll:3
%SCRIPTPATH%\mousesc_x64.exe /PrimaryButton:Left
ren %systemdrive%\windows\system32\taskmgr.exe taskmgr2.exe
copy %SCRIPTPATH%\processhacker.exe %systemdrive%\windows\system32\taskmgr.exe
copy %SCRIPTPATH%\processhacker.sig %systemdrive%\windows\system32
copy %SCRIPTPATH%\kprocesshacker.sys %systemdrive%\windows\system32
copy %SCRIPTPATH%\setacl.exe %systemdrive%\windows\system32
copy %SCRIPTPATH%\powersettingsexplorePromoteDemoteUncheck100ac.png %systemdrive%\windows\system32
copy %SCRIPTPATH%\RemoveFreesyncCRU.png %systemdrive%\windows\system32
copy %SCRIPTPATH%\DEVCON.EXE %systemdrive%\windows\system32
copy %SCRIPTPATH%\fcv.exe %systemdrive%\windows\system32
copy %SCRIPTPATH%\sharpkeys.exe %systemdrive%\windows\system32
copy %SCRIPTPATH%\rcv.EXE %systemdrive%\windows\system32
copy %SCRIPTPATH%\cru.EXE %systemdrive%\windows\system32
copy %SCRIPTPATH%\notcpucores64.EXE %systemdrive%\windows\system32
copy %SCRIPTPATH%\7Z\7Z.EXE %systemdrive%\windows\system32
copy %SCRIPTPATH%\7Z\7Z.SFX %systemdrive%\windows\system32
copy %SCRIPTPATH%\7Z\7ZCON.SFX %systemdrive%\windows\system32
copy %SCRIPTPATH%\7Z\7ZFM.EXE %systemdrive%\windows\system32
copy %SCRIPTPATH%\7Z\7ZG.EXE %systemdrive%\windows\system32
copy %SCRIPTPATH%\7Z\7-ZIP.DLL %systemdrive%\windows\system32
copy %SCRIPTPATH%\7Z\7-ZIP32.DLL %systemdrive%\windows\system32
copy %SCRIPTPATH%\EVE.EXE %systemdrive%\windows\system32
copy %SCRIPTPATH%\ODIN.EXE %systemdrive%\windows\system32
copy %SCRIPTPATH%\DPCLAT.EXE %systemdrive%\windows\system32
copy %SCRIPTPATH%\REGEDIT2.EXE %systemdrive%\windows\system32
copy %SCRIPTPATH%\RADEONMOD.EXE %systemdrive%\windows\system32
copy %SCRIPTPATH%\CLEANMGR.BAT %systemdrive%\windows\system32
copy %SCRIPTPATH%\CLEANMGR2.BAT %systemdrive%\windows\system32
copy %SCRIPTPATH%\POWERCFG3.BAT %systemdrive%\windows\system32
copy %SCRIPTPATH%\R.BAT %systemdrive%\windows\system32
copy %SCRIPTPATH%\1920x1080.bat %systemdrive%\windows\system32
copy %SCRIPTPATH%\144hz.bat %systemdrive%\windows\system32
copy %SCRIPTPATH%\PowerSettingsExplorer.exe %systemdrive%\windows\system32
copy %SCRIPTPATH%\PowerSettingsExplorer.exe.config %systemdrive%\windows\system32
copy %SCRIPTPATH%\windows-xp-bliss-4k-lu-1920x1080.jpg %systemdrive%\windows\system32
copy %SCRIPTPATH%\notcpucorespower2.png %systemdrive%\windows\system32
copy %SCRIPTPATH%\TimerResolution.exe %systemdrive%\windows\system32
copy %SCRIPTPATH%\SOUNDS.BAT %systemdrive%\windows\system32
copy %SCRIPTPATH%\reset-all.EXE %systemdrive%\windows\system32
copy %SCRIPTPATH%\restart.EXE %systemdrive%\windows\system32
copy %SCRIPTPATH%\restart64.EXE %systemdrive%\windows\system32
ROBOCOPY %SCRIPTPATH%\corepark3 %systemdrive%\windows\system32 /E /COPYALL /XJ /R:1 /W:1
ROBOCOPY %SCRIPTPATH%\SHORT %HOMEPATH%\DESKTOP\SHORT /E /COPYALL /XJ /R:1 /W:1
ROBOCOPY %SCRIPTPATH%\LNK %HOMEPATH%\DESKTOP /E /COPYALL /XJ /R:1 /W:1
REG IMPORT %SCRIPTPATH%\SearchKit.reg
REG IMPORT %SCRIPTPATH%\SearchKitSmall.reg
REG IMPORT %SCRIPTPATH%\0000000INDEXKIT.reg
REG IMPORT %SCRIPTPATH%\00KitOnlyGUID.reg
REG IMPORT %SCRIPTPATH%\007700EVENTSYSTEMKIT.reg
REG IMPORT %SCRIPTPATH%\A1FULLKIT.REG
REG IMPORT %SCRIPTPATH%\KITSPP.REG
REG IMPORT %SCRIPTPATH%\PERFTEMP2.REG
REG IMPORT %SCRIPTPATH%\FIX3.REG
REG IMPORT %SCRIPTPATH%\AhkCfgFix.reg
START /WAIT %SCRIPTPATH%\servbasic.bat
START /WAIT %SCRIPTPATH%\wmic_virus.bat
START /WAIT %SCRIPTPATH%\WMIETL.BAT
START /WAIT %SCRIPTPATH%\unlodctr.bat
START /WAIT %SCRIPTPATH%\lodctr.bat
START /WAIT %SCRIPTPATH%\logman.bat
START /WAIT %SCRIPTPATH%\netsh.bat
START /WAIT %SCRIPTPATH%\WININETKIT.BAT
START /WAIT %SCRIPTPATH%\B2NEW.BAT
START /WAIT %SCRIPTPATH%\B3NEW.BAT
START /WAIT %SCRIPTPATH%\MOUSE.BAT
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
START /WAIT %SCRIPTPATH%\LOGFILES.BAT
START /WAIT %SCRIPTPATH%\DEVCONDISABLE.BAT
cls
echo.
echo.
echo.
echo *** If you are reading this all the scripts ran successfully. ***
echo *** Now running final services disabler .BAT file! ***
echo *** After that, you can become the Administrator if you want to. ***
echo.
echo                         [Lovingly hand-edited by MeKLiN Method]  tinychat.com/cancers
echo                         [Sept. 16 2023: MEANT TO BE RUN ON C:\ ]  youtube.com/indicator27
echo                         [       with NSUDO.EXE                ]  youtube.com/genjiaeneid
echo                         [       github.com/meklin2            ]  archive.org/details/@meklin
echo                         [       github.com/meklin2/A1         ]  facebook.com/DrMeklin
echo.
echo Remember to disable the service groups one at a time, restart, and make sure your game works before proceeding.
echo Just open SSSERV.BAT to get back to the disabler, best ran in NSUDO, which !SSSERV.BAT will open with automatically.
echo If you choose to become Admin you will be on the built-in account after reboot with the PC name 'SYS'
pause
START /WAIT %SCRIPTPATH%\SSSERV.BAT
echo SSSERV.BAT COMPLETED
echo ALL TASKS COMPLETED
echo lag loading profile on windows boot? press Ctrl Alt Del
goto :somewhere_else
:machine
START /WAIT %SCRIPTPATH%\MACHINE.BAT
echo MACHINE.BAT COMPLETED
goto :choice2
:somewhere_else
echo BYE!
pause