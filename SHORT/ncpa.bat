sc config netprofm start= demand
sc config netman start= demand
sc start netprofm
sc start netman
netsh interface teredo set state disabled
netsh interface ipv6 6to4 set state state=disabled
netsh interface ipv6 isatap set state state=disabled
c:\windows\syswow64\rundll32.exe shell32.dll,Control_RunDLL ncpa.cpl
echo you have 120 seconds to fix your network
timeout /t 10 /nobreak
sc stop netprofm
sc stop netman
sc config netprofm start= disabled
sc config man start= disabled
reg add hklm\system\controlset001\services\netprofm /v "Start" /t REG_dword /d 4 /f
reg add hklm\system\controlset001\services\netman /v "Start" /t REG_dword /d 4 /f