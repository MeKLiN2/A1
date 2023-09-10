setacl -on "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\gpsvc" -ot reg -actn setowner -ownr "n:administrators" -rec yes
setacl -on "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\gpsvc" -ot reg -actn ace -ace "n:administrators;p:full" -rec yes
reg add hklm\system\controlset001\services\gpsvc /v "Start" /t REG_dword /d 4 /f
reg add hklm\system\currentcontrolset\services\gpsvc /v "Start" /t REG_dword /d 4 /f
