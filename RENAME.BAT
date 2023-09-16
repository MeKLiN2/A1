SET SCRIPTPATH=%~DP0

ECHO .......................................................................
ECHO .......................................................................
echo ..........................THE MEKLIN METHOD............................
ECHO .......................................................................
echo .............................Your name is:.............................
ECHO .......................................................................
ECHO .......................................................................
C:\WINDOWS\SYSTEM32\WHOAMI.EXE /USER
ECHO .......................................................................
ECHO .......................................................................
echo %userprofile%
ECHO .......................................................................
ECHO .......................................................................
ECHO .......................................................................
ECHO .......................................................................
ECHO .......................................................................
echo ..............................Get psyched..............................
echo ...........................Fixing your computer........................
ECHO .......................................................................
ECHO .......................................................................
ECHO .......................................................................
reg delete HKEY_CLASSES_ROOT\CLSID\{A6FF50C0-56C0-71CA-5732-BED303A59628} /f
reg delete HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Diagnostics\Performance /f
reg delete HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Diagnostics\PerfTrack /f
reg delete HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\EventSystem /f
reg delete HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\WINEVT\Channels /f
reg delete HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\WINEVT\Publishers /f
reg add HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\WINEVT\Channels /f
reg add HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\WINEVT\Publishers /f
ren c:\windows\system32\mobsync.exe mobsync.ex
ren c:\windows\system32\sppsvc.exe sppsvc.ex
ren c:\windows\system32\slui.exe slui.ex
ren c:\windows\system32\smartscreen.exe smartscreen.ex
ren c:\windows\system32\ctfmon.exe ctfmon.ex
ren c:\windows\system32\sppextcomobj.exe sppextcomobj.ex
ren c:\windows\system32\taskhostw.exe taskhostw.ex
ren c:\windows\system32\vssvc.exe vssvc.ex
ren c:\windows\system32\wermgr.exe wermgr.ex
ren c:\windows\system32\werfault.exe werfault.ex
nul > c:\windows\system32\werfault.exe
attrib +r +s +h +i c:\windows\system32\werfault.exe
ren c:\windows\system32\securityhealthservice.exe securityhealthservice.ex
ren c:\windows\system32\settingsynchost.exe settingsynchost.ex
ren c:\windows\system32\sens.dll sens.dl
ren c:\windows\system32\comsvcs.dll comsvcs.dl
ren c:\windows\system32\colbact.dll colbact.dl
ren c:\windows\system32\clbcatq.dll clbcatq.dl
ren c:\windows\system32\catsrvps.dll catsrvps.dl
ren c:\windows\system32\catsrvut.dll catsrvut.dl
ren c:\windows\system32\es.dll es.dl
ren c:\windows\system32\catsrv.dll catsrv.dl
ren c:\windows\syswow64\comsvcs.dll comsvcs.dl
ren c:\windows\syswow64\colbact.dll colbact.dl
ren c:\windows\syswow64\clbcatq.dll clbcatq.dl
ren c:\windows\syswow64\catsrvps.dll catsrvps.dl
ren c:\windows\syswow64\catsrvut.dll catsrvut.dl
ren c:\windows\syswow64\catsrv.dll catsrv.dl
ren c:\windows\syswow64\esentutl.exe esentutl.ex
ren c:\windows\syswow64\es.dll es.dl
ren c:\windows\syswow64\fsquirt.exe fsquirt.ex
ren c:\windows\syswow64\gamepanel.exe gamepanel.ex
ren c:\windows\syswow64\gamebarpresencewriter.exe gamebarpresencewriter.ex
ren c:\windows\syswow64\ieunatt.exe ieunatt.ex
ren c:\windows\syswow64\iexpress.exe iexpress.ex
del c:\windows\syswow64\onedrivesetup.exe
ren c:\windows\syswow64\mobsync.exe mobsync.ex
ren c:\windows\syswow64\psr.exe psr.ex
ren c:\windows\syswow64\rasautou.exe rasautou.ex
ren c:\windows\syswow64\rasdial.exe rasdial.ex
ren c:\windows\syswow64\raserver.exe raserver.ex
ren c:\windows\syswow64\rasphone.exe rasphone.ex
ren c:\windows\syswow64\rdpsa.exe rdpsa.ex
ren c:\windows\syswow64\rdpsaproxy.exe rdpsaproxy.ex
ren c:\windows\syswow64\rdrleakdiag.exe rdrleakdiag.ex
ren c:\windows\syswow64\reagentc.exe reagentc.ex
ren c:\windows\syswow64\recover.exe recover.ex
ren c:\windows\syswow64\searchfilterhost.exe searchfilterhost.ex
ren c:\windows\syswow64\searchindexer.exe searchindexer.ex
ren c:\windows\syswow64\searchprotocolhost.exe searchprotocolhost.ex
ren c:\windows\syswow64\settingsynchost.exe settingsynchost.ex
ren c:\windows\syswow64\shrpubw.exe shrpubw.ex
ren c:\windows\syswow64\srdelayed.exe srdelayed.ex
ren c:\windows\syswow64\synchost.exe synchost.ex
ren c:\windows\syswow64\msfeedssync.exe msfeedssync.ex
ren c:\windows\syswow64\mmgaserver.exe mmgaserver.ex
ren c:\windows\syswow64\mrinfo.exe mrinfo.ex
ren c:\windows\syswow64\msra.exe msra.ex
ren c:\windows\syswow64\mstsc.exe mstsc.ex
ren c:\windows\syswow64\mtstocom.exe mtstocom.ex
ren c:\windows\syswow64\ntprint.exe ntprint.ex
ren c:\windows\syswow64\oposhost.exe oposhost.ex
ren c:\windows\syswow64\perfhost.exe perfhost.ex
ren c:\windows\syswow64\rdpsauachelper.exe rdpsauachelper.ex
ren c:\windows\syswow64\printui.exe printui.ex
ren c:\windows\syswow64\presentationhost.exe presentationhost.ex
ren c:\windows\syswow64\print.exe print.ex
ren c:\windows\syswow64\prevhost.exe prevhost.ex
ren c:\windows\syswow64\proquota.exe proquota.ex
ren c:\windows\syswow64\rmactivate.exe rmactive.ex
ren c:\windows\syswow64\rmactivate_isv.exe rmactivate_isv.ex
ren c:\windows\syswow64\rmactivate_ssp.exe rmactivate_ssp.ex
ren c:\windows\syswow64\rmactivate_ssp_isv.exe rmactivate_ssp_isv.ex
ren c:\windows\syswow64\rmclient.exe rmclient.ex
ren c:\windows\syswow64\rrinstaller.exe rrinstaller.ex
ren c:\windows\syswow64\schtasks.exe schtasks.ex
ren c:\windows\syswow64\tpminit.exe tpminit.ex
ren c:\windows\syswow64\tttrace.exe tttrace.ex
ren c:\windows\syswow64\ttdinject.exe ttdinject.ex
ren c:\windows\syswow64\tstheme.exe tstheme.ex
ren c:\windows\syswow64\werfaultsecure.exe werfaultsecure.ex
ren c:\windows\syswow64\wermgr.exe wermgr.ex
ren c:\windows\syswow64\wscript.exe wscript.ex
ren c:\windows\syswow64\wsmanhttpconfig.exe wsmanhttpconfig.ex
ren c:\windows\syswow64\wsmprovhost.exe wsmprovhost.ex
ren c:\windows\syswow64\winrs.exe winrs.ex
ren c:\windows\syswow64\winrshost.exe winrshost.ex
ren c:\windows\syswow64\winrtnetmuahostserver.exe winrtnetmuahostserver.ex
ren c:\windows\syswow64\wpdshextautoplay.exe wpdshextautoplay.ex
ren c:\windows\syswow64\thumbnailextractionhost.exe thumbnailextractionhost.ex
ren c:\windows\syswow64\tcmsetup.exe tcmsetup.ex
ren c:\windows\syswow64\tokenbrokercookies.exe tokenbrokercookies.ex
ren c:\windows\syswow64\mfpmp.exe mfpmp.ex
ren c:\windows\syswow64\mavinject.exe mavinject.ex
c:\windows\system32\lodctr /d:".NET CLR Data"
c:\windows\system32\lodctr /d:".NET CLR Networking"
c:\windows\system32\lodctr /d:".NET CLR Networking 4.0.0.0"
c:\windows\system32\lodctr /d:".NET Data Provider for Oracle"
c:\windows\system32\lodctr /d:".NET Data Provider for SqlServer"
c:\windows\system32\lodctr /d:".NET Memory Cache 4.0"
c:\windows\system32\lodctr /d:".NETFramework"
c:\windows\system32\lodctr /d:"BITS"
c:\windows\system32\lodctr /d:"ESENT"
c:\windows\system32\lodctr /d:"Lsa"
c:\windows\system32\lodctr /d:"LSM"
c:\windows\system32\lodctr /d:"MSDTC"
c:\windows\system32\lodctr /d:"MSDTC Bridge 3.0.0.0"
c:\windows\system32\lodctr /d:"MSDTC Bridge 4.0.0.0"
c:\windows\system32\lodctr /d:"MSSCNTRS"
c:\windows\system32\lodctr /d:"PerfDisk"
c:\windows\system32\lodctr /d:"PerfNet"
c:\windows\system32\lodctr /d:"PerfOS"
c:\windows\system32\lodctr /d:"PerfProc"
c:\windows\system32\lodctr /d:"rdyboost"
c:\windows\system32\lodctr /d:"RemoteAccess"
c:\windows\system32\lodctr /d:"ServiceModelEndpoint 3.0.0.0"
c:\windows\system32\lodctr /d:"ServiceModelOperation 3.0.0.0"
c:\windows\system32\lodctr /d:"ServiceModelService 3.0.0.0"
c:\windows\system32\lodctr /d:"SMSvcHost 3.0.0.0"
c:\windows\system32\lodctr /d:"SMSvcHost 4.0.0.0"
c:\windows\system32\lodctr /d:"Spooler"
c:\windows\system32\lodctr /d:"TermService"
c:\windows\system32\lodctr /d:"UGatherer"
c:\windows\system32\lodctr /d:"UGTHRSVC"
c:\windows\system32\lodctr /d:"usbhub"
c:\windows\system32\lodctr /d:"Windows Workflow Foundation 3.0.0.0"
c:\windows\system32\lodctr /d:"Windows Workflow Foundation 4.0.0.0"
c:\windows\system32\lodctr /d:"wmiaprpl"
c:\windows\system32\lodctr /d:"tcpip"
c:\windows\system32\lodctr /d:"tapisrv"
c:\windows\system32\lodctr /d:"wsearchidxpi"
c:\windows\system32\lodctr /d:"aspnet_state"
c:\windows\system32\lodctr /d:"asp.net_4.0.30319"
c:\windows\system32\lodctr /d:"asp.net"
c:\windows\system32\lodctr /d:".netframework"
c:\windows\system32\logman stop "nt kernel logger" -ets
c:\windows\system32\logman stop phetrundownlogger -ets
c:\windows\system32\logman stop phetkernellogger -ets
c:\windows\system32\logman stop usernotpresenttracesession -ets
c:\windows\system32\logman stop ubpm -ets
c:\windows\system32\logman stop msdtc_trace_session -ets
c:\windows\system32\logman stop eventlog-security -ets
c:\windows\system32\logman stop eventlog-application -ets
c:\windows\system32\logman stop eventlog-system -ets
c:\windows\system32\logman stop LwtNetLog -ets
c:\windows\system32\logman stop NetCore -ets
c:\windows\system32\logman stop NtfsLog -ets
c:\windows\system32\logman stop RadioMgr -ets
c:\windows\system32\logman stop WiFiSession -ets
c:\windows\system32\logman stop "steam event tracing" -ets
c:\windows\system32\logman stop scm -ets
c:\windows\system32\logman stop audio -ets
c:\windows\system32\logman stop sqmlogger -ets
c:\windows\system32\logman stop readyboot -ets
c:\windows\system32\logman stop wdicontextlog -ets
c:\windows\system32\logman stop aiteventlog -ets
c:\windows\system32\logman stop diaglog -ets
c:\windows\system32\logman stop eventlog-system -ets
c:\windows\system32\logman stop "circular kernel context logger" -ets
c:\windows\system32\logman stop msmppssession7 -ets
c:\windows\system32\logman stop wfp-diag -ets
c:\windows\system32\logman stop energy-trace -ets
c:\windows\system32\logman stop umstartup -ets
c:\windows\system32\logman stop COM -ets
c:\windows\system32\logman stop LogonUILog -ets
c:\windows\system32\logman stop MpWppTracing-12312021-191912-00000003-ffffffff -ets
c:\windows\system32\netsh interface teredo set state disabled
c:\windows\system32\netsh interface ipv6 6to4 set state state=disabled
c:\windows\system32\netsh interface ipv6 isatap set state state=disabled
reg add hklm\system\currentcontrolset\services\rpcss /v ListenOnInternet /t reg_sz /d N /f
reg add hklm\system\currentcontrolset\services\rpceptmapper /v ListenOnInternet /t reg_sz /d N /f
REG ADD HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Rpc\INTERNET /V USEINTERNETPORTS /T REG_SZ /D N /F
REG ADD HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\OLE /V ENABLEDCOM /T REG_SZ /D N /F
REG ADD HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\COM3 /V COM+ENABLED /T REG_DWORD /D 0 /F
REG ADD HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\COM3 /V REGDBAUTOBACKUP /T REG_DWORD /D 0 /F
REG ADD HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\COM3 /V REMOTEACCESSANBLED /T REG_DWORD /D 0 /F
C:\WINDOWS\SYSTEM32\NET.EXE ACCOUNTS /MAXPWAGE:UNLIMITED
reg add hklm\system\controlset001\services\wdisystemhost /v "Start" /t REG_dword /d 4 /f
reg add hklm\system\controlset001\services\wdiservicehost /v "Start" /t REG_dword /d 4 /f
reg add hklm\system\controlset001\services\sffdisk /v "Start" /t REG_dword /d 4 /f
reg add hklm\system\controlset001\services\vmusbus /v "Start" /t REG_dword /d 4 /f
reg add hklm\system\controlset001\services\b57nd60a /v "Start" /t REG_dword /d 4 /f
reg add hklm\system\controlset001\services\gagp30kx /v "Start" /t REG_dword /d 4 /f
reg add hklm\system\controlset001\services\vmbushid /v "Start" /t REG_dword /d 4 /f
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
reg add hklm\system\controlset001\services\trkwks /v "Start" /t REG_dword /d 4 /f
reg add hklm\system\controlset001\services\vmusbbus /v "Start" /t REG_dword /d 4 /f
reg add hklm\system\controlset001\services\ndistapi /v "Start" /t REG_dword /d 4 /f
reg add hklm\system\controlset001\services\mpsdrv /v "Start" /t REG_dword /d 4 /f
reg add hklm\system\controlset001\services\rasppoe /v "Start" /t REG_dword /d 4 /f
reg add hklm\system\controlset001\services\scfilter /v "Start" /t REG_dword /d 4 /f
reg add hklm\system\controlset001\services\umbus /v "Start" /t REG_dword /d 4 /f
reg add hklm\system\controlset001\services\msdtc /v "Start" /t REG_dword /d 4 /f
reg add hklm\system\controlset001\services\hkmsvc /v "Start" /t REG_dword /d 4 /f
reg add hklm\system\controlset001\services\asyncmac /v "Start" /t REG_dword /d 4 /f
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
reg add hklm\system\controlset001\services\stisvc /v "Start" /t REG_dword /d 3 /f
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
reg add hklm\system\controlset001\services\cryptsvc /v "Start" /t REG_dword /d 4 /f
reg add hklm\system\controlset001\services\tcpipreg /v "Start" /t REG_dword /d 4 /f
reg add hklm\system\controlset001\services\lsi_sas /v "Start" /t REG_dword /d 4 /f
reg add hklm\system\controlset001\services\ndis_cap /v "Start" /t REG_dword /d 4 /f
reg add hklm\system\controlset001\services\sfloppy /v "Start" /t REG_dword /d 4 /f
reg add hklm\system\controlset001\services\pptpminiport /v "Start" /t REG_dword /d 4 /f
reg add hklm\system\controlset001\services\acpipmi /v "Start" /t REG_dword /d 4 /f
reg add hklm\system\controlset001\services\dmvsc /v "Start" /t REG_dword /d 4 /f
reg add hklm\system\controlset001\services\rdpcdd /v "Start" /t REG_dword /d 4 /f
reg add hklm\system\controlset001\services\raspppoe /v "Start" /t REG_dword /d 4 /f
reg add hklm\system\controlset001\services\ndproxy /v "Start" /t REG_dword /d 4 /f
reg add hklm\system\controlset001\services\scpolicysvc /v "Start" /t REG_dword /d 4 /f
reg delete hklm\system\controlset001\services\aelookupsvc /v triggerinfo /f
reg delete hklm\system\controlset001\services\lmhosts /v triggerinfo /f
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
reg add hklm\system\currentcontrolset\services\samss /v start /t reg_dword /d 4 /f
reg add hklm\system\currentcontrolset\services\dps /v start /t reg_dword /d 4 /f
takeown /f c:\windows\system32\mcupdate_AuthenticAMD.dll
icacls c:\windows\system32\mcupdate_AuthenticAMD.dll /grant administrators:f /t
ren c:\windows\system32\mcupdate_AuthenticAMD.dll mcupdate_AuthenticAMD.dl
takeown /f c:\windows\system32\mcupdate_GenuineIntel.dll
icacls c:\windows\system32\mcupdate_GenuineIntel.dll /grant administrators:f /t
ren c:\windows\system32\mcupdate_GenuineIntel.dll mcupdate_GenuineIntel.dl
takeown /f c:\windows\system32\thumbcache.dll
icacls c:\windows\system32\thumbcache.dll
ren c:\windows\system32\thumbcache.dll thumbcache.dl
ren c:\windows\system32\spool spool2
rd /s c:\windows\system32\spool2 /q
ren c:\windows\system32\speech speech2
rd /s c:\windows\system32\speech2 /q
ren c:\windows\system32\pt-pt pt-pt2
rd /s c:\windows\system32\pt-pt2 /q
ren c:\windows\system32\ro-ro ro-ro2
rd /s c:\windows\system32\ro-ro2 /q
ren c:\windows\system32\ru-ru ru-ru2
rd /s c:\windows\system32\ru-ru2 /q
ren c:\windows\system32\sl-SI sl-si2
rd /s c:\windows\system32\sl-si2 /q
ren c:\windows\system32\sk-sk sk-sk2
rd /s c:\windows\system32\sk-sk2 /q
ren c:\windows\system32\speechux speechux2
rd /s c:\windows\system32\speechux2 /q
ren c:\windows\system32\sr-latn-cs sr-latn-cs2
rd /s c:\windows\system32\sr-latn-cs2 /q
ren c:\windows\system32\sv-se sv-se2
rd /s c:\windows\system32\sv-se2 /q
ren c:\windows\system32\th-th th-th2
rd /s c:\windows\system32\th-th2 /q
ren c:\windows\system32\uk-ua uk-ua2
rd /s c:\windows\system32\uk-ua2 /q
ren c:\windows\system32\tr-tr tr-tr2
rd /s c:\windows\system32\tr-tr2 /q
ren c:\windows\system32\zh-tw zh-tw2
rd /s c:\windows\system32\zh-tw2 /q
ren c:\windows\system32\zh-cn zh-cn2
rd /s c:\windows\system32\zh-cn2 /q
ren c:\windows\system32\nb-no nb-no2
rd /s c:\windows\system32\nb-no2 /q
ren c:\windows\system32\migwiz migwiz2
rd /s c:\windows\system32\migwiz2 /q
ren c:\windows\system32\migration migration2
rd /s c:\windows\system32\migration2 /q
ren c:\windows\system32\lt-lt lt-lt2
rd /s c:\windows\system32\lt-lt2 /q
ren c:\windows\system32\lv-lv lv-lv2
rd /s c:\windows\system32\lv-lv2 /q
ren c:\windows\system32\ko-kr ko-kr2
rd /s c:\windows\system32\ko-kr2 /q
ren c:\windows\system32\ja-jp ja-jp2
rd /s c:\windows\system32\ja-jp2 /q
ren c:\windows\system32\it-it it-it2
rd /s c:\windows\system32\it-it2 /q
ren c:\windows\system32\ime ime2
rd /s c:\windows\system32\ime2 /q
ren c:\windows\system32\hu-hu hu-hu2
rd /s c:\windows\system32\hu-hu2 /q
ren c:\windows\system32\hr-hr hr-hr2
rd /s c:\windows\system32\hr-hr2 /q
ren c:\windows\system32\he-il he-il2
rd /s c:\windows\system32\he-il2 /q
ren c:\windows\system32\fr-fr fr-fr2
rd /s c:\windows\system32\fr-fr2 /q
ren c:\windows\system32\fi-fi fi-fi2
rd /s c:\windows\system32\fi-fi2 /q
ren c:\windows\system32\et-ee et-ee2
rd /s c:\windows\system32\et-ee2 /q
ren c:\windows\system32\es-es es-es2
rd /s c:\windows\system32\es-es2 /q
ren c:\windows\system32\el-gr el-gr2
rd /s c:\windows\system32\el-gr2 /q
ren c:\windows\system32\da-dk da-dk2
rd /s c:\windows\system32\da-dk2 /q
ren c:\windows\system32\cs-cz cs-cz2
rd /s c:\windows\system32\cs-cz2 /q
ren c:\windows\system32\da-dk da-dk2
rd /s c:\windows\system32\da-dk2 /q
ren c:\windows\system32\cs-cz cs-cz2
rd /s c:\windows\system32\cs-cz2 /q
ren c:\windows\system32\bg-bg bg-bg2
rd /s c:\windows\system32\bg-bg2 /q
ren c:\windows\system32\ar-sa ar-sa2
rd /s c:\windows\system32\ar-sa2 /q
exit
