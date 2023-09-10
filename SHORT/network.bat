sc config netprofm start= demand
sc config netman start= demand
sc start netprofm
sc start netman
c:\windows\syswow64\rundll32.exe shell32.dll,Control_RunDLL ncpa.cpl
echo useless net services enabled and started. you have 120 seconds to fix your network, useless net services will be stopped then disabled.
timeout /t 120 /nobreak
sc stop netprofm
sc stop netman
sc config netprofm start= disabled
sc config man start= disabled
reg add hklm\system\controlset001\services\netprofm /v "Start" /t REG_dword /d 4 /f
reg add hklm\system\controlset001\services\netman /v "Start" /t REG_dword /d 4 /f
pause