reg delete HKEY_CLASSES_ROOT\CLSID\{A6FF50C0-56C0-71CA-5732-BED303A59628} /f
takeown /f c:\windows\system32\logfiles /r /d y
mkdir c:\zTemp
rd /q "C:\Users\default\application data"
rd /s /q C:\Users\default\contacts
rd /q C:\Users\default\cookies
mklink /j C:\Users\default\cookies c:\zTemp
rd /s /q C:\Users\default\downloads
rd /s /q C:\Users\default\favorites
rd /s /q c:\users\default\links
rd /q "C:\Users\default\local settings"
rd C:\Users\default\nethood
rd /s /q C:\Users\default\pictures
rd /s /q C:\Users\default\searches
mklink /j C:\Users\default\searches d:\ztemp
rd /q C:\Users\default\printhood
rd /q C:\Users\default\recent
rd /s /q "c:\users\default\saved games"
rd /q c:\users\default\sendto
rd /q c:\users\default\templates
rd /q "c:\users\default\start menu"
rd /s /q c:\users\default\videos
rd /q "C:\Users\Administrator\application data"
rd /s /q C:\Users\Administrator\contacts
rd /q C:\Users\Administrator\cookies
mklink /j C:\Users\Administrator\cookies c:\zTemp
rd /s /q C:\Users\Administrator\downloads
rd /s /q C:\Users\Administrator\favorites
rd /s /q c:\users\administrator\links
rd /q "C:\Users\Administrator\local settings"
rd C:\Users\Administrator\nethood
rd /s /q C:\Users\Administrator\pictures
rd /s /q C:\Users\Administrator\searches
mklink /j C:\Users\Administrator\searches d:\ztemp
rd /q C:\Users\Administrator\printhood
rd /q C:\Users\Administrator\recent
rd /s /q C:\Users\Administrator\AppData\Roaming\Microsoft\Windows\Recent
mkdir C:\Users\Administrator\AppData\Roaming\Microsoft\Windows\Recent
attrib +r C:\Users\Administrator\AppData\Roaming\Microsoft\Windows\Recent
rd /s /q "c:\users\administrator\saved games"
rd /q c:\users\administrator\sendto
rd /q c:\users\administrator\templates
rd /q "c:\users\administrator\start menu"
rd /s /q c:\users\administrator\videos
rd /s /q C:\Users\Administrator\AppData\Local\temp
mklink /j C:\Users\Administrator\AppData\Local\temp c:\zTemp
rd /s /q c:\windows\temp
mklink /j c:\windows\temp c:\zTemp
rd /q "C:\Users\Administrator\AppData\Local\temporary internet files"
rd /q "C:\Users\Administrator\AppData\Local\application data"
rd /q C:\Users\Administrator\AppData\Local\history
del /q C:\Users\Administrator\AppData\Local\iconcache.db
nul > C:\Users\Administrator\AppData\Local\iconcache.db
attrib +r C:\Users\Administrator\AppData\Local\iconcache.db
del /q C:\Users\Administrator\AppData\Local\gdipfontcachev1.dat
nul > C:\Users\Administrator\AppData\Local\gdipfontcachev1.dat
attrib +r C:\Users\Administrator\AppData\Local\gdipfontcachev1.dat
rd /s /q C:\Users\Administrator\AppData\Local\Microsoft\Windows\WER
mkdir C:\Users\Administrator\AppData\Local\Microsoft\Windows\WER
attrib +r C:\Users\Administrator\AppData\Local\Microsoft\Windows\WER
rd /s /q C:\Users\Administrator\AppData\Local\Microsoft\Windows\History
mklink /j C:\Users\Administrator\AppData\Local\Microsoft\Windows\History c:\zTemp
rd /s /q C:\Users\Administrator\AppData\Local\Microsoft\Windows\Ringtones
rd /s /q C:\Users\Administrator\AppData\Local\Microsoft\Windows\burn
attrib +r C:\Users\Administrator\AppData\Local\Microsoft\Windows\Ringtones
attrib +r C:\Users\Administrator\AppData\Local\Microsoft\Windows\burn
rd /q "C:\Users\default\AppData\Local\"temporary internet files"
rd /q "C:\Users\default\AppData\Local\application data"
rd /q C:\Users\default\AppData\Local\history
del /q C:\Users\default\AppData\Local\iconcache.db
nul > C:\Users\default\AppData\Local\iconcache.db
attrib +r C:\Users\default\AppData\Local\iconcache.db
del /q C:\Users\default\AppData\Local\gdipfontcachev1.dat
nul > C:\Users\default\AppData\Local\gdipfontcachev1.dat
attrib +r C:\Users\default\AppData\Local\gdipfontcachev1.dat
rd /s /q C:\Users\default\AppData\Local\Microsoft\Windows\WER
mkdir C:\Users\default\AppData\Local\Microsoft\Windows\WER
attrib +r C:\Users\default\AppData\Local\Microsoft\Windows\WER
rd /s /q C:\Users\default\AppData\Local\Microsoft\Windows\History
mklink /j C:\Users\default\AppData\Local\Microsoft\Windows\History c:\zTemp
rd /s /q C:\Users\default\AppData\Local\Microsoft\Windows\Ringtones
rd /s /q C:\Users\default\AppData\Local\Microsoft\Windows\burn
attrib +r C:\Users\default\AppData\Local\Microsoft\Windows\Ringtones
attrib +r C:\Users\default\AppData\Local\Microsoft\Windows\burn
rd /q "C:\Users\Administrator\AppData\Local\"temporary internet files"
del /f c:\windows\system32\thumbcache.dll
del /f c:\windows\syswow64\thumbcache.dll
del /f c:\windows\es-es\thumbcache.dll.mui
del /f c:\windows\syswow64\es-es\thumbcache.dll.mui
icacls c:\windows\system32\logfiles /grant system:f
icacls c:\windows\system32\logfiles /grant administrator:f /t
del /f C:\Users\Administrator\AppData\Local\Microsoft\Windows\Explorer\ExplorerStartupLog.etl
del /f C:\Users\Administrator\AppData\Local\Microsoft\Windows\Explorer\ExplorerStartupLog_RunOnce.etl
del /f C:\Users\Administrator\AppData\Local\Microsoft\Windows\Explorer\thumbcache_32.db
del /f C:\Users\Administrator\AppData\Local\Microsoft\Windows\Explorer\thumbcache_96.db
del /f C:\Users\Administrator\AppData\Local\Microsoft\Windows\Explorer\thumbcache_256.db
del /f C:\Users\Administrator\AppData\Local\Microsoft\Windows\Explorer\thumbcache_1024.db
del /f C:\Users\Administrator\AppData\Local\Microsoft\Windows\Explorer\thumbcache_idx.db
del /f C:\Users\Administrator\AppData\Local\Microsoft\Windows\Explorer\thumbcache_sr.db
nul > C:\Users\Administrator\AppData\Local\Microsoft\Windows\Explorer\ExplorerStartupLog.etl
nul > C:\Users\Administrator\AppData\Local\Microsoft\Windows\Explorer\ExplorerStartupLog_RunOnce.etl
nul > C:\Users\Administrator\AppData\Local\Microsoft\Windows\Explorer\thumbcache_32.db
nul > C:\Users\Administrator\AppData\Local\Microsoft\Windows\Explorer\thumbcache_96.db
nul > C:\Users\Administrator\AppData\Local\Microsoft\Windows\Explorer\thumbcache_256.db
nul > C:\Users\Administrator\AppData\Local\Microsoft\Windows\Explorer\thumbcache_1024.db
nul > C:\Users\Administrator\AppData\Local\Microsoft\Windows\Explorer\thumbcache_idx.db
nul > C:\Users\Administrator\AppData\Local\Microsoft\Windows\Explorer\thumbcache_sr.db
attrib +r C:\Users\Administrator\AppData\Local\Microsoft\Windows\Explorer\ExplorerStartupLog.etl
attrib +r C:\Users\Administrator\AppData\Local\Microsoft\Windows\Explorer\ExplorerStartupLog_RunOnce.etl
attrib +r C:\Users\Administrator\AppData\Local\Microsoft\Windows\Explorer\thumbcache_32.db
attrib +r C:\Users\Administrator\AppData\Local\Microsoft\Windows\Explorer\thumbcache_96.db
attrib +r C:\Users\Administrator\AppData\Local\Microsoft\Windows\Explorer\thumbcache_256.db
attrib +r C:\Users\Administrator\AppData\Local\Microsoft\Windows\Explorer\thumbcache_1024.db
attrib +r C:\Users\Administrator\AppData\Local\Microsoft\Windows\Explorer\thumbcache_idx.db
attrib +r C:\Users\Administrator\AppData\Local\Microsoft\Windows\Explorer\thumbcache_sr.db
del /q C:\Windows\System32\config\systemprofile\AppData\Local\Microsoft\Windows\Explorer\thumbcache_32.db
del /q C:\Windows\System32\config\systemprofile\AppData\Local\Microsoft\Windows\Explorer\thumbcache_96.db
del /q C:\Windows\System32\config\systemprofile\AppData\Local\Microsoft\Windows\Explorer\thumbcache_256.db
del /q C:\Windows\System32\config\systemprofile\AppData\Local\Microsoft\Windows\Explorer\thumbcache_1024.db
del /q C:\Windows\System32\config\systemprofile\AppData\Local\Microsoft\Windows\Explorer\thumbcache_idx.db
del /q C:\Windows\System32\config\systemprofile\AppData\Local\Microsoft\Windows\Explorer\thumbcache_sr.db
nul > C:\Windows\System32\config\systemprofile\AppData\Local\Microsoft\Windows\Explorer\thumbcache_32.db
nul > C:\Windows\System32\config\systemprofile\AppData\Local\Microsoft\Windows\Explorer\thumbcache_96.db
nul > C:\Windows\System32\config\systemprofile\AppData\Local\Microsoft\Windows\Explorer\thumbcache_256.db
nul > C:\Windows\System32\config\systemprofile\AppData\Local\Microsoft\Windows\Explorer\thumbcache_1024.db
nul > C:\Windows\System32\config\systemprofile\AppData\Local\Microsoft\Windows\Explorer\thumbcache_idx.db
nul > C:\Windows\System32\config\systemprofile\AppData\Local\Microsoft\Windows\Explorer\thumbcache_sr.db
attrib +r C:\Windows\System32\config\systemprofile\AppData\Local\Microsoft\Windows\Explorer\thumbcache_32.db
attrib +r C:\Windows\System32\config\systemprofile\AppData\Local\Microsoft\Windows\Explorer\thumbcache_96.db
attrib +r C:\Windows\System32\config\systemprofile\AppData\Local\Microsoft\Windows\Explorer\thumbcache_256.db
attrib +r C:\Windows\System32\config\systemprofile\AppData\Local\Microsoft\Windows\Explorer\thumbcache_1024.db
attrib +r C:\Windows\System32\config\systemprofile\AppData\Local\Microsoft\Windows\Explorer\thumbcache_idx.db
attrib +r C:\Windows\System32\config\systemprofile\AppData\Local\Microsoft\Windows\Explorer\thumbcache_sr.db
attrib -s -r -h C:\windows\system32\logfiles
attrib -s -r -h C:\windows\system32\logfiles\ait
attrib -s -r -h C:\windows\system32\logfiles\fax
attrib -s -r -h C:\windows\system32\logfiles\firewall
attrib -s -r -h C:\windows\system32\logfiles\scm
attrib -s -r -h C:\windows\system32\logfiles\sqm
attrib -s -r -h C:\windows\system32\logfiles\wmi
attrib -s -r -h C:\windows\system32\logfiles\wdi
attrib -s -r -h C:\windows\system32\logfiles\wudf
attrib -s -r -h C:\windows\system32\logfiles\wmi\rtbackup
attrib -s -r -h C:\windows\system32\logfiles\fax\incoming
attrib -s -r -h C:\windows\system32\logfiles\fax\outgoing
del /f c:\windows\system32\perfi00a.dat
del /f c:\windows\system32\perfi009.dat
del /f c:\windows\system32\perfh009.dat
del /f c:\windows\system32\perfh00a.dat
del /f c:\windows\system32\perfd009.dat
del /f c:\windows\system32\perfd00a.dat
del /f c:\windows\system32\perfc009.dat
del /f c:\windows\system32\perfc00a.dat
nul > C:\Windows\System32\perfi00a.dat
nul > C:\Windows\System32\perfi009.dat
nul > C:\Windows\System32\perfh009.dat
nul > C:\Windows\System32\perfh00a.dat
nul > C:\Windows\System32\perfd009.dat
nul > C:\Windows\System32\perfd00a.dat
nul > C:\Windows\System32\perfc009.dat
nul > C:\Windows\System32\perfc00a.dat
attrib +r C:\Windows\System32\perfi00a.dat
attrib +r C:\Windows\System32\perfi009.dat
attrib +r C:\Windows\System32\perfh009.dat
attrib +r C:\Windows\System32\perfh00a.dat
attrib +r C:\Windows\System32\perfd009.dat
attrib +r C:\Windows\System32\perfd00a.dat
attrib +r C:\Windows\System32\perfc009.dat
attrib +r C:\Windows\System32\perfc00a.dat
rd /s /q C:\Windows\SoftwareDistribution\DataStore
mkdir C:\Windows\SoftwareDistribution\DataStore
attrib +r C:\Windows\SoftwareDistribution\DataStore
rd /s /q C:\ProgramData\Microsoft\RAC
mkdir C:\ProgramData\Microsoft\RAC
attrib +r C:\ProgramData\Microsoft\RAC
del /q C:\Windows\Panther\setup.etl
nul > C:\Windows\Panther\setup.etl
attrib +r C:\Windows\Panther\setup.etl
del /q C:\Windows\System32\umstartup000.etl
nul > C:\Windows\System32\umstartup000.etl
attrib +r C:\Windows\System32\umstartup000.etl
del /q C:\Windows\System32\umstartup.etl
nul > C:\Windows\System32\umstartup.etl
attrib +r C:\Windows\System32\umstartup.etl
takeown /f C:\Windows\System32\wfp\wfpdiag.etl
icacls C:\Windows\System32\wfp\wfpdiag.etl /grant system:f
icacls C:\Windows\System32\wfp\wfpdiag.etl /grant administrator:f
icacls C:\Windows\System32\wfp\wfpdiag.etl /grant administrators:f
del /q C:\Windows\System32\wfp\wfpdiag.etl
nul > C:\Windows\System32\wfp\wfpdiag.etl
attrib +r C:\Windows\System32\wfp\wfpdiag.etl
del /q C:\Users\default\AppData\Local\Microsoft\Windows\Explorer\ExplorerStartupLog_RunOnce.etl
nul > C:\Users\default\AppData\Local\Microsoft\Windows\Explorer\ExplorerStartupLog_RunOnce.etl
attrib +r C:\Users\default\AppData\Local\Microsoft\Windows\Explorer\ExplorerStartupLog_RunOnce.etl
del /q C:\Users\default\AppData\Local\Microsoft\Windows\Explorer\ExplorerStartupLog.etl
nul > C:\Users\default\AppData\Local\Microsoft\Windows\Explorer\ExplorerStartupLog.etl
attrib +r C:\Users\default\AppData\Local\Microsoft\Windows\Explorer\ExplorerStartupLog.etl
del /q C:\Users\default\AppData\Local\Microsoft\Windows\Explorer\thumbcache_32.db
del /q C:\Users\default\AppData\Local\Microsoft\Windows\Explorer\thumbcache_96.db
del /q C:\Users\default\AppData\Local\Microsoft\Windows\Explorer\thumbcache_256.db
del /q C:\Users\default\AppData\Local\Microsoft\Windows\Explorer\thumbcache_1024.db
del /q C:\Users\default\AppData\Local\Microsoft\Windows\Explorer\thumbcache_idx.db
del /q C:\Users\default\AppData\Local\Microsoft\Windows\Explorer\thumbcache_sr.db
nul > C:\Users\default\AppData\Local\Microsoft\Windows\Explorer\thumbcache_32.db
nul > C:\Users\default\AppData\Local\Microsoft\Windows\Explorer\thumbcache_96.db
nul > C:\Users\default\AppData\Local\Microsoft\Windows\Explorer\thumbcache_256.db
nul > C:\Users\default\AppData\Local\Microsoft\Windows\Explorer\thumbcache_1024.db
nul > C:\Users\default\AppData\Local\Microsoft\Windows\Explorer\thumbcache_idx.db
nul > C:\Users\default\AppData\Local\Microsoft\Windows\Explorer\thumbcache_sr.db
attrib +r C:\Users\default\AppData\Local\Microsoft\Windows\Explorer\thumbcache_32.db
attrib +r C:\Users\default\AppData\Local\Microsoft\Windows\Explorer\thumbcache_96.db
attrib +r C:\Users\default\AppData\Local\Microsoft\Windows\Explorer\thumbcache_256.db
attrib +r C:\Users\default\AppData\Local\Microsoft\Windows\Explorer\thumbcache_1024.db
attrib +r C:\Users\default\AppData\Local\Microsoft\Windows\Explorer\thumbcache_idx.db
attrib +r C:\Users\default\AppData\Local\Microsoft\Windows\Explorer\thumbcache_sr.db
del /q C:\Windows\Prefetch\ReadyBoot\readyboot.etl
nul > C:\Windows\Prefetch\ReadyBoot\readyboot.etl
attrib +r C:\Windows\Prefetch\ReadyBoot\readyboot.etl
del /q C:\Windows\Prefetch\pfsvperfstats.bin
nul > C:\Windows\Prefetch\pfsvperfstats.bin
del /q c:\windows\prefetch\trace.fx
del /q c:\windows\prefetch\trace1.fx
del /q c:\windows\prefetch\trace2.fx
del /q c:\windows\prefetch\trace3.fx
del /q c:\windows\prefetch\trace4.fx
del /q c:\windows\prefetch\trace5.fx
del /q c:\windows\prefetch\trace6.fx
del /q c:\windows\prefetch\trace7.fx
del /q c:\windows\prefetch\trace8.fx
del /q c:\windows\prefetch\trace9.fx
del /q c:\windows\prefetch\trace10.fx
nul > c:\windows\prefetch\readyboot\trace.fx
nul > c:\windows\prefetch\readyboot\trace1.fx
nul > c:\windows\prefetch\readyboot\trace2.fx
nul > c:\windows\prefetch\readyboot\trace3.fx
nul > c:\windows\prefetch\readyboot\trace4.fx
nul > c:\windows\prefetch\readyboot\trace5.fx
nul > c:\windows\prefetch\readyboot\trace6.fx
nul > c:\windows\prefetch\readyboot\trace7.fx
nul > c:\windows\prefetch\readyboot\trace8.fx
nul > c:\windows\prefetch\readyboot\trace9.fx
nul > c:\windows\prefetch\readyboot\trace10.fx
attrib +r c:\windows\prefetch\readyboot\trace.fx
attrib +r c:\windows\prefetch\readyboot\trace1.fx
attrib +r c:\windows\prefetch\readyboot\trace2.fx
attrib +r c:\windows\prefetch\readyboot\trace3.fx
attrib +r c:\windows\prefetch\readyboot\trace4.fx
attrib +r c:\windows\prefetch\readyboot\trace5.fx
attrib +r c:\windows\prefetch\readyboot\trace6.fx
attrib +r c:\windows\prefetch\readyboot\trace7.fx
attrib +r c:\windows\prefetch\readyboot\trace8.fx
attrib +r c:\windows\prefetch\readyboot\trace9.fx
attrib +r c:\windows\prefetch\readyboot\trace10.fx
attrib +r c:\windows\prefetch\readyboot
attrib +r c:\windows\prefetch
rd /s /q C:\Windows\System32\wdi
mkdir C:\Windows\System32\wdi\logfiles
del /q C:\Windows\System32\wdi\LogFiles\WdiContextLog.etl.003
nul > C:\Windows\System32\wdi\LogFiles\WdiContextLog.etl.003
attrib +r C:\Windows\System32\wdi\LogFiles\WdiContextLog.etl.003
del /q C:\Windows\System32\wdi\LogFiles\WdiContextLog.etl.002
nul > C:\Windows\System32\wdi\LogFiles\WdiContextLog.etl.002
attrib +r C:\Windows\System32\wdi\LogFiles\WdiContextLog.etl.002
del /q C:\Windows\System32\wdi\LogFiles\WdiContextLog.etl.001
nul > C:\Windows\System32\wdi\LogFiles\WdiContextLog.etl.001
attrib +r C:\Windows\System32\wdi\LogFiles\WdiContextLog.etl.001
del /q C:\Windows\System32\wdi\LogFiles\ShutdownCKCL.etl
nul > C:\Windows\System32\wdi\LogFiles\ShutdownCKCL.etl
attrib +r C:\Windows\System32\wdi\LogFiles\ShutdownCKCL.etl
del /q C:\Windows\System32\wdi\LogFiles\BootCKCL.etl
nul > C:\Windows\System32\wdi\LogFiles\BootCKCL.etl
attrib +r C:\Windows\System32\wdi\LogFiles\BootCKCL.etl
del /q C:\Windows\System32\LogFiles\SQM\SQMLogger.etl.010
nul > C:\Windows\System32\LogFiles\SQM\SQMLogger.etl.010
attrib +r C:\Windows\System32\LogFiles\SQM\SQMLogger.etl.010
del /q C:\Windows\System32\LogFiles\SQM\SQMLogger.etl.009
nul > C:\Windows\System32\LogFiles\SQM\SQMLogger.etl.009
attrib +r C:\Windows\System32\LogFiles\SQM\SQMLogger.etl.009
del /q C:\Windows\System32\LogFiles\SQM\sqmlogger.etl.008
nul > C:\Windows\System32\LogFiles\SQM\sqmlogger.etl.008
attrib +r C:\Windows\System32\LogFiles\SQM\sqmlogger.etl.008
del /q C:\Windows\System32\LogFiles\SQM\SQMLogger.etl.007
nul > C:\Windows\System32\LogFiles\SQM\SQMLogger.etl.007
attrib +r C:\Windows\System32\LogFiles\SQM\SQMLogger.etl.007
del /q C:\Windows\System32\LogFiles\SQM\SQMLogger.etl.006
nul > C:\Windows\System32\LogFiles\SQM\SQMLogger.etl.006
attrib +r C:\Windows\System32\LogFiles\SQM\SQMLogger.etl.006
del /q C:\Windows\System32\LogFiles\SQM\SQMLogger.etl.005
nul > C:\Windows\System32\LogFiles\SQM\SQMLogger.etl.005
attrib +r C:\Windows\System32\LogFiles\SQM\SQMLogger.etl.005
del /q C:\Windows\System32\LogFiles\SQM\SQMLogger.etl.004
nul > C:\Windows\System32\LogFiles\SQM\SQMLogger.etl.004
attrib +r C:\Windows\System32\LogFiles\SQM\SQMLogger.etl.004
del /q C:\Windows\System32\LogFiles\SQM\SQMLogger.etl.003
nul > C:\Windows\System32\LogFiles\SQM\SQMLogger.etl.003
attrib +r C:\Windows\System32\LogFiles\SQM\SQMLogger.etl.003
del /q C:\Windows\System32\LogFiles\SQM\SQMLogger.etl.002
nul > C:\Windows\System32\LogFiles\SQM\SQMLogger.etl.002
attrib +r C:\Windows\System32\LogFiles\SQM\SQMLogger.etl.002
del /q C:\Windows\System32\LogFiles\SQM\SQMLogger.etl.001
nul > C:\Windows\System32\LogFiles\SQM\SQMLogger.etl.001
attrib +r C:\Windows\System32\LogFiles\SQM\SQMLogger.etl.001
del /q C:\Windows\System32\LogFiles\ShutdownCKCL.etl
nul > C:\Windows\System32\LogFiles\ShutdownCKCL.etl
attrib +r C:\Windows\System32\LogFiles\ShutdownCKCL.etl
del /q C:\Windows\System32\LogFiles\BootCKCL.etl
nul > C:\Windows\System32\LogFiles\BootCKCL.etl
attrib +r C:\Windows\System32\LogFiles\BootCKCL.etl
del /q C:\Windows\System32\LogFiles\AIT\AitEventLog.etl.005
nul > C:\Windows\System32\LogFiles\AIT\AitEventLog.etl.005
attrib +r C:\Windows\System32\LogFiles\AIT\AitEventLog.etl.005
del /q C:\Windows\System32\LogFiles\AIT\AitEventLog.etl.004
nul > C:\Windows\System32\LogFiles\AIT\AitEventLog.etl.004
attrib +r C:\Windows\System32\LogFiles\AIT\AitEventLog.etl.004
del /q C:\Windows\System32\LogFiles\AIT\aiteventlog.etl.003
nul > C:\Windows\System32\LogFiles\AIT\aiteventlog.etl.003
attrib +r C:\Windows\System32\LogFiles\AIT\aiteventlog.etl.003
del /q C:\Windows\System32\LogFiles\AIT\AitEvenytLog.etl.002
nul > C:\Windows\System32\LogFiles\AIT\AitEventLog.etl.002
attrib +r C:\Windows\System32\LogFiles\AIT\AitEventLog.etl.002
del /q C:\Windows\System32\LogFiles\AIT\AitEventLog.etl.001
nul > C:\Windows\System32\LogFiles\AIT\AitEventLog.etl.001
attrib +r C:\Windows\System32\LogFiles\AIT\AitEventLog.etl.001
del /q C:\Windows\System32\LogFiles\WMI\Terminal-Services-Unified-APIs.etl
nul > C:\Windows\System32\LogFiles\WMI\Terminal-Services-Unified-APIs.etl
attrib +r C:\Windows\System32\LogFiles\WMI\Terminal-Services-Unified-APIs.etl
del /q C:\Windows\System32\LogFiles\WMI\Terminal-Services-SessionEnv.etl
nul > C:\Windows\System32\LogFiles\WMI\Terminal-Services-SessionEnv.etl
attrib +r C:\Windows\System32\LogFiles\WMI\Terminal-Services-SessionEnv.etl
del /q C:\Windows\System32\LogFiles\WMI\Terminal-Services-RPC-Client.etl
nul > C:\Windows\System32\LogFiles\WMI\Terminal-Services-RPC-Client.etl
attrib +r C:\Windows\System32\LogFiles\WMI\Terminal-Services-RPC-Client.etl
del /q C:\Windows\System32\LogFiles\WMI\Terminal-Services-IP-Virtualization.etl
nul > C:\Windows\System32\LogFiles\WMI\Terminal-Services-IP-Virtualization.etl
attrib +r C:\Windows\System32\LogFiles\WMI\Terminal-Services-IP-Virtualization.etl
del /q C:\Windows\System32\LogFiles\WMI\Terminal-Services-Core.etl
nul > C:\Windows\System32\LogFiles\WMI\Terminal-Services-Core.etl
attrib +r C:\Windows\System32\LogFiles\WMI\Terminal-Services-Core.etl
takeown /f C:\Windows\System32\LogFiles\WMI\RtBackup\EtwRTUBPM.etl
icacls C:\Windows\System32\LogFiles\WMI\RtBackup\EtwRTUBPM.etl /grant system:f
icacls C:\Windows\System32\LogFiles\WMI\RtBackup\EtwRTUBPM.etl /grant administrator:f
icacls C:\Windows\System32\LogFiles\WMI\RtBackup\EtwRTUBPM.etl /grant administrators:f
del /q C:\Windows\System32\LogFiles\WMI\RtBackup\EtwRTUBPM.etl
nul > C:\Windows\System32\LogFiles\WMI\RtBackup\EtwRTUBPM.etl
attrib +r C:\Windows\System32\LogFiles\WMI\RtBackup\EtwRTUBPM.etl
del /q C:\Windows\System32\LogFiles\WMI\RtBackup\EtwRTMsMpPsSession7.etl
nul > C:\Windows\System32\LogFiles\WMI\RtBackup\EtwRTMsMpPsSession7.etl
attrib +r C:\Windows\System32\LogFiles\WMI\RtBackup\EtwRTMsMpPsSession7.etl
del /q C:\Windows\System32\LogFiles\WMI\RtBackup\EtwRTEventLog-System.etl
nul > C:\Windows\System32\LogFiles\WMI\RtBackup\EtwRTEventLog-System.etl
attrib +r C:\Windows\System32\LogFiles\WMI\RtBackup\EtwRTEventLog-System.etl
del /q C:\Windows\System32\LogFiles\WMI\RtBackup\EtwRTEventLog-Security.etl
nul > C:\Windows\System32\LogFiles\WMI\RtBackup\EtwRTEventLog-Security.etl
attrib +r C:\Windows\System32\LogFiles\WMI\RtBackup\EtwRTEventLog-Security.etl
del /q C:\Windows\System32\LogFiles\WMI\RtBackup\EtwRTEventLog-Application.etl
nul > C:\Windows\System32\LogFiles\WMI\RtBackup\EtwRTEventLog-Application.etl
attrib +r C:\Windows\System32\LogFiles\WMI\RtBackup\EtwRTEventLog-Application.etl
del /q C:\Windows\System32\LogFiles\WMI\RtBackup\EtwRTDiagLog.etl
nul > C:\Windows\System32\LogFiles\WMI\RtBackup\EtwRTDiagLog.etl
attrib +r C:\Windows\System32\LogFiles\WMI\RtBackup\EtwRTDiagLog.etl
del /q C:\Windows\System32\LogFiles\WMI\RtBackup\EtwRTPhEtRundownLogger.etl
nul > C:\Windows\System32\LogFiles\WMI\RtBackup\EtwRTPhEtRundownLogger.etl
attrib +r C:\Windows\System32\LogFiles\WMI\RtBackup\EtwRTPhEtRundownLogger.etl
del /q "C:\Windows\System32\LogFiles\WMI\RtBackup\EtwRTSteam Event Tracing.etl"
nul > "C:\Windows\System32\LogFiles\WMI\RtBackup\EtwRTSteam Event Tracing.etl"
attrib +r "C:\Windows\System32\LogFiles\WMI\RtBackup\EtwRTSteam Event Tracing.etl"
del /q C:\Windows\System32\LogFiles\WMI\RtBackup\EtwRTPhEtKernelLogger.etl
nul > C:\Windows\System32\LogFiles\WMI\RtBackup\EtwRTPhEtKernelLogger.etl
attrib +r C:\Windows\System32\LogFiles\WMI\RtBackup\EtwRTPhEtKernelLogger.etl
attrib +r C:\windows\system32\logfiles
attrib +r C:\windows\system32\logfiles\ait
attrib +r C:\windows\system32\logfiles\fax
attrib +r C:\windows\system32\logfiles\firewall
attrib +r C:\windows\system32\logfiles\scm
attrib +r C:\windows\system32\logfiles\sqm
attrib +r C:\windows\system32\logfiles\wmi
attrib +r C:\windows\system32\logfiles\wudf
attrib +r C:\windows\system32\logfiles\wmi\rtbackup
attrib +r C:\windows\system32\logfiles\fax\incoming
attrib +r C:\windows\system32\logfiles\fax\outgoing
del /q C:\Windows\System32\wdi\ShutdownPerformanceDiagnostics_SystemData.bin
nul > C:\Windows\System32\wdi\ShutdownPerformanceDiagnostics_SystemData.bin
attrib +r C:\Windows\System32\wdi\ShutdownPerformanceDiagnostics_SystemData.bin
del /q C:\Windows\System32\wdi\BootPerformanceDiagnostics_SystemData.bin
nul > C:\Windows\System32\wdi\BootPerformanceDiagnostics_SystemData.bin
attrib +r C:\Windows\System32\wdi\BootPerformanceDiagnostics_SystemData.bin
attrib +r C:\Windows\System32\wdi
attrib +r C:\Windows\System32\wdi\logfiles
rd /s /q C:\ProgramData\Microsoft\Windows\wer
rd /s /q C:\ProgramData\Microsoft\Windows\caches
rd /s /q C:\ProgramData\Microsoft\Windows\ait
rd /s /q C:\ProgramData\Microsoft\Windows\devicemetadatastore
rd /s /q C:\ProgramData\Microsoft\Windows\sqm
rd /s /q C:\ProgramData\Microsoft\Windows\ringtones
rd /s /q C:\Users\Administrator\AppData\LocalLow\Microsoft\cryptneturlcache
rd /s /q C:\Windows\System32\config\systemprofile\AppData\LocalLow\Microsoftcryptneturlcache
rd /s /q C:\Windows\SysWOW64\config\systemprofile\AppData\LocalLow\Microsoft\cryptneturlcache
mkdir  C:\Windows\SysWOW64\config\systemprofile\AppData\LocalLow\Microsoft\cryptneturlcache
mkdir  C:\Windows\System32\config\systemprofile\AppData\LocalLow\Microsoftcryptneturlcache
mkdir C:\Users\Administrator\AppData\LocalLow\Microsoft\cryptneturlcache
mkdir C:\Users\Default\AppData\LocalLow\Microsoft\cryptneturlcache
attrib +r C:\Windows\SysWOW64\config\systemprofile\AppData\LocalLow\Microsoft\cryptneturlcache
attrib +r C:\Windows\System32\config\systemprofile\AppData\LocalLow\Microsoftcryptneturlcache
attrib +r C:\Users\Administrator\AppData\LocalLow\Microsoft\cryptneturlcache
attrib +r C:\Users\default\AppData\LocalLow\Microsoft\cryptneturlcache
mkdir C:\ProgramData\Microsoft\Windows\wer
mkdir C:\ProgramData\Microsoft\Windows\caches
mkdir C:\ProgramData\Microsoft\Windows\ait
mkdir C:\ProgramData\Microsoft\Windows\devicemetadatastore
mkdir C:\ProgramData\Microsoft\Windows\sqm
attrib +r C:\ProgramData\Microsoft\Windows\wer
attrib +r C:\ProgramData\Microsoft\Windows\caches
attrib +r C:\ProgramData\Microsoft\Windows\ait
attrib +r C:\ProgramData\Microsoft\Windows\devicemetadatastore
attrib +r C:\ProgramData\Microsoft\Windows\sqm
del /q c:\windows\system32\config\systemprofile\appdata\local\microsoft\windows\explorer\explorerstartuplog.etl
del /q c:\windows\system32\config\systemprofile\appdata\local\microsoft\windows\explorer\explorerstartuplog_runonce.etl
nul > c:\windows\system32\config\systemprofile\appdata\local\microsoft\windows\explorer\explorerstartuplog.etl
nul > /q c:\windows\system32\config\systemprofile\appdata\local\microsoft\windows\explorer\explorerstartuplog_runonce.etl
attrib +r c:\windows\system32\config\systemprofile\appdata\local\microsoft\windows\explorer\explorerstartuplog.etl
attrib +r /q c:\windows\system32\config\systemprofile\appdata\local\microsoft\windows\explorer\explorerstartuplog_runonce.etl
rd /s /q C:\Windows\winsxs\x86_microsoft-windows-t..nailcache.resources_31bf3856ad364e35_6.1.7600.16385_es-es_da1c4bfb8523f11b
rd /s /q C:\Windows\winsxs\amd64_microsoft-windows-t..nailcache.resources_31bf3856ad364e35_6.1.7600.16385_es-es_363ae77f3d816251
rd /s /q C:\Users\Administrator\AppData\Local\Microsoft\Windows\Caches
mkdir C:\Users\Administrator\AppData\Local\Microsoft\Windows\Caches
nul > C:\Users\Administrator\AppData\Local\Microsoft\Windows\Caches\cversions.1.db
attrib +r C:\Users\Administrator\AppData\Local\Microsoft\Windows\Caches\cversions1.db
nul > C:\Users\Administrator\AppData\Local\Microsoft\Windows\Caches\{AFBF9F1A-8EE8-4C77-AF34-C647E37CA0D9}.1.ver0x0000000000000001.db
nul > C:\Users\Administrator\AppData\Local\Microsoft\Windows\Caches\{AFBF9F1A-8EE8-4C77-AF34-C647E37CA0D9}.1.ver0x0000000000000002.db
attrib +r C:\Users\Administrator\AppData\Local\Microsoft\Windows\Caches\{AFBF9F1A-8EE8-4C77-AF34-C647E37CA0D9}.1.ver0x0000000000000001.db
attrib +r C:\Users\Administrator\AppData\Local\Microsoft\Windows\Caches\{AFBF9F1A-8EE8-4C77-AF34-C647E37CA0D9}.1.ver0x0000000000000002.db
rd /s /q C:\Users\default\AppData\Local\Microsoft\Windows\Caches
mkdir C:\Users\default\AppData\Local\Microsoft\Windows\Caches
nul > C:\Users\default\AppData\Local\Microsoft\Windows\Caches\cversions.1.db
attrib +r C:\Users\default\AppData\Local\Microsoft\Windows\Caches\cversions1.db
nul > C:\Users\default\AppData\Local\Microsoft\Windows\Caches\{AFBF9F1A-8EE8-4C77-AF34-C647E37CA0D9}.1.ver0x0000000000000001.db
nul > C:\Users\default\AppData\Local\Microsoft\Windows\Caches\{AFBF9F1A-8EE8-4C77-AF34-C647E37CA0D9}.1.ver0x0000000000000002.db
attrib +r C:\Users\default\AppData\Local\Microsoft\Windows\Caches\{AFBF9F1A-8EE8-4C77-AF34-C647E37CA0D9}.1.ver0x0000000000000001.db
attrib +r C:\Users\default\AppData\Local\Microsoft\Windows\Caches\{AFBF9F1A-8EE8-4C77-AF34-C647E37CA0D9}.1.ver0x0000000000000002.db
del /q "C:\ProgramData\Microsoft\Windows\Power Efficiency Diagnostics\energy-trace.etl"
nul > "C:\ProgramData\Microsoft\Windows\Power Efficiency Diagnostics\energy-trace.etl"
attrib +r "C:\ProgramData\Microsoft\Windows\Power Efficiency Diagnostics\energy-trace.etl"
rd /s /q C:\ProgramData\Microsoft\Windows\Caches
mkdir C:\ProgramData\Microsoft\Windows\Caches\
nul > C:\ProgramData\Microsoft\Windows\Caches\cversions.2.db
attrib +r C:\ProgramData\Microsoft\Windows\Caches\cversions2.db
nul > C:\ProgramData\Microsoft\Windows\Caches\{6AF0698E-D558-4F6E-9B3C-3716689AF493}.2.ver0x0000000000000007.db
nul > C:\ProgramData\Microsoft\Windows\Caches\\{DDF571F2-BE98-426D-8288-1A9A39C3FDA2}.2.ver0x0000000000000002.db
attrib +r C:\ProgramData\Microsoft\Windows\Caches\{6AF0698E-D558-4F6E-9B3C-3716689AF493}.2.ver0x0000000000000007.db
attrib +r C:\ProgramData\Microsoft\Windows\Caches\{DDF571F2-BE98-426D-8288-1A9A39C3FDA2}.2.ver0x0000000000000002.db
rd /s /q C:\Windows\Performance\WinSAT\DataStore
mkdir C:\Windows\Performance\WinSAT\DataStore
attrib +r C:\Windows\Performance\WinSAT\DataStore
del /f C:\Windows\Performance\WinSAT\winsat.log
nul > C:\Windows\Performance\WinSAT\winsat.log
attrib +r C:\Windows\Performance\WinSAT\winsat.log
del /f C:\Windows\Performance\WinSAT\winsat.prx
nul > C:\Windows\Performance\WinSAT\winsat.prx
attrib +r C:\Windows\Performance\WinSAT\winsat.prx
del /f c:\windows\system32\logfiles\wmi\lwtnetlog.etl
nul > c:\windows\system32\logfiles\wmi\lwtnetlog.etl
attrib +r c:\windows\system32\logfiles\wmi\lwtnetlog.etl
del /f c:\windows\logs\logonuilog.etl
nul > c:\windows\logs\logonuilog.etl
attrib +r c:\windows\logs\logonuilog.etl
del /f c:\windows\inf\netcfgx.0.etl
nul > c:\windows\inf\netcfgx.0.etl
attrib +r c:\windows\inf\netcfgx.0.etl
del /f c:\windows\inf\netcfgs.0.etl
nul > c:\windows\inf\netcfgs.0.etl
attrib +r c:\windows\inf\netcfgs.0.etl
del /f c:\windows\logs\appreadiness.etl
nul > c:\windows\logs\appreadiness.etl
attrib +r c:\windows\logs\appreadiness.etl
del /f c:\windows\winsxs\temp\logfiles\ntfslog.etl
nul c:\windows\winsxs\temp\logfiles\ntfslog.etl
attrib +r c:\windows\winsxs\temp\logfiles\ntfslog.etl
del /f c:\windows\system32\wfp\wfpdiag.etl
nul > c:\windows\system32\wfp\wfpdiag.etl
attrib +r c:\windows\system32\wfp\wfpdiag.etl
del /f C:\Users\administrator\AppData\Local\Microsoft\Windows\Caches\{3DA71D5A-20CC-432F-A115-DFE92379E91F}.1.ver0x0000000000000036.db
del /f C:\Users\administrator\AppData\Local\Microsoft\Windows\Caches\{3DA71D5A-20CC-432F-A115-DFE92379E91F}.1.ver0x0000000000000037.db
nul > C:\Users\administrator\AppData\Local\Microsoft\Windows\Caches\{3DA71D5A-20CC-432F-A115-DFE92379E91F}.1.ver0x0000000000000036.db
nul > C:\Users\administrator\AppData\Local\Microsoft\Windows\Caches\{3DA71D5A-20CC-432F-A115-DFE92379E91F}.1.ver0x0000000000000037.db
attrib +r C:\Users\administrator\AppData\Local\Microsoft\Windows\Caches\{3DA71D5A-20CC-432F-A115-DFE92379E91F}.1.ver0x0000000000000036.db
attrib +r C:\Users\administrator\AppData\Local\Microsoft\Windows\Caches\{3DA71D5A-20CC-432F-A115-DFE92379E91F}.1.ver0x0000000000000037.db
echo off
echo                         Lovingly hand-edited by MeKLiN Method
EXIT
