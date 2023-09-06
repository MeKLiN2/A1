@echo off
echo.
echo                ********** Meklin Method Watermark Destroyer ***************
echo                *********** This uses both github projects:   **************
echo                ********* https://github.com/nefarius/Injector *************
echo                *** https://github.com/jdpatdiscord/NoDesktopWM_Revamped ***
echo                ------------------------------------------------------------
echo                I would read info before you choose to use third party tools
echo.
:choice
set /P c=Do you want to remove the windows watermark with Nefarius' injector(command line exe) and NoDesktopWM_Revamped(.dll injected into explorer.exe)?[Y/N]?
if /I "%c%" EQU "Y" goto :somewhere
if /I "%c%" EQU "N" goto :somewhere_else
goto :choice
:somewhere
%systemdrive%\windows\system32\injector.exe --process-name -n explorer.exe -i %systemdrive%\windows\system32\desktop.dll
pause
exit
:somewhere_else
echo.
echo.
echo.
echo.
echo.
echo.
echo thats ok with me
pause