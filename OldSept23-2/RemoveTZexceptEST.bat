SET SCRIPTPATH=%~DP0
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Time Zones" /f
REG IMPORT %SCRIPTPATH%\timezones.reg
exit
