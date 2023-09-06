@echo off
echo               THE MEKLIN METHOD
echo               Your name is:
echo                %userprofile%
pause
echo                Get psyched...
echo             Fixing your computer...
timeout /t 5 /nobreak
@echo on
reg add "HKLM\System\ControlSet001\Control\WMI\AutoLogger\Globallogger" /v 
reg delete hklm\system\controlset001\control\criticaldevicedatabase\ROOT#RDP_MOU /f
reg delete hklm\system\controlset001\control\criticaldevicedatabase\ROOT#RDP_KBD /f
reg delete hklm\system\controlset001\control\criticaldevicedatabase\ROOT#RDPBUS /f
reg delete hklm\system\controlset001\control\criticaldevicedatabase\pnp0c14 /f
mkdir c:\windows\speech
takeown /f c:\windows\system32\catsrv.dll
icacls c:\windows\system32\catsrv.dll
ren c:\windows\system32\catsrv.dll catsrv.dl
takeown /f c:\windows\system32\catsrv.dll
icacls c:\windows\system32\catsrv.dll
ren c:\windows\system32\catsrv.dll catsrv.dl
takeown /f c:\windows\system32\catsrvut.dll
icacls c:\windows\system32\catsrvut.dll
ren c:\windows\system32\catsrvut.dll catsrvut.dl
takeown /f c:\windows\system32\catsrvps.dll
icacls c:\windows\system32\catsrvps.dll
ren c:\windows\system32\catsrvps.dll catsrvps.dl
takeown /f c:\windows\system32\clbcatq.dll
icacls c:\windows\system32\clbcatq.dll
ren c:\windows\system32\clbcatq.dll clbcatq.dl
takeown /f c:\windows\system32\comsvcs.dll
icacls c:\windows\system32\comsvcs.dll
ren c:\windows\system32\comsvcs.dll comsvcs.dl
takeown /f c:\windows\system32\pla.dll
icacls c:\windows\system32\pla.dll
ren c:\windows\system32\pla.dll pla.dl
takeown /f c:\windows\syswow64\imageres.dll
icacls c:\windows\syswow64\imageres.dll
ren c:\windows\syswow64\imageres.dll imageres.dl
del /f c:\windows\syswow64\imageres.dl /q
@echo off
echo SEARCH WBEM IN PROCESSHACKER AND CLOSE ALL HANDLES THEN CONTINUE
pause
@echo on
takeown /f c:\windows\system32\bestpractices /t
icacls c:\windows\system32\bestpractices /grant administrators:f /t
rd /s c:\windows\system32\bestpractices /q
ren c:\windows\system32\wbem wbem2
ren c:\windows\syswow64\wbem wbem2
sc triggerinfo aelookupsvc delete
sc triggerinfo lmhosts delete
sc triggerinfo appidsvc delete
sc triggerinfo efs delete
sc triggerinfo ktmrtm delete
sc triggerinfo bthserv delete
sc triggerinfo wpdbusenum delete
sc triggerinfo sensrsvc delete
sc triggerinfo w32time delete
sc triggerinfo policyagent delete
sc triggerinfo browser delete
sc triggerinfo webclient delete
sc triggerinfo tabletinputservice delete
sc triggerinfo storsvc delete
sc triggerinfo hidserv delete
sc triggerinfo bdesvc delete
sc triggerinfo wudfsvc delete
sc triggerinfo appidsvc delete
sc triggerinfo msdtc delete
sc triggerinfo clr_optimization_v2.0.50727_32 delete
sc triggerinfo bits delete
sc triggerinfo clr_optimization_v2.0.50727_64 delete
sc triggerinfo windefend delete
sc triggerinfo lmhosts delete
sc triggerinfo wersvc delete
sc triggerinfo dnscache delete
setacl -on "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\xmlprov" -ot reg -actn setowner -ownr "n:administrators" -rec yes
setacl -on "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\xmlprov" -ot reg -actn ace -ace "n:administrators;p:full" -rec yes
setacl -on "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\clfs" -ot reg -actn setowner -ownr "n:administrators" -rec yes
setacl -on "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\clfs" -ot reg -actn ace -ace "n:administrators;p:full" -rec yes
reg add hklm\system\controlset001\services\clfs /v "Start" /t REG_dword /d 4 /f
reg add hklm\system\controlset001\services\wmiacpi /v "Start" /t REG_dword /d 4 /f
reg add hklm\system\controlset001\services\schedule /v "Start" /t REG_dword /d 4 /f
reg add hklm\system\controlset001\services\srv /v "Start" /t REG_dword /d 4 /f
reg add hklm\system\controlset001\services\srv2 /v "Start" /t REG_dword /d 4 /f
reg add hklm\system\controlset001\services\agp440 /v "Start" /t REG_dword /d 4 /f
reg add hklm\system\controlset001\services\tcpip6 /v "Start" /t REG_dword /d 4 /f
reg add hklm\system\controlset001\services\mspclock /v "Start" /t REG_dword /d 4 /f
reg add hklm\system\controlset001\services\qwavedrv /v "Start" /t REG_dword /d 4 /f
reg add hklm\system\controlset001\services\hidbth /v "Start" /t REG_dword /d 4 /f
reg add hklm\system\controlset001\services\uliagpkx /v "Start" /t REG_dword /d 4 /f
reg add hklm\system\controlset001\services\bits /v "Start" /t REG_dword /d 4 /f
reg add hklm\system\controlset001\services\sstpsvc /v "Start" /t REG_dword /d 4 /f
reg add hklm\system\controlset001\services\wbengine /v "Start" /t REG_dword /d 4 /f
reg add hklm\system\controlset001\services\appidsvc /v "Start" /t REG_dword /d 4 /f
reg add hklm\system\controlset001\services\amdsbs /v "Start" /t REG_dword /d 4 /f
reg add hklm\system\controlset001\services\pcmcia /v "Start" /t REG_dword /d 4 /f
reg add hklm\system\controlset001\services\tssecsrv /v "Start" /t REG_dword /d 4 /f
reg add hklm\system\controlset001\services\appid /v "Start" /t REG_dword /d 4 /f
reg add hklm\system\controlset001\services\pla /v "Start" /t REG_dword /d 4 /f
reg add hklm\system\controlset001\services\ndisuio /v "Start" /t REG_dword /d 4 /f
reg add hklm\system\controlset001\services\bthmodem /v "Start" /t REG_dword /d 4 /f
reg add hklm\system\controlset001\services\fs_rec /v "Start" /t REG_dword /d 4 /f
reg add hklm\system\controlset001\services\fsdepends /v "Start" /t REG_dword /d 4 /f
reg add hklm\system\controlset001\services\hidir /v "Start" /t REG_dword /d 4 /f
reg add hklm\system\controlset001\services\arcsas /v "Start" /t REG_dword /d 4 /f
reg add hklm\system\controlset001\services\filetrace /v "Start" /t REG_dword /d 4 /f
reg add hklm\system\controlset001\services\http /v "Start" /t REG_dword /d 4 /f
reg add hklm\system\controlset001\services\threadorder /v "Start" /t REG_dword /d 4 /f
setacl -on "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\wdisystemhost" -ot reg -actn setowner -ownr "n:administrators" -rec yes
setacl -on "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\wdisystemhost" -ot reg -actn ace -ace "n:administrators;p:full" -rec yes
setacl -on "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\wdiservicehost" -ot reg -actn setowner -ownr "n:administrators" -rec yes
setacl -on "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\wdiservicehost" -ot reg -actn ace -ace "n:administrators;p:full" -rec yes
setacl -on "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\gpsvc" -ot reg -actn setowner -ownr "n:administrators" -rec yes
setacl -on "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\gpsvc" -ot reg -actn ace -ace "n:administrators;p:full" -rec yes
reg add hklm\system\controlset001\services\gpsvc /v "Start" /t REG_dword /d 4 /f
reg add hklm\system\controlset002\services\gpsvc /v "Start" /t REG_dword /d 4 /f
reg add hklm\system\currentcontrolset\services\gpsvc /v "Start" /t REG_dword /d 4 /f
reg add hklm\system\controlset001\services\wdisystemhost /v "Start" /t REG_dword /d 4 /f
reg add hklm\system\controlset001\services\wdiservicehost /v "Start" /t REG_dword /d 4 /f
reg add hklm\system\controlset001\services\sffdisk /v "Start" /t REG_dword /d 4 /f
reg add hklm\system\controlset001\services\vmusbus /v "Start" /t REG_dword /d 4 /f
reg add hklm\system\controlset001\services\b57nd60a /v "Start" /t REG_dword /d 4 /f
reg add hklm\system\controlset001\services\gagp30kx /v "Start" /t REG_dword /d 4 /f
reg add hklm\system\controlset001\services\vmbushid /v "Start" /t REG_dword /d 4 /f
reg add hklm\system\controlset001\services\lmhosts /v "Start" /t REG_dword /d 4 /f
reg add hklm\system\currentcontrolset\services\lmhosts /v "Start" /t REG_dword /d 4 /f
reg add hklm\system\controlset001\services\errdev /v "Start" /t REG_dword /d 4 /f
reg add hklm\system\controlset001\services\intelide /v "Start" /t REG_dword /d 4 /f
reg add hklm\system\controlset001\services\nfrd960 /v "Start" /t REG_dword /d 4 /f
reg add hklm\system\controlset001\services\vmusbhub /v "Start" /t REG_dword /d 4 /f
reg add hklm\system\controlset001\services\efs /v "Start" /t REG_dword /d 4 /f
reg add hklm\system\controlset001\services\ndiswan /v "Start" /t REG_dword /d 4 /f
reg add hklm\system\controlset001\services\adp94xx /v "Start" /t REG_dword /d 4 /f
reg add hklm\system\controlset001\services\irenum /v "Start" /t REG_dword /d 4 /f
reg add hklm\system\controlset001\services\termservice /v "Start" /t REG_dword /d 4 /f
reg add hklm\system\controlset001\services\elxstor /v "Start" /t REG_dword /d 4 /f
reg add hklm\system\controlset001\services\rdprdr /v "Start" /t REG_dword /d 4 /f
reg add hklm\system\controlset001\services\netprofm /v "Start" /t REG_dword /d 4 /f
reg add hklm\system\controlset001\services\netman /v "Start" /t REG_dword /d 4 /f
reg add hklm\system\controlset001\services\wpdbusenum /v "Start" /t REG_dword /d 4 /f
reg add hklm\system\controlset001\services\sensrsvc /v "Start" /t REG_dword /d 4 /f
reg add hklm\system\controlset001\services\wecsvc /v "Start" /t REG_dword /d 4 /f
reg add hklm\system\controlset001\services\wcncsvc /v "Start" /t REG_dword /d 4 /f
reg add hklm\system\controlset001\services\megasas /v "Start" /t REG_dword /d 4 /f
reg add hklm\system\controlset001\services\windefend /v "Start" /t REG_dword /d 4 /f
reg add hklm\system\controlset001\services\parport /v "Start" /t REG_dword /d 4 /f
reg add hklm\system\controlset001\services\mpio /v "Start" /t REG_dword /d 4 /f
reg add hklm\system\controlset001\services\pciide /v "Start" /t REG_dword /d 4 /f
reg add hklm\system\controlset001\services\vds /v "Start" /t REG_dword /d 4 /f
reg add hklm\system\controlset001\services\intelppm /v "Start" /t REG_dword /d 4 /f
reg add hklm\system\controlset001\services\processor /v "Start" /t REG_dword /d 4 /f
reg add hklm\system\controlset001\services\ssdpsrv /v "Start" /t REG_dword /d 4 /f
reg add hklm\system\controlset001\services\1394ohci /v "Start" /t REG_dword /d 4 /f
reg add hklm\system\controlset001\services\fdc /v "Start" /t REG_dword /d 4 /f
reg add hklm\system\controlset001\services\usbcir /v "Start" /t REG_dword /d 4 /f
reg add hklm\system\controlset001\services\keyiso /v "Start" /t REG_dword /d 4 /f
reg add hklm\system\controlset001\services\wd /v "Start" /t REG_dword /d 4 /f
reg add hklm\system\controlset001\services\wacompen /v "Start" /t REG_dword /d 4 /f
reg add hklm\system\controlset001\services\homegrouplistener /v "Start" /t REG_dword /d 4 /f
reg add hklm\system\controlset001\services\sisraid2 /v "Start" /t REG_dword /d 4 /f
reg add hklm\system\controlset001\services\serial /v "Start" /t REG_dword /d 4 /f
reg add hklm\system\controlset001\services\adpu320 /v "Start" /t REG_dword /d 4 /f
reg add hklm\system\controlset001\services\cmbatt /v "Start" /t REG_dword /d 4 /f
reg add hklm\system\controlset001\services\brserwdm /v "Start" /t REG_dword /d 4 /f
reg add hklm\system\controlset001\services\shellhwdetection /v "Start" /t REG_dword /d 4 /f
reg add hklm\system\controlset001\services\rdpcss /v "Start" /t REG_dword /d 4 /f
reg add hklm\system\controlset001\services\rdprefmp /v "Start" /t REG_dword /d 4 /f
reg add hklm\system\controlset001\services\sppsvc /v "Start" /t REG_dword /d 4 /f
reg add hklm\system\controlset001\services\clr_optimization_v4.0.30319_64 /v "Start" /t REG_dword /d 4 /f
reg add hklm\system\controlset001\services\clr_optimization_v4.0.30319_32 /v "Start" /t REG_dword /d 4 /f
reg add hklm\system\controlset001\services\wscsvc /v "Start" /t REG_dword /d 4 /f
reg add hklm\system\controlset001\services\sppolicysvc /v "Start" /t REG_dword /d 4 /f
reg add hklm\system\controlset001\services\wudpf /v "Start" /t REG_dword /d 4 /f
reg add hklm\system\controlset001\services\circlass /v "Start" /t REG_dword /d 4 /f
reg add hklm\system\controlset001\services\sfloffy /v "Start" /t REG_dword /d 4 /f
reg add hklm\system\controlset001\services\b06bdrv /v "Start" /t REG_dword /d 4 /f
reg add hklm\system\controlset001\services\lltdsvc /v "Start" /t REG_dword /d 4 /f
reg add hklm\system\controlset001\services\wlansvc /v "Start" /t REG_dword /d 4 /f
reg add hklm\system\controlset001\services\nativewifip /v "Start" /t REG_dword /d 4 /f
reg add hklm\system\controlset001\services\tbs /v "Start" /t REG_dword /d 4 /f
reg add hklm\system\controlset001\services\mrxsmb20 /v "Start" /t REG_dword /d 4 /f
reg add hklm\system\controlset001\services\mrxsmb10 /v "Start" /t REG_dword /d 4 /f
reg add hklm\system\controlset001\services\smb /v "Start" /t REG_dword /d 4 /f
reg add hklm\system\controlset001\services\mrxsmb /v "Start" /t REG_dword /d 4 /f
reg add hklm\system\controlset001\services\mrxdav /v "Start" /t REG_dword /d 4 /f
reg add hklm\system\controlset001\services\mpsdrv /v "Start" /t REG_dword /d 4 /f
reg add hklm\system\controlset001\services\p2psvc /v "Start" /t REG_dword /d 4 /f
reg add hklm\system\controlset001\services\brusbser /v "Start" /t REG_dword /d 4 /f
reg add hklm\system\controlset001\services\comsysapp /v "Start" /t REG_dword /d 4 /f
reg add hklm\system\controlset001\services\certpropsvc /v "Start" /t REG_dword /d 4 /f
reg add hklm\system\controlset001\services\wercplsupport /v "Start" /t REG_dword /d 4 /f
reg add hklm\system\controlset001\services\vaultsvc /v "Start" /t REG_dword /d 4 /f
reg add hklm\system\controlset001\services\rasauto /v "Start" /t REG_dword /d 4 /f
reg add hklm\system\controlset001\services\vhdmp /v "Start" /t REG_dword /d 4 /f
reg add hklm\system\controlset001\services\p2psvc /v "Start" /t REG_dword /d 4 /f
reg add hklm\system\controlset001\services\trustedinstaller /v "Start" /t REG_dword /d 4 /f
reg add hklm\system\controlset001\services\msiserver /v "Start" /t REG_dword /d 4 /f
reg add hklm\system\controlset001\services\rasacd /v "Start" /t REG_dword /d 4 /f
reg add hklm\system\controlset001\services\wanarp /v "Start" /t REG_dword /d 4 /f
reg add hklm\system\controlset001\services\brusbmdm /v "Start" /t REG_dword /d 4 /f
reg add hklm\system\controlset001\services\pnrpautoreg /v "Start" /t REG_dword /d 4 /f
reg add hklm\system\controlset001\services\brserid /v "Start" /t REG_dword /d 4 /f
reg add hklm\system\controlset001\services\msdsm /v "Start" /t REG_dword /d 4 /f
reg add hklm\system\controlset001\services\upnphost /v "Start" /t REG_dword /d 4 /f
reg add hklm\system\controlset001\services\uagp35 /v "Start" /t REG_dword /d 4 /f
reg add hklm\system\controlset001\services\sermouse /v "Start" /t REG_dword /d 4 /f
reg add hklm\system\controlset001\services\lsi_scsi /v "Start" /t REG_dword /d 4 /f
reg add hklm\system\controlset001\services\nv_agp /v "Start" /t REG_dword /d 4 /f
reg add hklm\system\controlset001\services\w32time /v "Start" /t REG_dword /d 4 /f
reg add hklm\system\controlset001\services\tapisrv /v "Start" /t REG_dword /d 4 /f
reg add hklm\system\controlset001\services\compositebus /v "Start" /t REG_dword /d 4 /f
reg add hklm\system\controlset001\services\vmbus /v "Start" /t REG_dword /d 4 /f
reg add hklm\system\controlset001\services\stexstor /v "Start" /t REG_dword /d 4 /f
reg add hklm\system\controlset001\services\axinstsv /v "Start" /t REG_dword /d 4 /f
reg add hklm\system\controlset001\services\ohci1394 /v "Start" /t REG_dword /d 4 /f
reg add hklm\system\controlset001\services\alg /v "Start" /t REG_dword /d 4 /f
reg add hklm\system\controlset001\services\rasman /v "Start" /t REG_dword /d 4 /f
reg add hklm\system\controlset001\services\ui0detect /v "Start" /t REG_dword /d 4 /f
reg add hklm\system\controlset001\services\rasagilevpn /v "Start" /t REG_dword /d 4 /f
reg add hklm\system\controlset001\services\ipnat /v "Start" /t REG_dword /d 4 /f
reg add hklm\system\controlset001\services\rassstp /v "Start" /t REG_dword /d 4 /f
reg add hklm\system\controlset001\services\flpydisk /v "Start" /t REG_dword /d 4 /f
reg add hklm\system\controlset001\services\ebdrv /v "Start" /t REG_dword /d 4 /f
reg add hklm\system\controlset001\services\fastfat /v "Start" /t REG_dword /d 4 /f
reg add hklm\system\controlset001\services\dot3svc /v "Start" /t REG_dword /d 4 /f
reg add hklm\system\controlset001\services\eaphost /v "Start" /t REG_dword /d 4 /f
reg add hklm\system\controlset001\services\drmkaud /v "Start" /t REG_dword /d 4 /f
reg add hklm\system\controlset001\services\compbatt /v "Start" /t REG_dword /d 4 /f
reg add hklm\system\controlset001\services\perfhost /v "Start" /t REG_dword /d 4 /f
reg add hklm\system\controlset001\services\nvraid /v "Start" /t REG_dword /d 4 /f
reg add hklm\system\controlset001\services\wcspluginservice /v "Start" /t REG_dword /d 4 /f
reg add hklm\system\controlset001\services\bthserv /v "Start" /t REG_dword /d 4 /f
reg add hklm\system\controlset001\services\wmiapsrv /v "Start" /t REG_dword /d 4 /f
reg add hklm\system\controlset001\services\bthserv /v "Start" /t REG_dword /d 4 /f
reg add hklm\system\controlset001\services\p2pimsvc /v "Start" /t REG_dword /d 4 /f
reg add hklm\system\controlset001\services\ql40xx /v "Start" /t REG_dword /d 4 /f
reg add hklm\system\controlset001\services\bowser /v "Start" /t REG_dword /d 4 /f
reg add hklm\system\controlset001\services\iirsp /v "Start" /t REG_dword /d 4 /f
reg add hklm\system\controlset001\services\scardsvr /v "Start" /t REG_dword /d 4 /f
reg add hklm\system\controlset001\services\ql2300 /v "Start" /t REG_dword /d 4 /f
reg add hklm\system\controlset001\services\wbiosrvc /v "Start" /t REG_dword /d 4 /f
reg add hklm\system\controlset001\services\appmgmt /v "Start" /t REG_dword /d 4 /f
reg add hklm\system\controlset001\services\policyagent /v "Start" /t REG_dword /d 4 /f
reg add hklm\system\controlset001\services\rdpwd /v "Start" /t REG_dword /d 4 /f
reg add hklm\system\controlset001\services\rdpbus /v "Start" /t REG_dword /d 4 /f
reg add hklm\system\controlset001\services\dmsvc /v "Start" /t REG_dword /d 4 /f
reg add hklm\system\controlset001\services\clr_optimization_v2.0.50727_32 /v "Start" /t REG_dword /d 4 /f
reg add hklm\system\controlset001\services\clr_optimization_v2.0.50727_64 /v "Start" /t REG_dword /d 4 /f
reg add hklm\system\controlset001\services\swprv /v "Start" /t REG_dword /d 4 /f
reg add hklm\system\controlset001\services\tabletinputservice /v "Start" /t REG_dword /d 4 /f
reg add hklm\system\controlset001\services\megasr /v "Start" /t REG_dword /d 4 /f
reg add hklm\system\controlset001\services\defragsvc /v "Start" /t REG_dword /d 4 /f
reg add hklm\system\controlset001\services\usbprint /v "Start" /t REG_dword /d 4 /f
reg add hklm\system\controlset001\services\wwansvc /v "Start" /t REG_dword /d 4 /f
reg add hklm\system\controlset001\services\ktmrm /v "Start" /t REG_dword /d 4 /f
reg add hklm\system\controlset001\services\snmptrap /v "Start" /t REG_dword /d 4 /f
reg add hklm\system\controlset001\services\sisraid4 /v "Start" /t REG_dword /d 4 /f
reg add hklm\system\controlset001\services\mskssrv /v "Start" /t REG_dword /d 4 /f
reg add hklm\system\controlset001\services\pnrpsvc /v "Start" /t REG_dword /d 4 /f
reg add hklm\system\controlset001\services\msiscsi /v "Start" /t REG_dword /d 4 /f
reg add hklm\system\controlset001\services\aelookupsvc /v "Start" /t REG_dword /d 4 /f
reg add hklm\system\controlset001\services\arc /v "Start" /t REG_dword /d 4 /f
reg add hklm\system\controlset001\services\storsvc /v "Start" /t REG_dword /d 4 /f
reg add hklm\system\controlset001\services\sdrsvc /v "Start" /t REG_dword /d 4 /f
reg add hklm\system\controlset001\services\sbp2port /v "Start" /t REG_dword /d 4 /f
reg add hklm\system\controlset001\services\usbstor /v "Start" /t REG_dword /d 4 /f
reg add hklm\system\controlset001\services\qwave /v "Start" /t REG_dword /d 4 /f
reg add hklm\system\controlset001\services\pnprpsvc /v "Start" /t REG_dword /d 4 /f
reg add hklm\system\controlset001\services\ipbusenum /v "Start" /t REG_dword /d 4 /f
reg add hklm\system\controlset001\services\iscsiprt /v "Start" /t REG_dword /d 4 /f
reg add hklm\system\controlset001\services\exfat /v "Start" /t REG_dword /d 4 /f
reg add hklm\system\controlset001\services\ipmidrv /v "Start" /t REG_dword /d 4 /f
reg add hklm\system\controlset001\services\s3cap /v "Start" /t REG_dword /d 4 /f
reg add hklm\system\controlset001\services\mspqm /v "Start" /t REG_dword /d 4 /f
reg add hklm\system\controlset001\services\umpass /v "Start" /t REG_dword /d 4 /f
reg add hklm\system\controlset001\services\mspqm /v "Start" /t REG_dword /d 4 /f
reg add hklm\system\controlset001\services\umpass /v "Start" /t REG_dword /d 4 /f
reg add hklm\system\controlset001\services\iastorv /v "Start" /t REG_dword /d 4 /f
reg add hklm\system\controlset001\services\adpahci /v "Start" /t REG_dword /d 4 /f
reg add hklm\system\controlset001\services\sffp_sd /v "Start" /t REG_dword /d 4 /f
reg add hklm\system\controlset001\services\hpsamd /v "Start" /t REG_dword /d 4 /f
reg add hklm\system\controlset001\services\hidserv /v "Start" /t REG_dword /d 4 /f
reg add hklm\system\controlset001\services\sppuinotify /v "Start" /t REG_dword /d 4 /f
reg add hklm\system\controlset001\services\fontcache3.0.0.0 /v "Start" /t REG_dword /d 4 /f
reg add hklm\system\controlset001\services\vss /v "Start" /t REG_dword /d 4 /f
reg add hklm\system\controlset001\services\netlogon /v "Start" /t REG_dword /d 4 /f
reg add hklm\system\controlset001\services\bdesvc /v "Start" /t REG_dword /d 4 /f
setacl -on "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\trkwks" -ot reg -actn setowner -ownr "n:administrators" -rec yes
setacl -on "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\trkwks" -ot reg -actn ace -ace "n:administrators;p:full" -rec yes
setacl -on "HKEY_LOCAL_MACHINE\SYSTEM\controlset001\Services\trkwks" -ot reg -actn setowner -ownr "n:administrators" -rec yes
setacl -on "HKEY_LOCAL_MACHINE\SYSTEM\controlset001\Services\trkwks" -ot reg -actn ace -ace "n:administrators;p:full" -rec yes
reg add hklm\system\controlset001\services\trkwks /v "Start" /t REG_dword /d 4 /f
reg add hklm\system\currentcontrolset\services\trkwks /v "Start" /t REG_dword /d 4 /f
reg add hklm\system\controlset001\services\vmusbbus /v "Start" /t REG_dword /d 4 /f
reg add hklm\system\controlset001\services\ndistapi /v "Start" /t REG_dword /d 4 /f
reg add hklm\system\controlset001\services\mpsdrv /v "Start" /t REG_dword /d 4 /f
reg add hklm\system\controlset001\services\rasppoe /v "Start" /t REG_dword /d 4 /f
reg add hklm\system\controlset001\services\scfilter /v "Start" /t REG_dword /d 4 /f
reg add hklm\system\controlset001\services\umbus /v "Start" /t REG_dword /d 4 /f
reg add hklm\system\controlset001\services\msdtc /v "Start" /t REG_dword /d 4 /f
reg add hklm\system\controlset001\services\hkmsvc /v "Start" /t REG_dword /d 4 /f
reg add hklm\system\controlset001\services\asyncmac /v "Start" /t REG_dword /d 4 /f
setacl -on "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\browser" -ot reg -actn setowner -ownr "n:administrators" -rec yes
setacl -on "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\browser" -ot reg -actn ace -ace "n:administrators;p:full" -rec yes
reg add hklm\system\controlset001\services\browser /v "Start" /t REG_dword /d 4 /f
reg add hklm\system\currentcontrolset\services\browser /v "Start" /t REG_dword /d 4 /f
setacl -on "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\msrpc" -ot reg -actn setowner -ownr "n:administrators" -rec yes
setacl -on "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\msrpc" -ot reg -actn ace -ace "n:administrators;p:full" -rec yes
reg add hklm\system\controlset001\services\msrpc /v "Start" /t REG_dword /d 4 /f
reg add hklm\system\controlset001\services\asyncmac /v "Start" /t REG_dword /d 4 /f
reg add hklm\system\controlset001\services\brfiltup /v "Start" /t REG_dword /d 4 /f
reg add hklm\system\controlset001\services\modem /v "Start" /t REG_dword /d 4 /f
reg add hklm\system\controlset001\services\sessionenv /v "Start" /t REG_dword /d 4 /f
reg add hklm\system\controlset001\services\mtconfig /v "Start" /t REG_dword /d 4 /f
reg add hklm\system\controlset001\services\aliide /v "Start" /t REG_dword /d 4 /f
reg add hklm\system\controlset001\services\protectedstorage /v "Start" /t REG_dword /d 4 /f
reg add hklm\system\controlset001\services\fontcache /v "Start" /t REG_dword /d 4 /f
reg add hklm\system\controlset001\services\wudfsvc /v "Start" /t REG_dword /d 4 /f
reg add hklm\system\controlset001\services\lsi_sas2 /v "Start" /t REG_dword /d 4 /f
reg add hklm\system\controlset001\services\cmdide /v "Start" /t REG_dword /d 4 /f
reg add hklm\system\controlset001\services\aspnet_State /v "Start" /t REG_dword /d 4 /f
reg add hklm\system\controlset001\services\seclogon /v "Start" /t REG_dword /d 4 /f
reg add hklm\system\controlset001\services\sffp_mmc /v "Start" /t REG_dword /d 4 /f
reg add hklm\system\controlset001\services\tdpipe /v "Start" /t REG_dword /d 4 /f
reg add hklm\system\controlset001\services\hidbatt /v "Start" /t REG_dword /d 4 /f
reg add hklm\system\controlset001\services\brfiltlo /v "Start" /t REG_dword /d 4 /f
reg add hklm\system\controlset001\services\vsmraid /v "Start" /t REG_dword /d 4 /f
reg add hklm\system\controlset001\services\idsvc /v "Start" /t REG_dword /d 4 /f
reg add hklm\system\controlset001\services\mstee /v "Start" /t REG_dword /d 4 /f
reg add hklm\system\controlset001\services\webclient /v "Start" /t REG_dword /d 4 /f
reg add hklm\system\controlset001\services\acppmi /v "Start" /t REG_dword /d 4 /f
reg add hklm\system\controlset001\services\viaide /v "Start" /t REG_dword /d 4 /f
reg add hklm\system\controlset001\services\tunnel /v "Start" /t REG_dword /d 4 /f
reg add hklm\system\controlset001\services\rdpdr /v "Start" /t REG_dword /d 4 /f
reg add hklm\system\controlset001\services\umrdpservice /v "Start" /t REG_dword /d 4 /f
reg add hklm\system\controlset001\services\rasl2tp /v "Start" /t REG_dword /d 4 /f
reg add hklm\system\controlset001\services\stisvc /v "Start" /t REG_dword /d 4 /f
reg add hklm\system\controlset001\services\pptpminipor /v "Start" /t REG_dword /d 4 /f
reg add hklm\system\controlset001\services\tdtcp /v "Start" /t REG_dword /d 4 /f
reg add hklm\system\controlset001\services\lsi_fc /v "Start" /t REG_dword /d 4 /f
reg add hklm\system\controlset001\services\mshidkmdf /v "Start" /t REG_dword /d 4 /f
reg add hklm\system\controlset001\services\wpcsvc /v "Start" /t REG_dword /d 4 /f
reg add hklm\system\controlset001\services\peerdistsvc /v "Start" /t REG_dword /d 4 /f
reg add hklm\system\controlset001\services\napagent /v "Start" /t REG_dword /d 4 /f
reg add hklm\system\controlset001\services\nvstor /v "Start" /t REG_dword /d 4 /f
reg add hklm\system\controlset001\services\ipfilterdriver /v "Start" /t REG_dword /d 4 /f
reg add hklm\system\controlset001\services\hcw85cir /v "Start" /t REG_dword /d 4 /f
reg add hklm\system\controlset001\services\winmgmt /v "Start" /t REG_dword /d 4 /f
reg add hklm\system\controlset001\services\cryptsvc /v "Start" /t REG_dword /d 4 /f
reg add hklm\system\controlset001\services\tcpipreg /v "Start" /t REG_dword /d 4 /f
reg add hklm\system\controlset001\services\lsi_sas /v "Start" /t REG_dword /d 4 /f
reg add hklm\system\controlset001\services\ndis_cap /v "Start" /t REG_dword /d 4 /f
reg add hklm\system\controlset001\services\sfloppy /v "Start" /t REG_dword /d 4 /f
reg add hklm\system\controlset001\services\wudfpf /v "Start" /t REG_dword /d 4 /f
reg add hklm\system\controlset001\services\pptpminiport /v "Start" /t REG_dword /d 4 /f
reg add hklm\system\controlset001\services\acpipmi /v "Start" /t REG_dword /d 4 /f
reg add hklm\system\controlset001\services\dmvsc /v "Start" /t REG_dword /d 4 /f
reg add hklm\system\controlset001\services\rdpcdd /v "Start" /t REG_dword /d 4 /f
reg add hklm\system\controlset001\services\raspppoe /v "Start" /t REG_dword /d 4 /f
reg add hklm\system\controlset001\services\ndproxy /v "Start" /t REG_dword /d 4 /f
reg add hklm\system\controlset001\services\scpolicysvc /v "Start" /t REG_dword /d 4 /f
reg add hklm\system\controlset001\services\ /v "Start" /t REG_dword /d 4 /f
reg add hklm\system\controlset001\services\ /v "Start" /t REG_dword /d 4 /f
reg add hklm\system\controlset001\services\ /v "Start" /t REG_dword /d 4 /f
reg add hklm\system\controlset001\services\ /v "Start" /t REG_dword /d 4 /f
reg add hklm\system\controlset001\services\ /v "Start" /t REG_dword /d 4 /f
reg add hklm\system\controlset001\services\ /v "Start" /t REG_dword /d 4 /f
reg delete hklm\system\controlset001\services\aelookupsvc /v triggerinfo /f
reg delete hklm\system\controlset001\services\lmhosts /v triggerinfo /f
reg delete hklm\system\currentcontrolset\services\lmhosts /v triggerinfo /f
reg delete hklm\system\controlset001\services\w32time\triggerinfo /f
reg delete hklm\system\controlset001\services\w32time\timeproviders /f
reg delete hklm\system\controlset001\services\w32time\config /f
reg delete hklm\system\controlset001\services\xmlprov\parameters\schemagroups\connection /f
reg delete hklm\system\controlset001\services\xmlprov\parameters\schemagroups\user /f
reg delete hklm\system\controlset001\services\policyagent\triggerinfo /f
reg delete hklm\system\controlset001\services\storsvc\triggerinfo /f
reg delete hklm\system\controlset001\services\tabletinputservice\triggerinfo /f
reg delete hklm\system\controlset001\services\wudfsvc\triggerinfo /f
reg delete hklm\system\controlset001\services\wpdbusenum\triggerinfo /f
reg delete hklm\system\controlset001\services\bthserv\triggerinfo /f
reg delete hklm\system\controlset001\services\hidserv\triggerinfo /f
reg delete hklm\system\controlset001\services\bdesvc\triggerinfo /f
reg delete hklm\system\controlset001\services\sensrsvc\triggerinfo /f
reg delete hklm\system\controlset001\services\ktmrm\triggerinfo /f
reg delete hklm\system\controlset001\services\webclient\triggerinfo /f
reg delete hklm\system\controlset001\services\efs\triggerinfo /f
reg delete hklm\system\controlset001\services\appidsvc\triggerinfo /f
reg delete hklm\system\controlset001\services\clr_optimization_v2.0.50727_64\triggerinfo /f
reg delete hklm\system\controlset001\services\clr_optimization_v2.0.50727_32\triggerinfo /f
reg delete hklm\system\controlset001\services\windefend\triggerinfo /f
reg delete hklm\system\controlset001\services\bits\triggerinfo /f
reg delete hklm\system\controlset001\services\msdtc\triggerinfo /f
reg delete hklm\system\controlset001\services\browser\triggerinfo /f
setacl -on "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\dfsc" -ot reg -actn setowner -ownr "n:administrators" -rec yes
setacl -on "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\dfsc" -ot reg -actn ace -ace "n:administrators;p:full" -rec yes
sc config lanmanserver start= disabled
sc config lanmanworkstation start= disabled
sc config fdrespub start= disabled
sc config fdphost start= disabled
sc config dnscache start= disabled
sc config ikeext start= disabled
sc config pcw start= disabled
sc config spldr start= disabled
sc config fileinfo start= disabled
sc config storvsc start= disabled
sc config clfs start= disabled
sc config termdd start= disabled
sc config csc start= disabled
sc config netbios start= disabled
sc config rdpencdd start= disabled
sc config discache start= disabled
sc config warnarp6 start= disabled
sc config rdbss start= disabled
sc config psched start= disabled
sc config bfe start= disabled
sc config luafv start= disabled
sc config mpssvc start= disabled
sc config lltdio start= disabled
sc config themes start= disabled
sc config cscservice start= disabled
sc config rspndr start= disabled
sc config schedule start= disabled
sc config sysmain start= disabled
sc config mmcss start= disabled
sc config spooler start= disabled
sc config secdrv start= disabled
sc config sens start= disabled
sc config eventlog start= disabled
sc config rpclocator start= disabled
sc config winrm start= disabled
sc config winhttpautoproxysvc start= disabled
sc config eventsystem start= disabled
sc config wuauserv start= disabled
sc config wanarpv6 start= disabled
sc config dfsc start= disabled
reg add hklm\system\controlset001\services\audiosrv /v "dependonservice" /t REG_MULTI_SZ /d AudioEndpointBuilder\0RpcSs /f
sc stop lanmanserver
sc stop lanmanworkstation
sc stop fdrespub
sc stop fdphost
sc stop dnscache
sc stop ikeext
sc stop pcw
sc stop spldr
sc stop fileinfo
sc stop storvsc
sc stop clfs
sc stop termdd
sc stop csc
sc stop netbios
sc stop rdpencdd
sc stop discache
sc stop warnarp6
sc stop rdbss
sc stop psched
sc stop bfe
sc stop luafv
sc stop mpssvc
sc stop lltdio
sc stop themes
sc stop cscservice
sc stop rspndr
sc stop schedule
sc stop sysmain
sc stop mmcss
sc stop spooler
sc stop secdrv
sc stop sens
sc stop eventlog
sc stop rpclocator
sc stop dfsc
sc stop rdprefmp
sc stop rdpcdd
sc stop wanarpv6
sc stop winhttpautoproxysvc
sc stop winrm
sc stop eventsystem
sc stop wuauserv
sc stop shellhwdetection
sc stop sppsvc
sc stop spooler
sc stop lmhosts
sc stop wscsvc
sc stop clr_optimization_v4.0.30319_64
sc stop clr_optimization_v4.0.30319_32
sc stop winrm
sc stop themes
sc stop wuauserv
sc stop winmgmt
sc stop hidserv
sc stop sysmain
sc stop cscservice
sc stop eventsystem
reg delete hklm\system\controlset001\services\windefend /v delayedautostart /f
reg delete hklm\system\controlset001\services\bits /v delayedautostart /f
reg delete hklm\system\controlset001\services\clr_optimization_v2.0.50727_64 /v delayedautostart /f
reg delete hklm\system\controlset001\services\clr_optimization_v2.0.50727_32 /v delayedautostart /f
reg delete hklm\system\controlset001\services\msdtc /v delayedautostart /f
reg delete hklm\system\controlset001\services\wscsvc /v delayedautostart /f
reg delete hklm\system\controlset001\services\clr_optimization_v4.0.30319_64 /v delayedautostart /f
reg delete hklm\system\controlset001\services\WinRM /v delayedautostart /f
reg delete hklm\system\controlset001\services\sppsvc /v delayedautostart /f
reg delete hklm\system\controlset001\services\wuauserv /v delayedautostart /f
reg delete hklm\system\controlset001\services\clr_optimization_v4.0.30319_32 /v delayedautostart /f
setacl -on "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\samss" -ot reg -actn setowner -ownr "n:administrators" -rec yes
setacl -on "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\dps" -ot reg -actn setowner -ownr "n:administrators" -rec yes
setacl -on "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\samss" -ot reg -actn ace -ace "n:administrators;p:full" -rec yes
setacl -on "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\dps" -ot reg -actn ace -ace "n:administrators;p:full" -rec yes
reg add hklm\system\currentcontrolset\services\samss /v start /t reg_dword /d 4 /f
reg add hklm\system\currentcontrolset\services\dps /v start /t reg_dword /d 4 /f
setacl -on "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\rpcepmap" -ot reg -actn setowner -ownr "n:administrators" -rec yes
setacl -on "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\rpcss" -ot reg -actn setowner -ownr "n:administrators" -rec yes
setacl -on "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\rpcepmap" -ot reg -actn setowner -ownr "n:administrators" -rec yes
setacl -on "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\rpcss" -ot reg -actn ace -ace "n:administrators;p:full" -rec yes
setacl -on "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\rpcepmap" -ot reg -actn ace -ace "n:administrators;p:full" -rec yes
setacl -on "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\rpceptmapper" -ot reg -actn ace -ace "n:administrators;p:full" -rec yes
reg add hklm\system\currentcontrolset\services\rpcss /v ListenOnInternet /t REG_SZ /d N /f
reg add hklm\system\currentcontrolset\services\rpceptmapper /v ListenOnInternet /t REG_SZ /d N /f
reg add hklm\system\currentcontrolset\services\rpcepmap /v ListenOnInternet /t REG_SZ /d N /f
takeown /f c:\windows\system32\slc.dll
icacls c:\windows\system32\slc.dll /grant administrators:f
takeown /f c:\windows\system32\winbrand.dll
icacls c:\windows\system32\winbrand.dll /grant administrators:f
takeown /f c:\windows\system32\sppuinotify.dll
icacls c:\windows\system32\sppuinotify.dll /grant administrators:f
ren c:\windows\system32\sppuinotify.dll sppuinotify.dl
takeown /f c:\windows\system32\onex.dll
icacls c:\windows\system32\onex.dll /grant administrators:f
ren c:\windows\system32\onex.dll onex.dl
takeown /f c:\windows\system32\ubpm.dll
icacls c:\windows\system32\ubpm.dll /grant administrators:f
ren c:\windows\system32\ubpm.dll ubpm.dl
takeown /f c:\windows\system32\rascfg.dll
icacls c:\windows\system32\rascfg.dll /grant administrators:f
ren c:\windows\system32\rascfg.dll rascfg.dl
takeown /f c:\windows\system32\winsync.dll
icacls c:\windows\system32\winsync.dll /grant administrators:f
ren c:\windows\system32\winsync.dll winsync.dl
takeown /f c:\windows\system32\WinSyncMetastore.dll
icacls c:\windows\system32\WinSyncMetastore.dll /grant administrators:f
ren c:\windows\system32\WinSyncMetastore.dll WinSyncMetastore.dl
takeown /f c:\windows\system32\WinSyncProviders.dll
icacls c:\windows\system32\WinSyncProviders.dll /grant administrators:f
ren c:\windows\system32\WinSyncProviders.dll WinSyncProviders.dl
takeown /f c:\windows\system32\sppuinotify.dll
icacls c:\windows\system32\sppuinotify.dll /grant administrators:f
ren c:\windows\system32\sppuinotify.dll sppuinotify.dl
takeown /f c:\windows\system32\sppuinotify.dll
icacls c:\windows\system32\sppuinotify.dll /grant administrators:f
ren c:\windows\system32\sppuinotify.dll sppuinotify.dl
takeown /f c:\windows\system32\sppuinotify.dll
icacls c:\windows\system32\sppuinotify.dll /grant administrators:f
ren c:\windows\system32\sppuinotify.dll sppuinotify.dl
attrib +r c:\windows\system32\logfiles
attrib +r c:\windows\system32\catroot2
takeown /f c:\windows\system32\rdbss.sys
icacls c:\windows\system32\drivers\rdbss.sys /grant administrators:f
ren c:\windows\system32\drivers\rdbss.sys rdbss.sy
takeown /f c:\windows\system32\drivers\rdpwd.sys
icacls c:\windows\system32\drivers\rdpwd.sys /grant administrators:f
ren c:\windows\system32\drivers\rdpwd.sys rdpwd.sy
takeown /f c:\windows\system32\drivers\rspndr.sys
icacls c:\windows\system32\drivers\rspndr.sys /grant administrators:f
ren c:\windows\system32\drivers\rspndr.sys rspndr.sy
takeown /f c:\windows\system32\mcupdate_AuthenticAMD.dll
icacls c:\windows\system32\mcupdate_AuthenticAMD.dll /grant administrators:f
ren c:\windows\system32\mcupdate_AuthenticAMD.dll mcupdate_AuthenticAMD.dl
takeown /f c:\windows\system32\mcupdate_GenuineIntel.dll
icacls c:\windows\system32\mcupdate_GenuineIntel.dll /grant administrators:f
ren c:\windows\system32\mcupdate_GenuineIntel.dll mcupdate_GenuineIntel.dl
reg delete hklm\system\controlset001\control\criticaldevicedatabase\LEGACY_STORFLT /f
setacl -on "hklm\system\controlset001\enum\root\LEGACY_STORFLT" -ot reg -actn setowner -ownr "n:administrators" -rec yes
setacl -on "hklm\system\controlset001\enum\root\LEGACY_STORFLT" -ot reg -actn ace -ace "n:administrators;p:full" -rec yes
reg delete hklm\system\controlset001\enum\root\LEGACY_STORFLT /f
setacl -on "hklm\system\controlset001\enum\root\srv" -ot reg -actn setowner -ownr "n:administrators" -rec yes
setacl -on "hklm\system\controlset001\enum\root\srv" -ot reg -actn ace -ace "n:administrators;p:full" -rec yes
reg delete hklm\system\controlset001\enum\root\srv /f
setacl -on "hklm\system\controlset001\enum\root\srv2" -ot reg -actn setowner -ownr "n:administrators" -rec yes
setacl -on "hklm\system\controlset001\enum\root\srv2" -ot reg -actn ace -ace "n:administrators;p:full" -rec yes
reg delete hklm\system\controlset001\enum\root\srv2 /f
setacl -on "hklm\system\controlset001\enum\root\MS_AGILEVPNMINIPORT" -ot reg -actn setowner -ownr "n:administrators" -rec yes
setacl -on "hklm\system\controlset001\enum\root\MS_AGILEVPNMINIPORT" -ot reg -actn ace -ace "n:administrators;p:full" -rec yes
reg delete hklm\system\controlset001\enum\root\MS_AGILEVPNMINIPORT /f
setacl -on "hklm\system\controlset001\enum\root\MS_L2TPMINIPORT" -ot reg -actn setowner -ownr "n:administrators" -rec yes
setacl -on "hklm\system\controlset001\enum\root\MS_L2TPMINIPORT" -ot reg -actn ace -ace "n:administrators;p:full" -rec yes
reg delete hklm\system\controlset001\enum\root\MS_L2TPMINIPORT /f
setacl -on "hklm\system\controlset001\enum\root\MS_NDISWANBH" -ot reg -actn setowner -ownr "n:administrators" -rec yes
setacl -on "hklm\system\controlset001\enum\root\MS_NDISWANBH" -ot reg -actn ace -ace "n:administrators;p:full" -rec yes
reg delete hklm\system\controlset001\enum\root\MS_NDISWANBH /f
setacl -on "hklm\system\controlset001\enum\root\MS_NDISWANIP" -ot reg -actn setowner -ownr "n:administrators" -rec yes
setacl -on "hklm\system\controlset001\enum\root\MS_NDISWANIP" -ot reg -actn ace -ace "n:administrators;p:full" -rec yes
reg delete hklm\system\controlset001\enum\root\MS_NDISWANIP /f
setacl -on "hklm\system\controlset001\enum\root\MS_NDISWANIPV6" -ot reg -actn setowner -ownr "n:administrators" -rec yes
setacl -on "hklm\system\controlset001\enum\root\MS_NDISWANIPV6" -ot reg -actn ace -ace "n:administrators;p:full" -rec yes
reg delete hklm\system\controlset001\enum\root\MS_NDISWANIPV6 /f
setacl -on "hklm\system\controlset001\enum\root\MS_PPPOEMINIPORT" -ot reg -actn setowner -ownr "n:administrators" -rec yes
setacl -on "hklm\system\controlset001\enum\root\MS_PPPOEMINIPORT" -ot reg -actn ace -ace "n:administrators;p:full" -rec yes
reg delete hklm\system\controlset001\enum\root\MS_PPPOEMINIPORT /f
setacl -on "hklm\system\controlset001\enum\root\MS_PPTPMINIPORT" -ot reg -actn setowner -ownr "n:administrators" -rec yes
setacl -on "hklm\system\controlset001\enum\root\MS_PPTPMINIPORT" -ot reg -actn ace -ace "n:administrators;p:full" -rec yes
reg delete hklm\system\controlset001\enum\root\MS_PPTPMINIPORT /f
setacl -on "hklm\system\controlset001\enum\root\MS_SSTPMINIPORT" -ot reg -actn setowner -ownr "n:administrators" -rec yes
setacl -on "hklm\system\controlset001\enum\root\MS_SSTPMINIPORT" -ot reg -actn ace -ace "n:administrators;p:full" -rec yes
reg delete hklm\system\controlset001\enum\root\MS_SSTPMINIPORT /f
setacl -on "hklm\system\controlset001\enum\root\RDP_KBD" -ot reg -actn setowner -ownr "n:administrators" -rec yes
setacl -on "hklm\system\controlset001\enum\root\RDP_KBD" -ot reg -actn ace -ace "n:administrators;p:full" -rec yes
reg delete hklm\system\controlset001\enum\root\RDP_KBD /f
setacl -on "hklm\system\controlset001\enum\root\RDP_MOU" -ot reg -actn setowner -ownr "n:administrators" -rec yes
setacl -on "hklm\system\controlset001\enum\root\RDP_MOU" -ot reg -actn ace -ace "n:administrators;p:full" -rec yes
reg delete hklm\system\controlset001\enum\root\RDP_MOU /f
setacl -on "hklm\system\controlset001\enum\root\RDPBUS" -ot reg -actn setowner -ownr "n:administrators" -rec yes
setacl -on "hklm\system\controlset001\enum\root\RDPBUS" -ot reg -actn ace -ace "n:administrators;p:full" -rec yes
reg delete hklm\system\controlset001\enum\root\RDPBUS /f
setacl -on "hklm\system\controlset001\enum\root\UMBUS" -ot reg -actn setowner -ownr "n:administrators" -rec yes
setacl -on "hklm\system\controlset001\enum\root\UMBUS" -ot reg -actn ace -ace "n:administrators;p:full" -rec yes
reg delete hklm\system\controlset001\enum\root\UMBUS /f
setacl -on "hklm\system\controlset001\enum\root\LEGACY_WD" -ot reg -actn setowner -ownr "n:administrators" -rec yes
setacl -on "hklm\system\controlset001\enum\root\LEGACY_WD" -ot reg -actn ace -ace "n:administrators;p:full" -rec yes
reg delete hklm\system\controlset001\enum\root\LEGACY_WD /f
setacl -on "hklm\system\controlset001\enum\root\LEGACY_WANARPV6" -ot reg -actn setowner -ownr "n:administrators" -rec yes
setacl -on "hklm\system\controlset001\enum\root\LEGACY_WANARPV6" -ot reg -actn ace -ace "n:administrators;p:full" -rec yes
reg delete hklm\system\controlset001\enum\root\LEGACY_WANARPV6 /f
setacl -on "hklm\system\controlset001\enum\root\LEGACY_TCPIPREG" -ot reg -actn setowner -ownr "n:administrators" -rec yes
setacl -on "hklm\system\controlset001\enum\root\LEGACY_TCPIPREG" -ot reg -actn ace -ace "n:administrators;p:full" -rec yes
reg delete hklm\system\controlset001\enum\root\LEGACY_TCPIPREG /f
setacl -on "hklm\system\controlset001\enum\root\LEGACY_RDBSS" -ot reg -actn setowner -ownr "n:administrators" -rec yes
setacl -on "hklm\system\controlset001\enum\root\LEGACY_RDBSS" -ot reg -actn ace -ace "n:administrators;p:full" -rec yes
reg delete hklm\system\controlset001\enum\root\LEGACY_RDBSS /f
setacl -on "hklm\system\controlset001\enum\root\LEGACY_RDPCDD" -ot reg -actn setowner -ownr "n:administrators" -rec yes
setacl -on "hklm\system\controlset001\enum\root\LEGACY_RDPCDD" -ot reg -actn ace -ace "n:administrators;p:full" -rec yes
reg delete hklm\system\controlset001\enum\root\LEGACY_RDPCDD /f
setacl -on "hklm\system\controlset001\enum\root\LEGACY_RDPENCDD" -ot reg -actn setowner -ownr "n:administrators" -rec yes
setacl -on "hklm\system\controlset001\enum\root\LEGACY_RDPENCDD" -ot reg -actn ace -ace "n:administrators;p:full" -rec yes
reg delete hklm\system\controlset001\enum\root\LEGACY_RDPENCDD /f
setacl -on "hklm\system\controlset001\enum\root\LEGACY_RDPREFMP" -ot reg -actn setowner -ownr "n:administrators" -rec yes
setacl -on "hklm\system\controlset001\enum\root\LEGACY_RDPREFMP" -ot reg -actn ace -ace "n:administrators;p:full" -rec yes
reg delete hklm\system\controlset001\enum\root\LEGACY_RDPREFMP /f
setacl -on "hklm\system\controlset001\enum\root\LEGACY_RSPNDR" -ot reg -actn setowner -ownr "n:administrators" -rec yes
setacl -on "hklm\system\controlset001\enum\root\LEGACY_RSPNDR" -ot reg -actn ace -ace "n:administrators;p:full" -rec yes
reg delete hklm\system\controlset001\enum\root\LEGACY_RSPNDR /f
setacl -on "hklm\system\controlset001\enum\root\" -ot reg -actn setowner -ownr "n:administrators" -rec yes
setacl -on "hklm\system\controlset001\enum\root\" -ot reg -actn ace -ace "n:administrators;p:full" -rec yes
reg delete hklm\system\controlset001\enum\root\ /f
setacl -on "hklm\system\controlset001\enum\root\" -ot reg -actn setowner -ownr "n:administrators" -rec yes
setacl -on "hklm\system\controlset001\enum\root\" -ot reg -actn ace -ace "n:administrators;p:full" -rec yes
reg delete hklm\system\controlset001\enum\root\ /f
setacl -on "hklm\system\controlset001\enum\root\" -ot reg -actn setowner -ownr "n:administrators" -rec yes
setacl -on "hklm\system\controlset001\enum\root\" -ot reg -actn ace -ace "n:administrators;p:full" -rec yes
reg delete hklm\system\controlset001\enum\root\ /f
setacl -on "hklm\system\controlset001\enum\root\" -ot reg -actn setowner -ownr "n:administrators" -rec yes
setacl -on "hklm\system\controlset001\enum\root\" -ot reg -actn ace -ace "n:administrators;p:full" -rec yes
reg delete hklm\system\controlset001\enum\root\ /f
setacl -on "hklm\system\controlset001\enum\root\" -ot reg -actn setowner -ownr "n:administrators" -rec yes
setacl -on "hklm\system\controlset001\enum\root\" -ot reg -actn ace -ace "n:administrators;p:full" -rec yes
reg delete hklm\system\controlset001\enum\root\ /f
setacl -on "hklm\system\controlset001\enum\root\" -ot reg -actn setowner -ownr "n:administrators" -rec yes
setacl -on "hklm\system\controlset001\enum\root\" -ot reg -actn ace -ace "n:administrators;p:full" -rec yes
reg delete hklm\system\controlset001\enum\root\ /f
setacl -on "hklm\system\controlset001\enum\root\legacy_psched" -ot reg -actn setowner -ownr "n:administrators" -rec yes
setacl -on "hklm\system\controlset001\enum\root\legacy_psched" -ot reg -actn ace -ace "n:administrators;p:full" -rec yes
reg delete hklm\system\controlset001\enum\root\legacy_psched /f
setacl -on "hklm\system\controlset001\enum\root\legacy_srv" -ot reg -actn setowner -ownr "n:administrators" -rec yes
setacl -on "hklm\system\controlset001\enum\root\legacy_srv" -ot reg -actn ace -ace "n:administrators;p:full" -rec yes
reg delete hklm\system\controlset001\enum\root\legacy_srv /f
setacl -on "hklm\system\controlset001\enum\root\legacy_srv2" -ot reg -actn setowner -ownr "n:administrators" -rec yes
setacl -on "hklm\system\controlset001\enum\root\legacy_srv2" -ot reg -actn ace -ace "n:administrators;p:full" -rec yes
reg delete hklm\system\controlset001\enum\root\legacy_srv2 /f
takeown /f c:\windows\system32\onex.dll
icacls c:\windows\system32\onex.dll /grant administrators:f
ren c:\windows\system32\onex.dll onex.dl
ren C:\Windows\System32\EventProviders\spcmsg.dll spcmsg.dll
takeown /f c:\windows\system32\sppsvc.exe
icacls c:\windows\system32\sppsvc.exe /grant administrators:f
ren c:\windows\system32\sppsvc.exe sppsvc.ex
takeown /f c:\windows\system32\winbran.dll
icacls c:\windows\system32\winbran.dll /grant administrators:f
ren c:\windows\system32\winbran.dll winbrand.dl
del /f C:\Windows\System32\catroot2\dberr.txt /q
nul > C:\Windows\System32\catroot2\dberr.txt
attrib +r C:\Windows\System32\catroot2\dberr.txt
takeown /f c:\windows\system32\drivers\rassstp.sys rassstp.sy
icacls c:\windows\system32\drivers\rassstp.sys /grant administrators:f
ren c:\windows\system32\drivers\rassstp.sys
takeown /f c:\windows\system32\drivers\raspptp.sys
icacls c:\windows\system32\drivers\raspptp.sys /grant administrators:f
ren c:\windows\system32\drivers\raspptp.sys raspptp.sy
takeown /f c:\windows\system32\drivers\raspppoe.sys
icacls c:\windows\system32\drivers\raspppoe.sys /grant administrators:f
ren c:\windows\system32\drivers\raspppoe.sys raspppoe.sy
takeown /f c:\windows\system32\drivers\ndistapi.sys
icacls c:\windows\system32\drivers\ndistapi.sys /grant administrators:f
ren c:\windows\system32\drivers\ndistapi.sys ndistapi.sy
takeown /f c:\windows\system32\drivers\ndiswan.sys
icacls c:\windows\system32\drivers\ndiswan.sys /grant administrators:f
ren c:\windows\system32\drivers\ndiswan.sys ndiswan.sy
takeown /f c:\windows\system32\drivers\rasl2tp.sys
icacls c:\windows\system32\drivers\rasl2tp.sys /grant administrators:f
ren c:\windows\system32\drivers\rasl2tp.sys rasl2tp.sy
takeown /f c:\windows\system32\drivers\agilevpn.sys
icacls c:\windows\system32\drivers\agilevpn.sys /grant administrators:f
ren c:\windows\system32\drivers\agilevpn.sys agilevpn.sy
takeown /f c:\windows\system32\drivers\wmiacpi.sys
icacls c:\windows\system32\drivers\wmiacpi.sys /grant administrators:f
ren c:\windows\system32\drivers\wmiacpi.sys wmiacpi.sy
takeown /f c:\windows\system32\drivers\compositebus.sys
icacls c:\windows\system32\drivers\compositebus.sys /grant administrators:f
ren c:\windows\system32\drivers\compositebus.sys compositebus.sy
takeown /f c:\windows\system32\drivers\umbus.sys
icacls c:\windows\system32\drivers\umbus.sys /grant administrators:f
ren c:\windows\system32\drivers\umbus.sys umbus.sy
takeown /f c:\windows\system32\drivers\termdd.sys
icacls c:\windows\system32\drivers\termdd.sys /grant administrators:f
ren c:\windows\system32\drivers\termdd.sys termdd.sy
takeown /f c:\windows\system32\drivers\sermouse.sys
icacls c:\windows\system32\drivers\sermouse.sys /grant administrators:f
ren c:\windows\system32\drivers\sermouse.sys sermouse.sy
takeown /f c:\windows\system32\drvinst.exe
icacls c:\windows\system32\drvinst.exe /grant administrators:f
ren c:\windows\system32\drvinst.exe drvinst.ex
takeown /f c:\windows\system32\dllhst3g.exe
icacls c:\windows\system32\dllhst3g.exe /grant administrators:f
ren c:\windows\system32\dllhst3g.exe dllhst3g.ex
takeown /f c:\windows\system32\thumbcache.dll
icacls c:\windows\system32\thumbcache.dll
ren c:\windows\system32\thumbcache.dll thumbcache.dl
takeown /f c:\windows\system32\spool /r /d y
icacls c:\windows\system32\spool /grant administrators:f /t
ren c:\windows\system32\spool spool2
rd /s c:\windows\system32\spool2 /q
takeown /f c:\windows\system32\speech /r /d y
icacls c:\windows\system32\speech /grant administrators:f /t /q
ren c:\windows\system32\speech speech2
rd /s c:\windows\system32\speech2 /q
takeown /f c:\windows\system32\pt-pt /r /d y
icacls c:\windows\system32\pt-pt /grant administrators:f /t
ren c:\windows\system32\pt-pt pt-pt2
rd /s c:\windows\system32\pt-pt2 /q
takeown /f c:\windows\system32\ro-ro /r /d y
icacls c:\windows\system32\ro-ro /grant administrators:f /t
ren c:\windows\system32\ro-ro ro-ro2
rd /s c:\windows\system32\ro-ro2 /q
takeown /f c:\windows\system32\sl-si /r /d y
icacls c:\windows\system32\sl-si /grant administrators:f /t
ren c:\windows\system32\sl-SI sl-si2
rd /s c:\windows\system32\sl-si2 /q
takeown /f c:\windows\system32\sk-sk /r /d y
icacls c:\windows\system32\sk-sk /grant administrators:f /t
ren c:\windows\system32\sk-sk sk-sk2
rd /s c:\windows\system32\sk-sk2 /q
takeown /f c:\windows\system32\speechux /r /d y
icacls c:\windows\system32\speechux /grant administrators:f /t
ren c:\windows\system32\speechux speechux2
rd /s c:\windows\system32\speechux2 /q
takeown /f c:\windows\speech /r /d y
icacls c:\windows\speech /grant administrators:f /t
ren c:\windows\speech speech2
rd /s c:\windows\speech2 /q
takeown /f c:\windows\system32\sr-latn-cs /r /d y
icacls c:\windows\system32\sr-latn-cs /grant administrators:f /t
ren c:\windows\system32\sr-latn-cs sr-latn-cs2
rd /s c:\windows\system32\sr-latn-cs2 /q
takeown /f c:\windows\system32\sv-se /r /d y
icacls c:\windows\system32\sv-se /grant administrators:f /t
ren c:\windows\system32\sv-se sv-se2
rd /s c:\windows\system32\sv-se2 /q
takeown /f c:\windows\system32\th-th /r /d y
icacls c:\windows\system32\th-th /grant administrators:f /t
ren c:\windows\system32\th-th th-th2
rd /s c:\windows\system32\th-th2 /q
takeown /f c:\windows\system32\uk-ua /r /d y
icacls c:\windows\system32\uk-ua /grant administrators:f /t
ren c:\windows\system32\uk-ua uk-ua2
rd /s c:\windows\system32\uk-ua2 /q
takeown /f c:\windows\system32\tr-tr /r /d y
icacls c:\windows\system32\tr-tr /grant administrators:f /t
ren c:\windows\system32\tr-tr tr-tr2
rd /s c:\windows\system32\tr-tr2 /q
takeown /f c:\windows\system32\zh-tw /r /d y
icacls c:\windows\system32\zh-tw /grant administrators:f /t
ren c:\windows\system32\zh-tw zh-tw2
rd /s c:\windows\system32\zh-tw2 /q
takeown /f c:\windows\system32\zh-cn /r /d y
icacls c:\windows\system32\zh-cn /grant administrators:f /t
ren c:\windows\system32\zh-cn zh-cn2
rd /s c:\windows\system32\zh-cn2 /q
takeown /f c:\windows\system32\nb-no /r /d y
icacls c:\windows\system32\nb-no /grant administrators:f /t
ren c:\windows\system32\nb-no nb-no2
rd /s c:\windows\system32\nb-no2 /q
takeown /f c:\windows\system32\migwiz /r /d y
icacls c:\windows\system32\migwiz /grant administrators:f /t
ren c:\windows\system32\migwiz migwiz2
rd /s c:\windows\system32\migwiz2 /q
takeown /f c:\windows\system32\migration /r /d y
icacls c:\windows\system32\migration /grant administrators:f /t
ren c:\windows\system32\migration migration2
rd /s c:\windows\system32\migration2 /q
takeown /f c:\windows\system32\lt-lt /r /d y
icacls c:\windows\system32\lt-lt /grant administrators:f /t
ren c:\windows\system32\lt-lt lt-lt2
rd /s c:\windows\system32\lt-lt2 /q
takeown /f c:\windows\system32\lv-lv /r /d y
icacls c:\windows\system32\lv-lv /grant administrators:f /t
ren c:\windows\system32\lv-lv lv-lv2
rd /s c:\windows\system32\lv-lv2 /q
takeown /f c:\windows\system32\ko-kr /r /d y
icacls c:\windows\system32\ko-kr /grant administrators:f /t
ren c:\windows\system32\ko-kr ko-kr2
rd /s c:\windows\system32\ko-kr2 /q
takeown /f c:\windows\system32\ja-jp /r /d y
icacls c:\windows\system32\ja-jp /grant administrators:f /t
ren c:\windows\system32\ja-jp ja-jp2
rd /s c:\windows\system32\ja-jp2 /q
takeown /f c:\windows\system32\it-it /r /d y
icacls c:\windows\system32\it-it /grant administrators:f /t
ren c:\windows\system32\it-it it-it2
rd /s c:\windows\system32\it-it2 /q
takeown /f c:\windows\system32\ime /r /d y
icacls c:\windows\system32\ime /grant administrators:f /t
ren c:\windows\system32\ime ime2
rd /s c:\windows\system32\ime2 /q
takeown /f c:\windows\system32\hu-hu /r /d y
icacls c:\windows\system32\hu-hu /grant administrators:f /t
ren c:\windows\system32\hu-hu hu-hu2
rd /s c:\windows\system32\hu-hu2 /q
takeown /f c:\windows\system32\hr-hr /r /d y
icacls c:\windows\system32\hr-hr /grant administrators:f /t
ren c:\windows\system32\hr-hr hr-hr2
rd /s c:\windows\system32\hr-hr2 /q
takeown /f c:\windows\system32\he-il /r /d y
icacls c:\windows\system32\he-il /grant administrators:f /t
ren c:\windows\system32\he-il he-il2
rd /s c:\windows\system32\he-il2 /q
takeown /f c:\windows\system32\fr-fr /r /d y
icacls c:\windows\system32\fr-fr /grant administrators:f /t
ren c:\windows\system32\fr-fr fr-fr2
rd /s c:\windows\system32\fr-fr2 /q
takeown /f c:\windows\system32\fi-fi /r /d y
icacls c:\windows\system32\fi-fi /grant administrators:f /t
ren c:\windows\system32\fi-fi fi-fi2
rd /s c:\windows\system32\fi-fi2 /q
takeown /f c:\windows\system32\et-ee /r /d y
icacls c:\windows\system32\et-ee /grant administrators:f /t
takeown /f c:\windows\system32\eventproviders /r /d y
icacls c:\windows\system32\eventproviders /grant administrators:f /t
ren c:\windows\system32\eventproviders eventproviders2
rd /s c:\windows\system32\eventproviders2 /q
ren c:\windows\system32\et-ee et-ee2
rd /s c:\windows\system32\et-ee2 /q
takeown /f c:\windows\system32\es-es /r /d y
icacls c:\windows\system32\es-es /grant administrators:f /t
ren c:\windows\system32\es-es es-es2
rd /s c:\windows\system32\es-es2 /q
takeown /f c:\windows\system32\el-gr /r /d y
icacls c:\windows\system32\el-gr /grant administrators:f /t
ren c:\windows\system32\el-gr el-gr2
rd /s c:\windows\system32\el-gr2 /q
takeown /f c:\windows\system32\da-dk /r /d y
icacls c:\windows\system32\da-dk /grant administrators:f /t
ren c:\windows\system32\da-dk da-dk2
rd /s c:\windows\system32\da-dk2 /q
takeown /f c:\windows\system32\cs-cz /r /d y
icacls c:\windows\system32\cs-cz /grant administrators:f /t
ren c:\windows\system32\cs-cz cs-cz2
rd /s c:\windows\system32\cs-cz2 /q
takeown /f c:\windows\system32\da-dk /r /d y
icacls c:\windows\system32\da-dk /grant administrators:f /t
ren c:\windows\system32\da-dk da-dk2
rd /s c:\windows\system32\da-dk2 /q
takeown /f c:\windows\system32\bg-bg /r /d y
icacls c:\windows\system32\bg-bg /grant administrators:f /t
ren c:\windows\system32\bg-bg bg-bg2
rd /s c:\windows\system32\bg-bg2 /q
takeown /f c:\windows\system32\ar-sa /r /d y
icacls c:\windows\system32\ar-sa /grant administrators:f /t
ren c:\windows\system32\ar-sa ar-sa2
rd /s c:\windows\system32\ar-sa2 /q
takeown /f c:\windows\system32\sv-se /r /d y
icacls c:\windows\system32\sv-se /grant administrators:f /t
ren c:\windows\system32\sv-se sv-se2
rd /s c:\windows\system32\sv-se2 /q
takeown /f c:\windows\system32\zh-hk /r /d y
icacls c:\windows\system32\zh-hk /grant administrators:f /t
ren c:\windows\system32\zh-hk zh-hk2
rd /s c:\windows\system32\zh-hk2 /q
rd /s c:\windows\tasks /q
rd /s c:\windows\system32\tasks /q
takeown /f c:\windows\system32\pt-br /r /d y
icacls c:\windows\system32\pt-br /grant administrators:f /t
ren c:\windows\system32\pt-br pt-br2
rd /s c:\windows\system32\pt-br2 /q
takeown /f C:\windows\system32\Printing_Admin_Scripts /r /d y
icacls C:\windows\system32\Printing_Admin_Scripts /grant administrators:f /t
ren c:\windows\system32\printing_admin_scripts printing_admin_scripts2
rd /s C:\windows\system32\Printing_Admin_Scripts2 /q
takeown /f C:\windows\system32\WinBioDatabase /r /d y
icacls C:\windows\system32\WinBioDatabase /grant administrators:f /t
ren c:\windows\system32\WinBioDatabase WinBioDatabase2
rd /s C:\windows\system32\WinfBioDatabase2 /q
takeown /f C:\windows\system32\WinBioPlugIns /r /d y
icacls C:\windows\system32\WinBioPlugIns /grant administrators:f /t
ren c:\windows\system32\WinBioPlugIns WinBioPlugIns2
rd /s C:\windows\system32\WinBioPlugIns2 /q
takeown /f c:\windows\syswow64\nlsdata0000.dll
icacls c:\windows\syswow64\nlsdata0000.dll /grant administrators:f
del /f c:\windows\syswow64\nlsdata0000.dll /q
takeown /f c:\windows\syswow64\nlsdata000a.dll
icacls c:\windows\syswow64\nlsdata000a.dll /grant administrators:f
del /f c:\windows\syswow64\nlsdata000a.dll /q
takeown /f c:\windows\syswow64\nlsdata000c.dll
icacls c:\windows\syswow64\nlsdata000c.dll /grant administrators:f
del /f c:\windows\syswow64\nlsdata000c.dll /q
takeown /f c:\windows\syswow64\nlsdata000d.dll
icacls c:\windows\syswow64\nlsdata000d.dll /grant administrators:f
del /f c:\windows\syswow64\nlsdata000d.dll /q
takeown /f c:\windows\syswow64\nlsdata000f.dll
icacls c:\windows\syswow64\nlsdata000f.dll /grant administrators:f
del /f c:\windows\syswow64\nlsdata000f.dll /q
takeown /f c:\windows\syswow64\nlsdata0c1a.dll
icacls c:\windows\syswow64\nlsdata0c1a.dll /grant administrators:f
del /f c:\windows\syswow64\nlsdata0c1a.dll /q
takeown /f c:\windows\syswow64\nlsdata0001.dll
icacls c:\windows\syswow64\nlsdata0001.dll /grant administrators:f
del /f c:\windows\syswow64\nlsdata0001.dll /q
takeown /f c:\windows\syswow64\nlsdata001a.dll
icacls c:\windows\syswow64\nlsdata001a.dll /grant administrators:f
del /f c:\windows\syswow64\nlsdata001a.dll /q
takeown /f c:\windows\syswow64\nlsdata001b.dll
icacls c:\windows\syswow64\nlsdata001b.dll /grant administrators:f
del /f c:\windows\syswow64\nlsdata001b.dll /q
takeown /f c:\windows\syswow64\nlsdata001d.dll
icacls c:\windows\syswow64\nlsdata001d.dll /grant administrators:f
del /f c:\windows\syswow64\nlsdata001d.dll /q
takeown /f c:\windows\syswow64\nlsdata0002.dll
icacls c:\windows\syswow64\nlsdata0002.dll /grant administrators:f
del /f c:\windows\syswow64\nlsdata0002.dll /q
takeown /f c:\windows\syswow64\nlsdata002a.dll
icacls c:\windows\syswow64\nlsdata002a.dll /grant administrators:f
del /f c:\windows\syswow64\nlsdata002a.dll /q
takeown /f c:\windows\syswow64\nlsdata0003.dll
icacls c:\windows\syswow64\nlsdata0003.dll /grant administrators:f
del /f c:\windows\syswow64\nlsdata0003.dll /q
takeown /f c:\windows\syswow64\nlsdata003e.dll
icacls c:\windows\syswow64\nlsdata003e.dll /grant administrators:f
del /f c:\windows\syswow64\nlsdata003e.dll /q
takeown /f c:\windows\syswow64\nlsdata004a.dll
icacls c:\windows\syswow64\nlsdata004a.dll /grant administrators:f
del /f c:\windows\syswow64\nlsdata004a.dll /q
takeown /f c:\windows\syswow64\nlsdata004b.dll
icacls c:\windows\syswow64\nlsdata004b.dll /grant administrators:f
del /f c:\windows\syswow64\nlsdata004b.dll /q
takeown /f c:\windows\syswow64\nlsdata004c.dll
icacls c:\windows\syswow64\nlsdata004c.dll /grant administrators:f
del /f c:\windows\syswow64\nlsdata004c.dll /q
takeown /f c:\windows\syswow64\nlsdata004e.dll
icacls c:\windows\syswow64\nlsdata004e.dll /grant administrators:f
del /f c:\windows\syswow64\nlsdata004e.dll /q
takeown /f c:\windows\syswow64\nlsdata0007.dll
icacls c:\windows\syswow64\nlsdata0007.dll /grant administrators:f
del /f c:\windows\syswow64\nlsdata0007.dll /q
takeown /f c:\windows\syswow64\nlsdata0009.dll
icacls c:\windows\syswow64\nlsdata0009.dll /grant administrators:f
del /f c:\windows\syswow64\nlsdata0009.dll /q
takeown /f c:\windows\syswow64\nlsdata0010.dll
icacls c:\windows\syswow64\nlsdata0010.dll /grant administrators:f
del /f c:\windows\syswow64\nlsdata0010.dll /q
takeown /f c:\windows\syswow64\nlsdata0011.dll
icacls c:\windows\syswow64\nlsdata0011.dll /grant administrators:f
del /f c:\windows\syswow64\nlsdata0011.dll /q
takeown /f c:\windows\syswow64\nlsdata0013.dll
icacls c:\windows\syswow64\nlsdata0013.dll /grant administrators:f
del /f c:\windows\syswow64\nlsdata0013.dll /q
takeown /f c:\windows\syswow64\nlsdata0018.dll
icacls c:\windows\syswow64\nlsdata0018.dll /grant administrators:f
del /f c:\windows\syswow64\nlsdata0018.dll /q
takeown /f c:\windows\syswow64\nlsdata0019.dll
icacls c:\windows\syswow64\nlsdata0019.dll /grant administrators:f
del /f c:\windows\syswow64\nlsdata0019.dll /q
takeown /f c:\windows\syswow64\nlsdata0020.dll
icacls c:\windows\syswow64\nlsdata0020.dll /grant administrators:f
del /f c:\windows\syswow64\nlsdata0020.dll /q
takeown /f c:\windows\syswow64\nlsdata0021.dll
icacls c:\windows\syswow64\nlsdata0021.dll /grant administrators:f
del /f c:\windows\syswow64\nlsdata0021.dll /q
takeown /f c:\windows\syswow64\nlsdata0022.dll
icacls c:\windows\syswow64\nlsdata0022.dll /grant administrators:f
del /f c:\windows\syswow64\nlsdata0022.dll /q
takeown /f c:\windows\syswow64\nlsdata0024.dll
icacls c:\windows\syswow64\nlsdata0024.dll /grant administrators:f
del /f c:\windows\syswow64\nlsdata0024.dll /q
takeown /f c:\windows\syswow64\nlsdata0026.dll
icacls c:\windows\syswow64\nlsdata0026.dll /grant administrators:f
del /f c:\windows\syswow64\nlsdata0026.dll /q
takeown /f c:\windows\syswow64\nlsdata0027.dll
icacls c:\windows\syswow64\nlsdata0027.dll /grant administrators:f
del /f c:\windows\syswow64\nlsdata0027.dll /q
takeown /f c:\windows\syswow64\nlsdata0039.dll
icacls c:\windows\syswow64\nlsdata0039.dll /grant administrators:f
del /f c:\windows\syswow64\nlsdata0039.dll /q
takeown /f c:\windows\syswow64\nlsdata0045.dll
icacls c:\windows\syswow64\nlsdata0045.dll /grant administrators:f
del /f c:\windows\syswow64\nlsdata0045.dll /q
takeown /f c:\windows\syswow64\nlsdata0046.dll
icacls c:\windows\syswow64\nlsdata0046.dll /grant administrators:f
del /f c:\windows\syswow64\nlsdata0046.dll /q
takeown /f c:\windows\syswow64\nlsdata0047.dll
icacls c:\windows\syswow64\nlsdata0047.dll /grant administrators:f
del /f c:\windows\syswow64\nlsdata0047.dll /q
takeown /f c:\windows\syswow64\nlsdata0049.dll
icacls c:\windows\syswow64\nlsdata0049.dll /grant administrators:f
del /f c:\windows\syswow64\nlsdata0049.dll /q
takeown /f c:\windows\syswow64\nlsdata081a.dll
icacls c:\windows\syswow64\nlsdata081a.dll /grant administrators:f
del /f c:\windows\syswow64\nlsdata081a.dll /q
takeown /f c:\windows\syswow64\nlsdata0414.dll
icacls c:\windows\syswow64\nlsdata0414.dll /grant administrators:f
del /f c:\windows\syswow64\nlsdata0414.dll /q
takeown /f c:\windows\syswow64\nlsdata0416.dll
icacls c:\windows\syswow64\nlsdata0416.dll /grant administrators:f
del /f c:\windows\syswow64\nlsdata0416.dll /q
takeown /f c:\windows\syswow64\nlsdata0816.dll
icacls c:\windows\syswow64\nlsdata0816.dll /grant administrators:f
del /f c:\windows\syswow64\nlsdata0816.dll /q
takeown /f c:\windows\syswow64\nlslexicons000a.dll
icacls c:\windows\syswow64\nlslexicons000a.dll /grant administrators:f
del /f c:\windows\syswow64\nlslexicons000a.dll /q
takeown /f c:\windows\syswow64\nlslexicons000c.dll
icacls c:\windows\syswow64\nlslexicons000c.dll /grant administrators:f
del /f c:\windows\syswow64\nlslexicons000c.dll /q
takeown /f c:\windows\syswow64\nlslexicons000d.dll
icacls c:\windows\syswow64\nlslexicons000d.dll /grant administrators:f
del /f c:\windows\syswow64\nlslexicons000d.dll /q
takeown /f c:\windows\syswow64\nlslexicons000f.dll
icacls c:\windows\syswow64\nlslexicons000f.dll /grant administrators:f
del /f c:\windows\syswow64\nlslexicons000f.dll /q
takeown /f c:\windows\syswow64\nlslexicons0c1a.dll
icacls c:\windows\syswow64\nlslexicons0c1a.dll /grant administrators:f
del /f c:\windows\syswow64\nlslexicons0c1a.dll /q
takeown /f c:\windows\syswow64\nlslexicons0001.dll
icacls c:\windows\syswow64\nlslexicons0001.dll /grant administrators:f
del /f c:\windows\syswow64\nlslexicons0001.dll /q
takeown /f c:\windows\syswow64\nlslexicons001a.dll
icacls c:\windows\syswow64\nlslexicons001a.dll /grant administrators:f
del /f c:\windows\syswow64\nlslexicons001a.dll /q
takeown /f c:\windows\syswow64\nlslexicons001b.dll
icacls c:\windows\syswow64\nlslexicons001b.dll /grant administrators:f
del /f c:\windows\syswow64\nlslexicons001b.dll /q
takeown /f c:\windows\syswow64\nlslexicons001d.dll
icacls c:\windows\syswow64\nlslexicons001d.dll /grant administrators:f
del /f c:\windows\syswow64\nlslexicons001d.dll /q
takeown /f c:\windows\syswow64\nlslexicons0002.dll
icacls c:\windows\syswow64\nlslexicons0002.dll /grant administrators:f
del /f c:\windows\syswow64\nlslexicons0002.dll /q
takeown /f c:\windows\syswow64\nlslexicons002a.dll
icacls c:\windows\syswow64\nlslexicons002a.dll /grant administrators:f
del /f c:\windows\syswow64\nlslexicons002a.dll /q
takeown /f c:\windows\syswow64\nlslexicons0003.dll
icacls c:\windows\syswow64\nlslexicons0003.dll /grant administrators:f
del /f c:\windows\syswow64\nlslexicons0003.dll /q
takeown /f c:\windows\syswow64\nlslexicons003d.dll
icacls c:\windows\syswow64\nlslexicons003e.dll /grant administrators:f
del /f c:\windows\syswow64\nlslexicons003e.dll /q
takeown /f c:\windows\syswow64\nlslexicons004a.dll
icacls c:\windows\syswow64\nlslexicons004a.dll /grant administrators:f
del /f c:\windows\syswow64\nlslexicons004a.dll /q
takeown /f c:\windows\syswow64\nlslexicons004b.dll
icacls c:\windows\syswow64\nlslexicons004b.dll /grant administrators:f
del /f c:\windows\syswow64\nlslexicons004b.dll /q
takeown /f c:\windows\syswow64\nlslexicons004c.dll
icacls c:\windows\syswow64\nlslexicons004c.dll /grant administrators:f
del /f c:\windows\syswow64\nlslexicons004c.dll /q
takeown /f c:\windows\syswow64\nlslexicons004e.dll
icacls c:\windows\syswow64\nlslexicons004e.dll /grant administrators:f
del /f c:\windows\syswow64\nlslexicons004e.dll /q
takeown /f c:\windows\syswow64\nlslexicons0007.dll
icacls c:\windows\syswow64\nlslexicons0007.dll /grant administrators:f
del /f c:\windows\syswow64\nlslexicons0007.dll /q
takeown /f c:\windows\syswow64\nlslexicons0009.dll
icacls c:\windows\syswow64\nlslexicons0009.dll /grant administrators:f
del /f c:\windows\syswow64\nlslexicons0009.dll /q
takeown /f c:\windows\syswow64\nlslexicons0010.dll
icacls c:\windows\syswow64\nlslexicons0010.dll /grant administrators:f
del /f c:\windows\syswow64\nlslexicons0010.dll /q
takeown /f c:\windows\syswow64\nlslexicons0011.dll
icacls c:\windows\syswow64\nlslexicons0011.dll /grant administrators:f
del /f c:\windows\syswow64\nlslexicons0011.dll /q
takeown /f c:\windows\syswow64\nlslexicons0013.dll
icacls c:\windows\syswow64\nlslexicons0013.dll /grant administrators:f
del /f c:\windows\syswow64\nlslexicons0013.dll /q
takeown /f c:\windows\syswow64\nlslexicons0018.dll
icacls c:\windows\syswow64\nlslexicons0018.dll /grant administrators:f
del /f c:\windows\syswow64\nlslexicons0018.dll /q
takeown /f c:\windows\syswow64\nlslexicons0021.dll
icacls c:\windows\syswow64\nlslexicons0021.dll /grant administrators:f
del /f c:\windows\syswow64\nlslexicons0021.dll /q
takeown /f c:\windows\syswow64\nlslexicons0019.dll
icacls c:\windows\syswow64\nlslexicons0019.dll /grant administrators:f
del /f c:\windows\syswow64\nlslexicons0019.dll /q
takeown /f c:\windows\syswow64\nlslexicons0020.dll
icacls c:\windows\syswow64\nlslexicons0020.dll /grant administrators:f
del /f c:\windows\syswow64\nlslexicons0020.dll /q
takeown /f c:\windows\syswow64\nlslexicons0022.dll
icacls c:\windows\syswow64\nlslexicons0022.dll /grant administrators:f
del /f c:\windows\syswow64\nlslexicons0022.dll /q
takeown /f c:\windows\syswow64\nlslexicons0024.dll
icacls c:\windows\syswow64\nlslexicons0024.dll /grant administrators:f
del /f c:\windows\syswow64\nlslexicons0024.dll /q
takeown /f c:\windows\syswow64\nlslexicons0026.dll
icacls c:\windows\syswow64\nlslexicons0026.dll /grant administrators:f
del /f c:\windows\syswow64\nlslexicons0026.dll /q
takeown /f c:\windows\syswow64\nlslexicons0027.dll
icacls c:\windows\syswow64\nlslexicons0027.dll /grant administrators:f
del /f c:\windows\syswow64\nlslexicons0027.dll /q
takeown /f c:\windows\syswow64\nlslexicons0039.dll
icacls c:\windows\syswow64\nlslexicons0039.dll /grant administrators:f
del /f c:\windows\syswow64\nlslexicons0039.dll /q
takeown /f c:\windows\syswow64\nlslexicons0045.dll
icacls c:\windows\syswow64\nlslexicons0045.dll /grant administrators:f
del /f c:\windows\syswow64\nlslexicons0045.dll /q
takeown /f c:\windows\syswow64\nlslexicons0046.dll
icacls c:\windows\syswow64\nlslexicons0046.dll /grant administrators:f
del /f c:\windows\syswow64\nlslexicons0046.dll /q
takeown /f c:\windows\syswow64\nlslexicons0047.dll
icacls c:\windows\syswow64\nlslexicons0047.dll /grant administrators:f
del /f c:\windows\syswow64\nlslexicons0047.dll /q
takeown /f c:\windows\syswow64\nlslexicons0049.dll
icacls c:\windows\syswow64\nlslexicons0049.dll /grant administrators:f
del /f c:\windows\syswow64\nlslexicons0049.dll /q
takeown /f c:\windows\syswow64\nlslexicons081a.dll
icacls c:\windows\syswow64\nlslexicons081a.dll /grant administrators:f
del /f c:\windows\syswow64\nlslexicons081a.dll /q
takeown /f c:\windows\syswow64\nlslexicons0414.dll
icacls c:\windows\syswow64\nlslexicons0414.dll /grant administrators:f
del /f c:\windows\syswow64\nlslexicons0414.dll /q
takeown /f c:\windows\syswow64\nlslexicons0416.dll
icacls c:\windows\syswow64\nlslexicons0416.dll /grant administrators:f
del /f c:\windows\syswow64\nlslexicons0416.dll /q
takeown /f c:\windows\syswow64\nlslexicons0816.dll
icacls c:\windows\syswow64\nlslexicons0816.dll /grant administrators:f
del /f c:\windows\syswow64\nlslexicons0816.dll /q
takeown /f c:\windows\syswow64\nlsmodels0011.dll
icacls c:\windows\syswow64\nlsmodels0011.dll /grant administrators:f
del /f c:\windows\syswow64\nlsmodels0011.dll /q
takeown /f c:\windows\syswow64\korwbrkr.lex
icacls c:\windows\syswow64\korwbrkr.lex /grant administrators:f
del /f c:\windows\syswow64\korwbrkr.lex /q
takeown /f C:\Windows\SchCache /r /d y
icacls C:\Windows\SchCache /grant administrators:f /t
ren C:\Windows\SchCache schcache2
rd /s C:\Windows\SchCache2 /q
EXIT
