reg delete HKEY_CLASSES_ROOT\CLSID\{A6FF50C0-56C0-71CA-5732-BED303A59628} /f
takeown /f c:\windows\system32\logfiles /r /d
icacls c:\windows\system32\logfiles /grant system:f
attrib -s -r -h C:\windows\system32\logfiles
attrib -s -r -h C:\windows\system32\logfiles\ait
attrib -s -r -h C:\windows\system32\logfiles\fax
attrib -s -r -h C:\windows\system32\logfiles\firewall
attrib -s -r -h C:\windows\system32\logfiles\scm
attrib -s -r -h C:\windows\system32\logfiles\sqm
attrib -s -r -h C:\windows\system32\logfiles\wmi
attrib -s -r -h C:\windows\system32\logfiles\wudf
attrib -s -r -h C:\windows\system32\logfiles\wmi\rtbackup
attrib -s -r -h C:\windows\system32\logfiles\fax\incoming
attrib -s -r -h C:\windows\system32\logfiles\fax\outgoing
attrib -s -r -h C:\users\administrator\appdata\local\microsoft\windows\explorer
del /f /q C:\users\administrator\appdata\local\microsoft\windows\explorer\ExplorerStartupLog.etl
nul > C:\users\administrator\appdata\local\microsoft\windows\explorer\ExplorerStartupLog.etl
attrib +r C:\users\administrator\appdata\local\microsoft\windows\explorer\ExplorerStartupLog.etl
del /f /q C:\users\administrator\appdata\local\microsoft\windows\explorer\ExplorerStartupLog_RunOnce.etl
nul > C:\users\administrator\appdata\local\microsoft\windows\explorer\ExplorerStartupLog_RunOnce.etl
attrib +r C:\users\administrator\appdata\local\microsoft\windows\explorer\ExplorerStartupLog_RunOnce.etl
del /f /q C:\Windows\Panther\setup.etl
nul > C:\Windows\Panther\setup.etl
attrib +r C:\Windows\Panther\setup.etl
del /f /q C:\Windows\System32\umstartup000.etl
nul > C:\Windows\System32\umstartup000.etl
attrib +r C:\Windows\System32\umstartup000.etl
del /f /q C:\Windows\System32\umstartup.etl
nul > C:\Windows\System32\umstartup.etl
attrib +r C:\Windows\System32\umstartup.etl
del /f /q C:\Windows\System32\wfp\wfpdiag.etl
nul > C:\Windows\System32\wfp\wfpdiag.etl
attrib +r C:\Windows\System32\wfp\wfpdiag.etl
del /f /q C:\Users\jugador\AppData\Local\Microsoft\Windows\Explorer\ExplorerStartupLog_RunOnce.etl
nul > C:\Users\jugador\AppData\Local\Microsoft\Windows\Explorer\ExplorerStartupLog_RunOnce.etl
attrib +r C:\Users\jugador\AppData\Local\Microsoft\Windows\Explorer\ExplorerStartupLog_RunOnce.etl
del /f /q C:\Users\jugador\AppData\Local\Microsoft\Windows\Explorer\ExplorerStartupLog.etl
nul > C:\Users\jugador\AppData\Local\Microsoft\Windows\Explorer\ExplorerStartupLog.etl
attrib +r C:\Users\jugador\AppData\Local\Microsoft\Windows\Explorer\ExplorerStartupLog.etl
del /f /q C:\Windows\Prefetch\ReadyBoot\readyboot.etl
nul > C:\Windows\Prefetch\ReadyBoot\readyboot.etl
attrib +r C:\Windows\Prefetch\ReadyBoot\readyboot.etl
del /f /q C:\Windows\System32\wdi\LogFiles\WdiContextLog.etl.003
nul > C:\Windows\System32\wdi\LogFiles\WdiContextLog.etl.003
attrib +r C:\Windows\System32\wdi\LogFiles\WdiContextLog.etl.003
del /f /q C:\Windows\System32\wdi\LogFiles\WdiContextLog.etl.002
nul > C:\Windows\System32\wdi\LogFiles\WdiContextLog.etl.002
attrib +r C:\Windows\System32\wdi\LogFiles\WdiContextLog.etl.002
del /f /q C:\Windows\System32\wdi\LogFiles\WdiContextLog.etl.001
nul > C:\Windows\System32\wdi\LogFiles\WdiContextLog.etl.001
attrib +r C:\Windows\System32\wdi\LogFiles\WdiContextLog.etl.001
del /f /q C:\Windows\System32\wdi\{86432a0b-3c7d-4ddf-a89c-172faa90485d}\{fbb5737d-0289-463b-893d-8293d231b9ae}\snapshot.etl
nul > C:\Windows\System32\wdi\{86432a0b-3c7d-4ddf-a89c-172faa90485d}\{fbb5737d-0289-463b-893d-8293d231b9ae}\snapshot.etl
attrib +r C:\Windows\System32\wdi\{86432a0b-3c7d-4ddf-a89c-172faa90485d}\{fbb5737d-0289-463b-893d-8293d231b9ae}\snapshot.etl
del /f /q C:\Windows\System32\wdi\{86432a0b-3c7d-4ddf-a89c-172faa90485d}\{bd3309ab-6c0b-4f83-858e-f40e41c1cf51}\snapshot.etl
nul > C:\Windows\System32\wdi\{86432a0b-3c7d-4ddf-a89c-172faa90485d}\{bd3309ab-6c0b-4f83-858e-f40e41c1cf51}\snapshot.etl
attrib +r C:\Windows\System32\wdi\{86432a0b-3c7d-4ddf-a89c-172faa90485d}\{bd3309ab-6c0b-4f83-858e-f40e41c1cf51}\snapshot.etl
del /f /q C:\Windows\System32\wdi\{86432a0b-3c7d-4ddf-a89c-172faa90485d}\{8449e3c0-e004-4121-b883-1226ad4cce2c}\snapshot.etl
nul > C:\Windows\System32\wdi\{86432a0b-3c7d-4ddf-a89c-172faa90485d}\{8449e3c0-e004-4121-b883-1226ad4cce2c}\snapshot.etl
attrib +r C:\Windows\System32\wdi\{86432a0b-3c7d-4ddf-a89c-172faa90485d}\{8449e3c0-e004-4121-b883-1226ad4cce2c}\snapshot.etl
del /f /q C:\Windows\System32\wdi\LogFiles\ShutdownCKCL.etl
nul > C:\Windows\System32\wdi\LogFiles\ShutdownCKCL.etl
attrib +r C:\Windows\System32\wdi\LogFiles\ShutdownCKCL.etl
del /f /q C:\Windows\System32\wdi\LogFiles\BootCKCL.etl
nul > C:\Windows\System32\wdi\LogFiles\BootCKCL.etl
attrib +r C:\Windows\System32\wdi\LogFiles\BootCKCL.etl
del /f /q C:\Windows\System32\LogFiles\SQM\SQMLogger.etl.010
nul > C:\Windows\System32\LogFiles\SQM\SQMLogger.etl.010
attrib +r C:\Windows\System32\LogFiles\SQM\SQMLogger.etl.010
del /f /q C:\Windows\System32\LogFiles\SQM\SQMLogger.etl.009
nul > C:\Windows\System32\LogFiles\SQM\SQMLogger.etl.009
attrib +r C:\Windows\System32\LogFiles\SQM\SQMLogger.etl.009
del /f /q C:\Windows\System32\LogFiles\SQM\sqmlogger.etl.008
nul > C:\Windows\System32\LogFiles\SQM\sqmlogger.etl.008
attrib +r C:\Windows\System32\LogFiles\SQM\sqmlogger.etl.008
del /f /q C:\Windows\System32\LogFiles\SQM\SQMLogger.etl.007
nul > C:\Windows\System32\LogFiles\SQM\SQMLogger.etl.007
attrib +r C:\Windows\System32\LogFiles\SQM\SQMLogger.etl.007
del /f /q C:\Windows\System32\LogFiles\SQM\SQMLogger.etl.006
nul > C:\Windows\System32\LogFiles\SQM\SQMLogger.etl.006
attrib +r C:\Windows\System32\LogFiles\SQM\SQMLogger.etl.006
del /f /q C:\Windows\System32\LogFiles\SQM\SQMLogger.etl.005
nul > C:\Windows\System32\LogFiles\SQM\SQMLogger.etl.005
attrib +r C:\Windows\System32\LogFiles\SQM\SQMLogger.etl.005
del /f /q C:\Windows\System32\LogFiles\SQM\SQMLogger.etl.004
nul > C:\Windows\System32\LogFiles\SQM\SQMLogger.etl.004
attrib +r C:\Windows\System32\LogFiles\SQM\SQMLogger.etl.004
del /f /q C:\Windows\System32\LogFiles\SQM\SQMLogger.etl.003
nul > C:\Windows\System32\LogFiles\SQM\SQMLogger.etl.003
attrib +r C:\Windows\System32\LogFiles\SQM\SQMLogger.etl.003
del /f /q C:\Windows\System32\LogFiles\SQM\SQMLogger.etl.002
nul > C:\Windows\System32\LogFiles\SQM\SQMLogger.etl.002
attrib +r C:\Windows\System32\LogFiles\SQM\SQMLogger.etl.002
del /f /q C:\Windows\System32\LogFiles\SQM\SQMLogger.etl.001
nul > C:\Windows\System32\LogFiles\SQM\SQMLogger.etl.001
attrib +r C:\Windows\System32\LogFiles\SQM\SQMLogger.etl.001
del /f /q C:\Windows\System32\LogFiles\WdiContextLog.etl.003
nul > C:\Windows\System32\LogFiles\WdiContextLog.etl.003
attrib +r C:\Windows\System32\LogFiles\WdiContextLog.etl.003
del /f /q C:\Windows\System32\LogFiles\WdiContextLog.etl.002
nul > C:\Windows\System32\LogFiles\WdiContextLog.etl.002
attrib +r C:\Windows\System32\LogFiles\WdiContextLog.etl.002
del /f /q C:\Windows\System32\LogFiles\WdiContextLog.etl.001
nul > C:\Windows\System32\LogFiles\WdiContextLog.etl.001
attrib +r C:\Windows\System32\LogFiles\WdiContextLog.etl.001
del /f /q C:\Windows\System32\LogFiles\ShutdownCKCL.etl
nul > C:\Windows\System32\LogFiles\ShutdownCKCL.etl
attrib +r C:\Windows\System32\LogFiles\ShutdownCKCL.etl
del /f /q C:\Windows\System32\LogFiles\BootCKCL.etl
nul > C:\Windows\System32\LogFiles\BootCKCL.etl
attrib +r C:\Windows\System32\LogFiles\BootCKCL.etl
del /f /q C:\Windows\System32\LogFiles\AIT\AitEventLog.etl.005
nul > C:\Windows\System32\LogFiles\AIT\AitEventLog.etl.005
attrib +r C:\Windows\System32\LogFiles\AIT\AitEventLog.etl.005
del /f /q C:\Windows\System32\LogFiles\AIT\AitEventLog.etl.004
nul > C:\Windows\System32\LogFiles\AIT\AitEventLog.etl.004
attrib +r C:\Windows\System32\LogFiles\AIT\AitEventLog.etl.004
del /f /q C:\Windows\System32\LogFiles\AIT\aiteventlog.etl.003
nul > C:\Windows\System32\LogFiles\AIT\aiteventlog.etl.003
attrib +r C:\Windows\System32\LogFiles\AIT\aiteventlog.etl.003
del /f /q C:\Windows\System32\LogFiles\AIT\AitEventLog.etl.002
nul > C:\Windows\System32\LogFiles\AIT\AitEventLog.etl.002
attrib +r C:\Windows\System32\LogFiles\AIT\AitEventLog.etl.002
del /f /q C:\Windows\System32\LogFiles\AIT\AitEventLog.etl.001
nul > C:\Windows\System32\LogFiles\AIT\AitEventLog.etl.001
attrib +r C:\Windows\System32\LogFiles\AIT\AitEventLog.etl.001
del /f /q C:\Windows\System32\LogFiles\WMI\Terminal-Services-Unified-APIs.etl
nul > C:\Windows\System32\LogFiles\WMI\Terminal-Services-Unified-APIs.etl
attrib +r C:\Windows\System32\LogFiles\WMI\Terminal-Services-Unified-APIs.etl
del /f /q C:\Windows\System32\LogFiles\WMI\Terminal-Services-SessionEnv.etl
nul > C:\Windows\System32\LogFiles\WMI\Terminal-Services-SessionEnv.etl
attrib +r C:\Windows\System32\LogFiles\WMI\Terminal-Services-SessionEnv.etl
del /f /q C:\Windows\System32\LogFiles\WMI\Terminal-Services-RPC-Client.etl
nul > C:\Windows\System32\LogFiles\WMI\Terminal-Services-RPC-Client.etl
attrib +r C:\Windows\System32\LogFiles\WMI\Terminal-Services-RPC-Client.etl
del /f /q C:\Windows\System32\LogFiles\WMI\Terminal-Services-IP-Virtualization.etl
nul > C:\Windows\System32\LogFiles\WMI\Terminal-Services-IP-Virtualization.etl
attrib +r C:\Windows\System32\LogFiles\WMI\Terminal-Services-IP-Virtualization.etl
del /f /q C:\Windows\System32\LogFiles\WMI\Terminal-Services-Core.etl
nul > C:\Windows\System32\LogFiles\WMI\Terminal-Services-Core.etl
attrib +r C:\Windows\System32\LogFiles\WMI\Terminal-Services-Core.etl
del /f /q C:\Windows\System32\LogFiles\WMI\RtBackup\EtwRTUBPM.etl
nul > C:\Windows\System32\LogFiles\WMI\RtBackup\EtwRTUBPM.etl
attrib +r C:\Windows\System32\LogFiles\WMI\RtBackup\EtwRTUBPM.etl
del /f /q C:\Windows\System32\LogFiles\WMI\RtBackup\EtwRTMsMpPsSession7.etl
nul > C:\Windows\System32\LogFiles\WMI\RtBackup\EtwRTMsMpPsSession7.etl
attrib +r C:\Windows\System32\LogFiles\WMI\RtBackup\EtwRTMsMpPsSession7.etl
del /f /q C:\Windows\System32\LogFiles\WMI\RtBackup\EtwRTEventLog-System.etl
nul > C:\Windows\System32\LogFiles\WMI\RtBackup\EtwRTEventLog-System.etl
attrib +r C:\Windows\System32\LogFiles\WMI\RtBackup\EtwRTEventLog-System.etl
del /f /q C:\Windows\System32\LogFiles\WMI\RtBackup\EtwRTEventLog-Security.etl
nul > C:\Windows\System32\LogFiles\WMI\RtBackup\EtwRTEventLog-Security.etl
attrib +r C:\Windows\System32\LogFiles\WMI\RtBackup\EtwRTEventLog-Security.etl
del /f /q C:\Windows\System32\LogFiles\WMI\RtBackup\EtwRTEventLog-Application.etl
nul > C:\Windows\System32\LogFiles\WMI\RtBackup\EtwRTEventLog-Application.etl
attrib +r C:\Windows\System32\LogFiles\WMI\RtBackup\EtwRTEventLog-Application.etl
del /f /q C:\Windows\System32\LogFiles\WMI\RtBackup\EtwRTDiagLog.etl
nul > C:\Windows\System32\LogFiles\WMI\RtBackup\EtwRTDiagLog.etl
attrib +r C:\Windows\System32\LogFiles\WMI\RtBackup\EtwRTDiagLog.etl
del /f /q C:\Windows\System32\LogFiles\WMI\RtBackup\EtwrRTPhEtRundownLogger.etl
nul > C:\Windows\System32\LogFiles\WMI\RtBackup\EtwrRTPhEtRundownLogger.etl
attrib +r C:\Windows\System32\LogFiles\WMI\RtBackup\EtwrRTPhEtRundownLogger.etl
del /f /q C:\Windows\System32\LogFiles\WMI\RtBackup\EtwRTSteam Event Tracing.etl
nul > C:\Windows\System32\LogFiles\WMI\RtBackup\EtwRTSteam Event Tracing.etl
attrib +r C:\Windows\System32\LogFiles\WMI\RtBackup\EtwRTSteam Event Tracing.etl
del /f /q C:\Windows\System32\LogFiles\WMI\RtBackup\EtwRTPhEtKernelLogger.etl
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
attrib +r C:\Users\jugador\AppData\Local\Microsoft\Windows\Explorer
del /f /q C:\Windows\System32\wdi\ShutdownPerformanceDiagnostics_SystemData.bin
nul > C:\Windows\System32\wdi\ShutdownPerformanceDiagnostics_SystemData.bin
attrib +r C:\Windows\System32\wdi\ShutdownPerformanceDiagnostics_SystemData.bin
del /f /q C:\Windows\System32\wdi\BootPerformanceDiagnostics_SystemData.bin
nul > C:\Windows\System32\wdi\BootPerformanceDiagnostics_SystemData.bin
attrib +r C:\Windows\System32\wdi\BootPerformanceDiagnostics_SystemData.bin
attrib +r C:\Windows\System32\wdi
attrib +r C:\Windows\System32\wdi\logfiles
attrib +r C:\Windows\System32\wdi\perftrack
attrib +r C:\Windows\System32\wdi\perftrack\traces
rd /s /q C:\ProgramData\Microsoft\Windows\wer
rd /s /q C:\ProgramData\Microsoft\Windows\caches
rd /s /q C:\ProgramData\Microsoft\Windows\ait
rd /s /q C:\ProgramData\Microsoft\Windows\devicemetadatastore
rd /s /q C:\ProgramData\Microsoft\Windows\sqm
rd /s /q C:\ProgramData\Microsoft\Windows\ringtones
rd /s /q C:\Users\jugador\AppData\LocalLow\Microsoft\cryptneturlcache
rd /s /q C:\Windows\System32\config\systemprofile\AppData\LocalLow\Microsoftcryptneturlcache
rd /s /q C:\Windows\SysWOW64\config\systemprofile\AppData\LocalLow\Microsoft\cryptneturlcache
mkdir rd /s /q C:\Windows\SysWOW64\config\systemprofile\AppData\LocalLow\Microsoft\cryptneturlcache
mkdir rd /s /q C:\Windows\System32\config\systemprofile\AppData\LocalLow\Microsoftcryptneturlcache
mkdir rd /s /q C:\Users\jugador\AppData\LocalLow\Microsoft\cryptneturlcache
attrib +r C:\Windows\SysWOW64\config\systemprofile\AppData\LocalLow\Microsoft\cryptneturlcache
attrib +r C:\Windows\System32\config\systemprofile\AppData\LocalLow\Microsoftcryptneturlcache
attrib +r C:\Users\jugador\AppData\LocalLow\Microsoft\cryptneturlcache
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
EXIT