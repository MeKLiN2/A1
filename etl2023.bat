reg delete HKEY_CLASSES_ROOT\CLSID\{A6FF50C0-56C0-71CA-5732-BED303A59628} /f
takeown /f c:\windows\system32\logfiles /r /d
mkdir c:\ZTEMP
rd /s /q c:\users\Administrator\appdata\local\microsoft\wer
mkdir c:\users\Administrator\appdata\local\microsoft\WER
attrib +r +s +h c:\users\Administrator\appdata\local\microsoft\wer
mkdir c:\users\Administrator\appdata\local\microsoft\webcache
rd /s /q c:\recovery
mkdir c:\recovery
attrib +r +s +h c:\recovery
rd /s /q "c:\system volume information"
nul > "c:\system volume information"
attrib +r +s +h "c:\system volume information"
rd /s /q C:\Windows\System32\SleepStudy
mklink /j C:\Windows\System32\SleepStudy X:\%NOWHERE%
del /f /q C:\USERS\Administrator\AppData\Local\ConnectedDevicesPlatform\cdpglobalsettings.cdp
del /f /q "C:\USERS\Administrator\AppData\Local\ConnectedDevicesPlatform\connected devices platform certificates.sst"
del /f /q C:\USERS\Administrator\AppData\Local\ConnectedDevicesPlatform\l.administrator.cdp
del /f /q C:\USERS\Administrator\AppData\Local\ConnectedDevicesPlatform\l.administrator.cdpresource
del /f /q C:\USERS\Administrator\AppData\Local\ConnectedDevicesPlatform\l.administrator\activitiescache.db-shm
del /f /q C:\USERS\Administrator\AppData\Local\ConnectedDevicesPlatform\l.administrator\activitiescache.db-wal
del /f /q C:\USERS\Administrator\AppData\Local\ConnectedDevicesPlatform\l.administrator\activitiescache.db
nul > C:\USERS\Administrator\AppData\Local\ConnectedDevicesPlatform\cdpglobalsettings.cdp
nul > "C:\USERS\Administrator\AppData\Local\ConnectedDevicesPlatform\connected devices platform certificates.sst"
nul > C:\USERS\Administrator\AppData\Local\ConnectedDevicesPlatform\l.administrator.cdp
nul > C:\USERS\Administrator\AppData\Local\ConnectedDevicesPlatform\l.administrator.cdpresource
nul > C:\USERS\Administrator\AppData\Local\ConnectedDevicesPlatform\l.administrator\activitiescache.db-shm
nul > C:\USERS\Administrator\AppData\Local\ConnectedDevicesPlatform\l.administrator\activitiescache.db-wal
nul > C:\USES\Administrator\AppData\Local\ConnectedDevicesPlatform\l.administrator\activitiescache.db
attrib +r +s +h C:\USERS\Administrator\AppData\Local\ConnectedDevicesPlatform\cdpglobalsettings.cdp
attrib +r +s +h "C:\USERS\Administrator\AppData\Local\ConnectedDevicesPlatform\connected devices platform certificates.sst"
attrib +r +s +h C:\USERS\Administrator\AppData\Local\ConnectedDevicesPlatform\l.administrator.cdp
attrib +r +s +h C:\USERS\Administrator\AppData\Local\ConnectedDevicesPlatform\l.administrator.cdpresource
attrib +r +s +h C:\USERS\Administrator\AppData\Local\ConnectedDevicesPlatform\l.administrator\activitiescache.db-shm
attrib +r +s +h C:\USERS\Administrator\AppData\Local\ConnectedDevicesPlatform\l.administrator\activitiescache.db-wal
attrib +r +s +h C:\USERS\Administrator\AppData\Local\ConnectedDevicesPlatform\l.administrator\activitiescache.db
del /f /q C:\USERS\Administrator\AppData\Local\Microsoft\Windows\WebCache\webcachev01.jfm
del /f /q C:\USERS\Administrator\AppData\Local\Microsoft\Windows\WebCache\v01.log
nul > C:\USERS\Administrator\AppData\Local\Microsoft\Windows\WebCache\webcachev01.jfm
attrib +r +s +h C:\USERS\Administrator\AppData\Local\Microsoft\Windows\WebCache\webcachev01.jfm
nul > C:\USERS\Administrator\AppData\Local\Microsoft\Windows\WebCache\v01.log
attrib +r +s +h C:\USERS\Administrator\AppData\Local\Microsoft\Windows\WebCache\v01.log
del /f /q C:\ProgramData\Microsoft\DiagnosticLogCSP\Collectors\DiagnosticLogCSP_Collector_DeviceProvisioning.etl
nul > C:\ProgramData\Microsoft\DiagnosticLogCSP\Collectors\DiagnosticLogCSP_Collector_DeviceProvisioning.etl
attrib +r +s +h C:\ProgramData\Microsoft\DiagnosticLogCSP\Collectors\DiagnosticLogCSP_Collector_DeviceProvisioning.etl
del /f /q C:\users\DefaultAccount\AppData\Local\Microsoft\Windows\WebCache\WebCacheV01.jfm
del /f /q C:\users\DefaultAccount\AppData\Local\Microsoft\Windows\WebCache\WebCacheV01.dat
del /f /q C:\users\DefaultAccount\AppData\Local\Microsoft\Windows\WebCache\v01.log
del /f /q C:\users\DefaultAccount\AppData\Local\Microsoft\Windows\WebCache\v01.chk
nul > C:\users\DefaultAccount\AppData\Local\Microsoft\Windows\WebCache\WebCacheV01.jfm
nul > C:\users\DefaultAccount\AppData\Local\Microsoft\Windows\WebCache\WebCacheV01.dat
nul > C:\users\DefaultAccount\AppData\Local\Microsoft\Windows\WebCache\v01.log
nul > C:\users\DefaultAccount\AppData\Local\Microsoft\Windows\WebCache\v01.chk
attrib +r +s +h C:\users\DefaultAccount\AppData\Local\Microsoft\Windows\WebCache\WebCacheV01.jfm
attrib +r +s +h C:\users\DefaultAccount\AppData\Local\Microsoft\Windows\WebCache\WebCacheV01.dat
attrib +r +s +h C:\users\DefaultAccount\AppData\Local\Microsoft\Windows\WebCache\v01.log
attrib +r +s +h C:\users\DefaultAccount\AppData\Local\Microsoft\Windows\WebCache\v01.chk
del /f /q C:\users\Default\AppData\Local\Microsoft\Windows\WebCache\WebCacheV01.dat
del /f /q C:\users\Default\AppData\Local\Microsoft\Windows\WebCache\v01.log
del /f /q C:\users\Default\AppData\Local\Microsoft\Windows\WebCache\v01.chk
nul > C:\users\Default\AppData\Local\Microsoft\Windows\WebCache\WebCacheV01.jfm
nul > C:\users\Default\AppData\Local\Microsoft\Windows\WebCache\WebCacheV01.dat
nul > C:\users\Default\AppData\Local\Microsoft\Windows\WebCache\v01.log
nul > C:\users\Default\AppData\Local\Microsoft\Windows\WebCache\v01.chk
attrib +r +s +h C:\users\Default\AppData\Local\Microsoft\Windows\WebCache\WebCacheV01.jfm
attrib +r +s +h C:\users\Default\AppData\Local\Microsoft\Windows\WebCache\WebCacheV01.dat
attrib +r +s +h C:\users\Default\AppData\Local\Microsoft\Windows\WebCache\v01.log
attrib +r +s +h C:\users\Default\AppData\Local\Microsoft\Windows\WebCache\v01.chk
del /f /q C:\USERS\Administrator\AppData\Local\Microsoft\Windows\WebCache\v01.chk
del /f /q C:\USERS\Administrator\AppData\Local\Microsoft\Windows\WebCache\webcachev01.dat
nul > C:\USERS\Administrator\AppData\Local\Microsoft\Windows\WebCache\v01.chk
nul > C:\USERS\Administrator\AppData\Local\Microsoft\Windows\WebCache\webcachev01.dat
attrib +r +s +h C:\USERS\Administrator\AppData\Local\Microsoft\Windows\WebCache\v01.chk
attrib +r +s +h !hoC:\USERS\Administrator\AppData\Local\Microsoft\Windows\WebCache\webcachev01.dat
attrib +r +s +h c:\users\Administrator\appdata\local\microsoft\windows\webcache
del /f /q C:\ProgramData\Microsoft\Windows\DeviceMetadataCache\dmrc.idx
nul > C:\ProgramData\Microsoft\Windows\DeviceMetadataCache\dmrc.idx
attrib +r +s +h C:\ProgramData\Microsoft\Windows\DeviceMetadataCache\dmrc.idx
del /s /q c:\windows\system32\wlrmdr.exe
nul > c:\windows\system32\wlrmdr.exe
attrib +r +s +h c:\windows\system32\wlrmdr.exe
ren c:\windows\system32\slui.exe slui.ex
ren c:\windows\system32\sppsvc.exe sppsvc.ex
rd /s /q "C:\USERS\Administrator\application data"
rd "c:\users\administrator\my documents"
rd "c:\users\administrator\3d objects"
rd "c:\users\administrator\music"
rd /s /q C:\USERS\Administrator\contacts
rd /s /q C:\USERS\Administrator\cookies
mklink /j C:\USERS\Administrator\cookies X:\%NOWHERE%
rd /s /q C:\USERS\Administrator\downloads
rd /s /q C:\USERS\Administrator\favorites
rd /s /q C:\USERS\Administrator\links
rd /s /q "C:\USERS\Administrator\local settings"
rd C:\USERS\Administrator\nethood
rd /s /q C:\USERS\Administrator\pictures
rd /s /q C:\USERS\Administrator\searches
mklink /j C:\USERS\Administrator\searches X:\%NOWHERE%
rd /s /q C:\USERS\Administrator\printhood
rd /s /q C:\USERS\Administrator\recent
rd /s /q C:\USERS\Administrator\AppData\Roaming\Microsoft\Windows\Recent
mkdir C:\USERS\Administrator\AppData\Roaming\Microsoft\Windows\Recent
attrib +r C:\USERS\Administrator\AppData\Roaming\Microsoft\Windows\Recent
del /f /q C:\Windows\System32\LogFiles\WMI\NtfsLog.etl
del /f /q C:\Windows\System32\LogFiles\WMI\Microsoft-Windows-Rdp-Graphics-RdpIdd-Trace.etl
del /f /q C:\USERS\Administrator\AppData\Local\Packages\Microsoft.Messaging_8wekyb3d8bbwe\LocalCache\MessagingBackgroundTaskLog.etl
del /f /q C:\USERS\Administrator\AppData\Local\Packages\Microsoft.Messaging_8wekyb3d8bbwe\Settings\settings.dat
del /f /q C:\USERS\Administrator\AppData\Local\Packages\Microsoft.Messaging_8wekyb3d8bbwe\LocalCache\HasRegisteredAsDefaultApp.setting
del /f /q C:\USERS\Administrator\AppData\Local\Packages\Microsoft.Messaging_8wekyb3d8bbwe\Settings\roaming.lock
nul > C:\Windows\System32\LogFiles\WMI\NtfsLog.etl
nul > C:\Windows\System32\LogFiles\WMI\Microsoft-Windows-Rdp-Graphics-RdpIdd-Trace.etl
nul > C:\USERS\Administrator\AppData\Local\Packages\Microsoft.Messaging_8wekyb3d8bbwe\LocalCache\MessagingBackgroundTaskLog.etl
nul > C:\USERS\Administrator\AppData\Local\Packages\Microsoft.Messaging_8wekyb3d8bbwe\Settings\settings.dat
nul > C:\USERS\Administrator\AppData\Local\Packages\Microsoft.Messaging_8wekyb3d8bbwe\LocalCache\HasRegisteredAsDefaultApp.setting
nul > C:\USERS\Administrator\AppData\Local\Packages\Microsoft.Messaging_8wekyb3d8bbwe\Settings\roaming.lock
attrib +r C:\Windows\System32\LogFiles\WMI\NtfsLog.etl
attrib +r C:\Windows\System32\LogFiles\WMI\Microsoft-Windows-Rdp-Graphics-RdpIdd-Trace.etl
attrib +r C:\USERS\Administrator\AppData\Local\Packages\Microsoft.Messaging_8wekyb3d8bbwe\LocalCache\MessagingBackgroundTaskLog.etl
attrib +r C:\USERS\Administrator\AppData\Local\Packages\Microsoft.Messaging_8wekyb3d8bbwe\Settings\settings.dat
attrib +r C:\USERS\Administrator\AppData\Local\Packages\Microsoft.Messaging_8wekyb3d8bbwe\LocalCache\HasRegisteredAsDefaultApp.setting
attrib +r C:\USERS\Administrator\AppData\Local\Packages\Microsoft.Messaging_8wekyb3d8bbwe\Settings\roaming.lock
attrib +r +s +h C:\USERS\Administrator\AppData\Local\Packages\Microsoft.Messaging_8wekyb3d8bbwe
del /f /q c:\windows\System32\LogFiles\WMI\Wifi.etl
nul > c:\windows\System32\LogFiles\WMI\Wifi.etl
attrib +r c:\windows\System32\LogFiles\WMI\Wifi.etl
del /f /q C:\Windows\System32\LogFiles\WMI\WifiDriverIHVSessionRepro.etl
nul > C:\Windows\System32\LogFiles\WMI\WifiDriverIHVSessionRepro.etl
attrib +r C:\Windows\System32\LogFiles\WMI\WifiDriverIHVSessionRepro.etl
del /f /q C:\Windows\System32\LogFiles\WMI\wfp.etl
nul > C:\Windows\System32\LogFiles\WMI\wfp.etl
attrib +r C:\Windows\System32\LogFiles\WMI\wfp.etl
del /f /q C:\Windows\System32\LogFiles\WMI\Tpm.etl
nul > C:\Windows\System32\LogFiles\WMI\Tpm.etl
attrib +r C:\Windows\System32\LogFiles\WMI\Tpm.etl
del /f /q C:\Windows\System32\LogFiles\SQM\SQMLogger.etl
nul > C:\Windows\System32\LogFiles\SQM\SQMLogger.etl
attrib +r C:\Windows\System32\LogFiles\SQM\SQMLogger.etl
del /f /q C:\Windows\Panther\FirstBootTel.etl
nul > C:\Windows\Panther\FirstBootTel.etl
attrib +r C:\Windows\Panther\FirstBootTel.etl
del /f /q C:\Windows\Panther\FirstBoot-um.etl
nul > C:\Windows\Panther\FirstBoot-um.etl
attrib +r C:\Windows\Panther\FirstBoot-um.etl
del /f /q C:\Windows\System32\LogFiles\WMI\RadioMgr.etl
nul > C:\Windows\System32\LogFiles\WMI\RadioMgr.etl
attrib +r C:\Windows\System32\LogFiles\WMI\RadioMgr.etl
del /f /q C:\Windows\System32\LogFiles\WMI\NetCore.etl
nul > C:\Windows\System32\LogFiles\WMI\NetCore.etl
attrib +r C:\Windows\System32\LogFiles\WMI\NetCore.etl
del /f /q C:\Windows\system32\LogFiles\Mlnx\Mellanox-System.etl
nul > C:\Windows\system32\LogFiles\Mlnx\Mellanox-System.etl
attrib +r C:\Windows\system32\LogFiles\Mlnx\Mellanox-System.etl
del /f /q C:\Windows\System32\LogFiles\WMI\LwtNetLog.etl
nul > C:\Windows\System32\LogFiles\WMI\LwtNetLog.etl
attrib +r C:\Windows\System32\LogFiles\WMI\LwtNetLog.etl
del /f /q C:\Windows\System32\LogFiles\etw\HolographicDevice.etl
nul > C:\Windows\System32\LogFiles\etw\HolographicDevice.etl
attrib +r C:\Windows\System32\LogFiles\etw\HolographicDevice.etl
del /f /q C:\Windows\System32\LogFiles\WMI\DataMarket.etl
nul > C:\Windows\System32\LogFiles\WMI\DataMarket.etl
attrib +r C:\Windows\System32\LogFiles\WMI\DataMarket.etl
del /f /q C:\Windows\System32\LogFiles\WMI\CloudExperienceHostOobe.etl
nul > C:\Windows\System32\LogFiles\WMI\CloudExperienceHostOobe.etl
attrib +r C:\Windows\System32\LogFiles\WMI\CloudExperienceHostOobe.etl
del /f /q C:\Windows\System32\LogFiles\WMI\AutoLogger-Diagtrack-Listener.etl
nul > C:\Windows\System32\LogFiles\WMI\AutoLogger-Diagtrack-Listener.etl
attrib +r C:\Windows\System32\LogFiles\WMI\AutoLogger-Diagtrack-Listener.etl
del /f /q C:\Windows\System32\WDI\LogFiles\WdiContextLog.etl
nul > C:\Windows\System32\WDI\LogFiles\WdiContextLog.etl
attrib +r C:\Windows\System32\WDI\LogFiles\WdiContextLog.etl
del /f /q C:\Windows\System32\LogFiles\WMI\RtBackup\EtwRTDefenderApiLogger.etl
del /f /q C:\ProgramData\Microsoft\Diagnosis\ETLLogs\ShutdownLogger\AutoLogger-Diagtrack-Listener.etl
del /f /q C:\ProgramData\Microsoft\Diagnosis\ETLLogs\CloudExperienceHostOobe.001.etl
del /f /q C:\ProgramData\Microsoft\Diagnosis\ETLLogs\CloudExperienceHostOobe.002.etl
del /f /q C:\ProgramData\Microsoft\Diagnosis\parse.dat
del /f /q C:\ProgramData\Microsoft\Diagnosis\osver.txt
del /f /q C:\ProgramData\Microsoft\Diagnosis\DownloadedSettings\utc.app.json
del /f /q C:\ProgramData\Microsoft\Diagnosis\DownloadedSettings\telemetry.ASM-WindowsDefault
del /f /q C:\ProgramData\Microsoft\Diagnosis\DownloadedSettings\utc.privacy
del /f /q C:\ProgramData\Microsoft\Diagnosis\DownloadedSettings\utc.allow
del /f /q C:\ProgramData\Microsoft\Diagnosis\DownloadedSettings\utc.tracing
del /f /q C:\ProgramData\Microsoft\Diagnosis\TenantStorage\P-ARIA\eventstore.db
del /f /q C:\ProgramData\Microsoft\Diagnosis\ScenariosSqlStore\eventstore.db
del /f /q C:\ProgramData\Microsoft\Diagnosis\eventstore.db
nul > C:\Windows\System32\LogFiles\WMI\RtBackup\EtwRTDefenderApiLogger.etl
nul > C:\ProgramData\Microsoft\Diagnosis\ETLLogs\ShutdownLogger\AutoLogger-Diagtrack-Listener.etl
nul > C:\ProgramData\Microsoft\Diagnosis\ETLLogs\CloudExperienceHostOobe.001.etl
nul > C:\ProgramData\Microsoft\Diagnosis\ETLLogs\CloudExperienceHostOobe.002.etl
nul > C:\ProgramData\Microsoft\Diagnosis\parse.dat
nul > C:\ProgramData\Microsoft\Diagnosis\osver.txt
nul > C:\ProgramData\Microsoft\Diagnosis\DownloadedSettings\utc.app.json
nul > C:\ProgramData\Microsoft\Diagnosis\DownloadedSettings\telemetry.ASM-WindowsDefault
nul > C:\ProgramData\Microsoft\Diagnosis\DownloadedSettings\utc.privacy
nul > C:\ProgramData\Microsoft\Diagnosis\DownloadedSettings\utc.allow
nul > C:\ProgramData\Microsoft\Diagnosis\DownloadedSettings\utc.tracing
nul > C:\ProgramData\Microsoft\Diagnosis\TenantStorage\P-ARIA\eventstore.db
nul > C:\ProgramData\Microsoft\Diagnosis\ScenariosSqlStore\eventstore.db
nul > C:\ProgramData\Microsoft\Diagnosis\eventstore.db
attrib +r C:\Windows\System32\LogFiles\WMI\RtBackup\EtwRTDefenderApiLogger.etl
attrib +r C:\ProgramData\Microsoft\Diagnosis\ETLLogs\ShutdownLogger\AutoLogger-Diagtrack-Listener.etl
attrib +r C:\ProgramData\Microsoft\Diagnosis\ETLLogs\CloudExperienceHostOobe.001.etl
attrib +r C:\ProgramData\Microsoft\Diagnosis\ETLLogs\CloudExperienceHostOobe.002.etl
attrib +r C:\ProgramData\Microsoft\Diagnosis\parse.dat
attrib +r C:\ProgramData\Microsoft\Diagnosis\osver.txt
attrib +r C:\ProgramData\Microsoft\Diagnosis\DownloadedSettings\utc.app.json
attrib +r C:\ProgramData\Microsoft\Diagnosis\DownloadedSettings\telemetry.ASM-WindowsDefault
attrib +r C:\ProgramData\Microsoft\Diagnosis\DownloadedSettings\utc.privacy
attrib +r C:\ProgramData\Microsoft\Diagnosis\DownloadedSettings\utc.allow
attrib +r C:\ProgramData\Microsoft\Diagnosis\DownloadedSettings\utc.tracing
attrib +r C:\ProgramData\Microsoft\Diagnosis\TenantStorage\P-ARIA\eventstore.db
attrib +r C:\ProgramData\Microsoft\Diagnosis\ScenariosSqlStore\eventstore.db
attrib +r C:\ProgramData\Microsoft\Diagnosis\eventstore.db
del /f /q C:\ProgramData\Microsoft\SmsRouter\MessageStore\smsinterceptstore.db
nul > C:\ProgramData\Microsoft\SmsRouter\MessageStore\smsinterceptstore.db
attrib +r +s +h C:\ProgramData\Microsoft\SmsRouter\MessageStore\smsinterceptstore.db
del /f /q "C:\ProgramData\Microsoft\Network\Downloader\qmgr.db"
nul > "C:\ProgramData\Microsoft\Network\Downloader\qmgr.db"
attrib +r +s +h "C:\ProgramData\Microsoft\Network\Downloader\qmgr.db"
del /f /q "C:\ProgramData\Microsoft\Windows Defender\Scans\mpenginedb.db"
nul > "C:\ProgramData\Microsoft\Windows Defender\Scans\mpenginedb.db"
attrib +r +s +h "C:\ProgramData\Microsoft\Windows Defender\Scans\mpenginedb.db"
del /f /q C:\ProgramData\Microsoft\DiagnosticLogCSP\Collectors\DiagnosticLogCSP_Collector_Autopilot.etl
del /f /q C:\ProgramData\Microsoft\DiagnosticLogCSP\CollectorsDiagnosticLogCSP_Collector_DeviceProvisioning.etl
nul > C:\ProgramData\Microsoft\DiagnosticLogCSP\Collectors\DiagnosticLogCSP_Collector_Autopilot.etl
nul > C:\ProgramData\Microsoft\DiagnosticLogCSP\CollectorsDiagnosticLogCSP_Collector_DeviceProvisioning.etl
attrib +r C:\ProgramData\Microsoft\DiagnosticLogCSP\Collectors\DiagnosticLogCSP_Collector_Autopilot.etl
attrib +r C:\ProgramData\Microsoft\DiagnosticLogCSP\CollectorsDiagnosticLogCSP_Collector_DeviceProvisioning.etl
attrib +r C:\ProgramData\Microsoft\DiagnosticLogCSP\Collectors
del /f /q C:\Windows\System32\LogFiles\WMI\RtBackup\EtwRTDefenderAuditLogger.etl
del /f /q C:\Windows\System32\SleepStudy\UserNotPresentSession.etl
nul > C:\Windows\System32\LogFiles\WMI\RtBackup\EtwRTDefenderAuditLogger.etl
attrib +r C:\Windows\System32\LogFiles\WMI\RtBackup\EtwRTDefenderAuditLogger.etl
rd /s /q C:\Windows\ServiceProfiles\NetworkService\AppData\Local\Microsoft\Windows\DeliveryOptimization\Logs
mkdir C:\Windows\ServiceProfiles\NetworkService\AppData\Local\Microsoft\Windows\DeliveryOptimization\Logs
attrib +r C:\Windows\ServiceProfiles\NetworkService\AppData\Local\Microsoft\Windows\DeliveryOptimization\Logs
rd /s /q "C:\ProgramData\Microsoft\Windows Security Health\Logs"
mkdir "C:\ProgramData\Microsoft\Windows Security Health\Logs"
attrib +r "C:\ProgramData\Microsoft\Windows Security Health\Logs"
rd /s /q C:\USERS\Administrator\AppData\Local\Packages\Microsoft.Windows.Photos_8wekyb3d8bbwe\LocalState\PhotosAppTracing_startedInBGMode.etl
rd /s /q C:\USERS\Administrator\AppData\Local\Packages\Microsoft.Windows.Photos_8wekyb3d8bbwe\LocalState\MediaDb.v1.sqlite-wal
rd /s /q C:\USERS\Administrator\AppData\Local\Packages\Microsoft.Windows.Photos_8wekyb3d8bbwe\LocalState\MediaDb.v1.sqlite-shm
rd /s /q C:\USERS\Administrator\AppData\Local\Packages\Microsoft.Windows.Photos_8wekyb3d8bbwe\LocalState\MediaDb.v1.sqlite
rd /s /q C:\USERS\Administrator\AppData\Local\Packages\Microsoft.Windows.Cortana_cw5n1h2txyewy
rd /s /q C:\Windows\security\logs\SceSetupLog.etl
rd /s /q C:\Windows\security\logs\scesetup.log
rd /s /q C:\ProgramData\Microsoft\Windows\wfp\wfpdiag.etl
nul > C:\USERS\Administrator\AppData\Local\Packages\Microsoft.Windows.Photos_8wekyb3d8bbwe\LocalState\PhotosAppTracing_startedInBGMode.etl
nul > C:\USERS\Administrator\AppData\Local\Packages\Microsoft.Windows.Photos_8wekyb3d8bbwe\LocalState\MediaDb.v1.sqlite-wal
nul > C:\USERS\Administrator\AppData\Local\Packages\Microsoft.Windows.Photos_8wekyb3d8bbwe\LocalState\MediaDb.v1.sqlite-shm
nul > C:\USERS\Administrator\AppData\Local\Packages\Microsoft.Windows.Photos_8wekyb3d8bbwe\LocalState\MediaDb.v1.sqlite
mkdir C:\USERS\Administrator\AppData\Local\Packages\Microsoft.Windows.Cortana_cw5n1h2txyewy
nul > C:\Windows\security\logs\SceSetupLog.etl
nul > C:\Windows\security\logs\scesetup.log
nul > C:\ProgramData\Microsoft\Windows\wfp\wfpdiag.etl
attrib +r C:\USERS\Administrator\AppData\Local\Packages\Microsoft.Windows.Photos_8wekyb3d8bbwe\LocalState\PhotosAppTracing_startedInBGMode.etl
attrib +r C:\USERS\Administrator\AppData\Local\Packages\Microsoft.Windows.Photos_8wekyb3d8bbwe\LocalState\MediaDb.v1.sqlite-wal
attrib +r C:\USERS\Administrator\AppData\Local\Packages\Microsoft.Windows.Photos_8wekyb3d8bbwe\LocalState\MediaDb.v1.sqlite-shm
attrib +r C:\USERS\Administrator\AppData\Local\Packages\Microsoft.Windows.Photos_8wekyb3d8bbwe\LocalState\MediaDb.v1.sqlite
attrib +r C:\USERS\Administrator\AppData\Local\Packages\Microsoft.Windows.Cortana_cw5n1h2txyewy
attrib +r C:\Windows\security\logs\SceSetupLog.etl
attrib +r C:\Windows\security\logs\scesetup.log
attrib +r C:\ProgramData\Microsoft\Windows\wfp\wfpdiag.etl
rd /s /q C:\ProgramData\USOShared\Logs
mkdir C:\ProgramData\USOShared\Logs
attrib +r C:\ProgramData\USOShared\Logs
rd /s /q "C:\USERS\Administrator\saved games"
rd /s /q C:\USERS\Administrator\sendto
rd /s /q C:\USERS\Administrator\templates
rd /s /q "C:\USERS\Administrator\start menu"
rd /s /q C:\USERS\Administrator\videos
rd /s /q "C:\Users\default\application data"
rd /s /q C:\Users\default\contacts
rd /s /q C:\Users\default\cookies
mklink /j C:\Users\default\cookies X:\%NOWHERE%
rd /s /q C:\Users\default\downloads
rd /s /q C:\Users\default\favorites
rd /s /q c:\users\default\links
rd /s /q "C:\Users\default\local settings"
rd C:\Users\default\nethood
rd /s /q C:\Users\default\pictures
rd /s /q C:\Users\default\searches
mklink /j C:\Users\default\searches X:\%NOWHERE%
rd /s /q C:\Users\default\printhood
rd /s /q C:\Users\default\recent
rd /s /q "c:\users\default\saved games"
rd /s /q c:\users\default\sendto
rd /s /q c:\users\default\templates
rd /s /q "c:\users\default\start menu"
rd /s /q c:\users\default\videos
rd /s /q "C:\USERS\Administrator\application data"
rd /s /q C:\USERS\Administrator\contacts
rd /s /q C:\USERS\Administrator\cookies
mklink /j C:\USERS\Administrator\cookies X:\%NOWHERE%
rd /s /q C:\USERS\Administrator\downloads
rd /s /q C:\USERS\Administrator\favorites
rd /s /q C:\USERS\Administrator\links
rd /s /q "C:\USERS\Administrator\local settings"
rd C:\USERS\Administrator\nethood
rd /s /q C:\USERS\Administrator\pictures
rd /s /q C:\USERS\Administrator\searches
mklink /j C:\USERS\Administrator\searches X:\%NOWHERE%
rd /s /q C:\USERS\Administrator\printhood
rd /s /q C:\USERS\Administrator\recent
rd /s /q C:\USERS\Administrator\AppData\Roaming\Microsoft\Windows\Recent
mkdir C:\USERS\Administrator\AppData\Roaming\Microsoft\Windows\Recent
attrib +r C:\USERS\Administrator\AppData\Roaming\Microsoft\Windows\Recent
rd /s /q "C:\USERS\Administrator\saved games"
rd /s /q C:\USERS\Administrator\sendto
rd /s /q C:\USERS\Administrator\templates
rd /s /q "C:\USERS\Administrator\start menu"
rd /s /q C:\USERS\Administrator\videos
rd /s /q C:\USERS\Administrator\AppData\Local\temp
mklink /j C:\USERS\Administrator\AppData\Local\temp C:\ZTEMP
rd /s /q c:\windows\temp
mklink /j c:\windows\temp C:\ZTEMP
rd /s /q "C:\USERS\Administrator\AppData\Local\"temporary internet files"
rd /s /q "C:\USERS\Administrator\AppData\Local\application data"
rd /s /q C:\USERS\Administrator\AppData\Local\history
del /f /q C:\USERS\Administrator\AppData\Local\iconcache.db
nul > C:\USERS\Administrator\AppData\Local\iconcache.db
attrib +r C:\USERS\Administrator\AppData\Local\iconcache.db
del /f /q C:\USERS\Administrator\AppData\Local\gdipfontcachev1.dat
nul > C:\USERS\Administrator\AppData\Local\gdipfontcachev1.dat
attrib +r C:\USERS\Administrator\AppData\Local\gdipfontcachev1.dat
rd /s /q C:\USERS\Administrator\AppData\Local\Microsoft\Windows\WER
mkdir C:\USERS\Administrator\AppData\Local\Microsoft\Windows\WER
attrib +r C:\USERS\Administrator\AppData\Local\Microsoft\Windows\WER
rd /s /q C:\USERS\Administrator\AppData\Local\Microsoft\Windows\History
mklink /j C:\USERS\Administrator\AppData\Local\Microsoft\Windows\History X:\%NOWHERE%
rd /s /q C:\USERS\Administrator\AppData\Local\Microsoft\Windows\Ringtones
rd /s /q C:\USERS\Administrator\AppData\Local\Microsoft\Windows\burn
mkdir C:\USERS\Administrator\AppData\Local\Microsoft\Windows\Ringtones
mkdir C:\USERS\Administrator\AppData\Local\Microsoft\Windows\burn
attrib +r +s +h C:\USERS\Administrator\AppData\Local\Microsoft\Windows\Ringtones
attrib +r +s +h C:\USERS\Administrator\AppData\Local\Microsoft\Windows\burn
rd /s /q "C:\Users\default\AppData\Local\"temporary internet files"
rd /s /q "C:\Users\default\AppData\Local\application data"
rd /s /q C:\Users\default\AppData\Local\history
del /f /q C:\Users\default\AppData\Local\iconcache.db
nul > C:\Users\default\AppData\Local\iconcache.db
attrib +r C:\Users\default\AppData\Local\iconcache.db
del /f /q C:\Users\default\AppData\Local\gdipfontcachev1.dat
nul > C:\Users\default\AppData\Local\gdipfontcachev1.dat
attrib +r C:\Users\default\AppData\Local\gdipfontcachev1.dat
rd /s /q C:\Users\default\AppData\Local\Microsoft\Windows\WER
mkdir C:\Users\default\AppData\Local\Microsoft\Windows\WER
attrib +r C:\Users\default\AppData\Local\Microsoft\Windows\WER
rd /s /q C:\Users\default\AppData\Local\Microsoft\Windows\History
mklink /j C:\Users\default\AppData\Local\Microsoft\Windows\History X:\%NOWHERE%
rd /s /q C:\Users\default\AppData\Local\Microsoft\Windows\Ringtones
rd /s /q C:\Users\default\AppData\Local\Microsoft\Windows\burn
mkdir C:\USERS\default\AppData\Local\Microsoft\Windows\Ringtones
mkdir C:\USERS\default\AppData\Local\Microsoft\Windows\burn
attrib +r C:\Users\default\AppData\Local\Microsoft\Windows\Ringtones
attrib +r C:\Users\default\AppData\Local\Microsoft\Windows\burn
rd /s /q "C:\USERS\Administrator\AppData\Local\"temporary internet files"
rd /s /q "C:\USERS\Administrator\AppData\Local\application data"
rd /s /q C:\USERS\Administrator\AppData\Local\history
del /f /q C:\USERS\Administrator\AppData\Local\iconcache.db
nul > C:\USERS\Administrator\AppData\Local\iconcache.db
attrib +r C:\USERS\Administrator\AppData\Local\iconcache.db
del /f /q C:\USERS\Administrator\AppData\Local\gdipfontcachev1.dat
nul > C:\USERS\Administrator\AppData\Local\gdipfontcachev1.dat
attrib +r C:\USERS\Administrator\AppData\Local\gdipfontcachev1.dat
rd /s /q C:\USERS\Administrator\AppData\Local\Microsoft\Windows\WER
mkdir C:\USERS\Administrator\AppData\Local\Microsoft\Windows\WER
attrib +r C:\USERS\Administrator\AppData\Local\Microsoft\Windows\WER
rd /s /q C:\USERS\Administrator\AppData\Local\Microsoft\Windows\History
mklink /j C:\USERS\Administrator\AppData\Local\Microsoft\Windows\History X:\%NOWHERE%
ren c:\windows\system32\thumbcache.dll thumbcache.dl
ren c:\windows\syswow64\thumbcache.dll thumbcache.dl
del /f /q c:\windows\es-es\thumbcache.dll.mui
del /f /q c:\windows\syswow64\es-es\thumbcache.dll.mui
icacls c:\windows\system32\logfiles /grant system:f
icacls c:\windows\system32\logfiles /grant administrator:f /t
del /f /q C:\USERS\Administrator\AppData\Local\Microsoft\Windows\Explorer\ExplorerStartupLog.etl
del /f /q C:\USERS\Administrator\AppData\Local\Microsoft\Windows\Explorer\ExplorerStartupLog_RunOnce.etl
del /f /q C:\USERS\Administrator\AppData\Local\Microsoft\Windows\Explorer\thumbcache_32.db
del /f /q C:\USERS\Administrator\AppData\Local\Microsoft\Windows\Explorer\thumbcache_96.db
del /f /q C:\USERS\Administrator\AppData\Local\Microsoft\Windows\Explorer\thumbcache_256.db
del /f /q C:\USERS\Administrator\AppData\Local\Microsoft\Windows\Explorer\thumbcache_1024.db
del /f /q C:\USERS\Administrator\AppData\Local\Microsoft\Windows\Explorer\thumbcache_idx.db
del /f /q C:\USERS\Administrator\AppData\Local\Microsoft\Windows\Explorer\thumbcache_sr.db
nul > C:\USERS\Administrator\AppData\Local\Microsoft\Windows\Explorer\ExplorerStartupLog.etl
nul > C:\USERS\Administrator\AppData\Local\Microsoft\Windows\Explorer\ExplorerStartupLog_RunOnce.etl
nul > C:\USERS\Administrator\AppData\Local\Microsoft\Windows\Explorer\thumbcache_32.db
nul > C:\USERS\Administrator\AppData\Local\Microsoft\Windows\Explorer\thumbcache_96.db
nul > C:\USERS\Administrator\AppData\Local\Microsoft\Windows\Explorer\thumbcache_256.db
nul > C:\USERS\Administrator\AppData\Local\Microsoft\Windows\Explorer\thumbcache_1024.db
nul > C:\USERS\Administrator\AppData\Local\Microsoft\Windows\Explorer\thumbcache_idx.db
nul > C:\USERS\Administrator\AppData\Local\Microsoft\Windows\Explorer\thumbcache_sr.db
attrib +r C:\USERS\Administrator\AppData\Local\Microsoft\Windows\Explorer\ExplorerStartupLog.etl
attrib +r C:\USERS\Administrator\AppData\Local\Microsoft\Windows\Explorer\ExplorerStartupLog_RunOnce.etl
attrib +r C:\USERS\Administrator\AppData\Local\Microsoft\Windows\Explorer\thumbcache_32.db
attrib +r C:\USERS\Administrator\AppData\Local\Microsoft\Windows\Explorer\thumbcache_96.db
attrib +r C:\USERS\Administrator\AppData\Local\Microsoft\Windows\Explorer\thumbcache_256.db
attrib +r C:\USERS\Administrator\AppData\Local\Microsoft\Windows\Explorer\thumbcache_1024.db
attrib +r C:\USERS\Administrator\AppData\Local\Microsoft\Windows\Explorer\thumbcache_idx.db
attrib +r C:\USERS\Administrator\AppData\Local\Microsoft\Windows\Explorer\thumbcache_sr.db
del /f /q C:\USERS\Administrator\AppData\Local\Microsoft\Windows\Explorer\thumbcache_16.db
del /f /q C:\USERS\Administrator\AppData\Local\Microsoft\Windows\Explorer\iconcache_48.db
del /f /q C:\USERS\Administrator\AppData\Local\Microsoft\Windows\Explorer\iconcache_32.db
del /f /q C:\USERS\Administrator\AppData\Local\Microsoft\Windows\Explorer\iconcache_256.db
del /f /q C:\USERS\Administrator\AppData\Local\Microsoft\Windows\Explorer\iconcache_16.db
del /f /q C:\USERS\Administrator\AppData\Local\Microsoft\Windows\Explorer\iconcache_idx.db
del /f /q C:\USERS\Administrator\AppData\Local\Microsoft\Windows\Explorer\thumbcache_wide_alternate.db
del /f /q C:\USERS\Administrator\AppData\Local\Microsoft\Windows\Explorer\thumbcache_wide.db
del /f /q C:\USERS\Administrator\AppData\Local\Microsoft\Windows\Explorer\thumbcache_exif.db
del /f /q C:\USERS\Administrator\AppData\Local\Microsoft\Windows\Explorer\thumbcache_custom_stream.db
del /f /q C:\USERS\Administrator\AppData\Local\Microsoft\Windows\Explorer\thumbcache_768.db
del /f /q C:\USERS\Administrator\AppData\Local\Microsoft\Windows\Explorer\thumbcache_48.db
del /f /q C:\USERS\Administrator\AppData\Local\Microsoft\Windows\Explorer\thumbcache_2560.db
del /f /q C:\USERS\Administrator\AppData\Local\Microsoft\Windows\Explorer\thumbcache_1920.db
del /f /q C:\USERS\Administrator\AppData\Local\Microsoft\Windows\Explorer\thumbcache_1280.db
del /f /q C:\USERS\Administrator\AppData\Local\Microsoft\Windows\Explorer\iconcache_wide_alternate.db
del /f /q C:\USERS\Administrator\AppData\Local\Microsoft\Windows\Explorer\iconcache_wide.db
del /f /q C:\USERS\Administrator\AppData\Local\Microsoft\Windows\Explorer\iconcache_sr.db
del /f /q C:\USERS\Administrator\AppData\Local\Microsoft\Windows\Explorer\iconcache_exif.db
del /f /q C:\USERS\Administrator\AppData\Local\Microsoft\Windows\Explorer\iconcache_custom_stream.db
del /f /q C:\USERS\Administrator\AppData\Local\Microsoft\Windows\Explorer\iconcache_96.db
del /f /q C:\USERS\Administrator\AppData\Local\Microsoft\Windows\Explorer\iconcache_768.db
del /f /q C:\USERS\Administrator\AppData\Local\Microsoft\Windows\Explorer\iconcache_2560.db
del /f /q C:\USERS\Administrator\AppData\Local\Microsoft\Windows\Explorer\iconcache_1920.db
del /f /q C:\USERS\Administrator\AppData\Local\Microsoft\Windows\Explorer\iconcache_1280.db
nul > C:\USERS\Administrator\AppData\Local\Microsoft\Windows\Explorer\thumbcache_16.db
nul > C:\USERS\Administrator\AppData\Local\Microsoft\Windows\Explorer\iconcache_48.db
nul > C:\USERS\Administrator\AppData\Local\Microsoft\Windows\Explorer\iconcache_32.db
nul > C:\USERS\Administrator\AppData\Local\Microsoft\Windows\Explorer\iconcache_256.db
nul > C:\USERS\Administrator\AppData\Local\Microsoft\Windows\Explorer\iconcache_16.db
nul > C:\USERS\Administrator\AppData\Local\Microsoft\Windows\Explorer\iconcache_idx.db
nul > C:\USERS\Administrator\AppData\Local\Microsoft\Windows\Explorer\thumbcache_wide_alternate.db
nul > C:\USERS\Administrator\AppData\Local\Microsoft\Windows\Explorer\thumbcache_wide.db
nul > C:\USERS\Administrator\AppData\Local\Microsoft\Windows\Explorer\thumbcache_exif.db
nul > C:\USERS\Administrator\AppData\Local\Microsoft\Windows\Explorer\thumbcache_custom_stream.db
nul > C:\USERS\Administrator\AppData\Local\Microsoft\Windows\Explorer\thumbcache_768.db
nul > C:\USERS\Administrator\AppData\Local\Microsoft\Windows\Explorer\thumbcache_48.db
nul > C:\USERS\Administrator\AppData\Local\Microsoft\Windows\Explorer\thumbcache_2560.db
nul > C:\USERS\Administrator\AppData\Local\Microsoft\Windows\Explorer\thumbcache_1920.db
nul > C:\USERS\Administrator\AppData\Local\Microsoft\Windows\Explorer\thumbcache_1280.db
nul > C:\USERS\Administrator\AppData\Local\Microsoft\Windows\Explorer\iconcache_wide_alternate.db
nul > C:\USERS\Administrator\AppData\Local\Microsoft\Windows\Explorer\iconcache_wide.db
nul > C:\USERS\Administrator\AppData\Local\Microsoft\Windows\Explorer\iconcache_sr.db
nul > C:\USERS\Administrator\AppData\Local\Microsoft\Windows\Explorer\iconcache_exif.db
nul > C:\USERS\Administrator\AppData\Local\Microsoft\Windows\Explorer\iconcache_custom_stream.db
nul > C:\USERS\Administrator\AppData\Local\Microsoft\Windows\Explorer\iconcache_96.db
nul > C:\USERS\Administrator\AppData\Local\Microsoft\Windows\Explorer\iconcache_768.db
nul > C:\USERS\Administrator\AppData\Local\Microsoft\Windows\Explorer\iconcache_2560.db
nul > C:\USERS\Administrator\AppData\Local\Microsoft\Windows\Explorer\iconcache_1920.db
nul > C:\USERS\Administrator\AppData\Local\Microsoft\Windows\Explorer\iconcache_1280.db
attrib +r +s +h C:\USERS\Administrator\AppData\Local\Microsoft\Windows\Explorer\thumbcache_16.db
attrib +r +s +h C:\USERS\Administrator\AppData\Local\Microsoft\Windows\Explorer\iconcache_48.db
attrib +r +s +h C:\USERS\Administrator\AppData\Local\Microsoft\Windows\Explorer\iconcache_32.db
attrib +r +s +h C:\USERS\Administrator\AppData\Local\Microsoft\Windows\Explorer\iconcache_256.db
attrib +r +s +h C:\USERS\Administrator\AppData\Local\Microsoft\Windows\Explorer\iconcache_16.db
attrib +r +s +h C:\USERS\Administrator\AppData\Local\Microsoft\Windows\Explorer\iconcache_idx.db
attrib +r +s +h C:\USERS\Administrator\AppData\Local\Microsoft\Windows\Explorer\thumbcache_wide_alternate.db
attrib +r +s +h C:\USERS\Administrator\AppData\Local\Microsoft\Windows\Explorer\thumbcache_wide.db
attrib +r +s +h C:\USERS\Administrator\AppData\Local\Microsoft\Windows\Explorer\thumbcache_exif.db
attrib +r +s +h C:\USERS\Administrator\AppData\Local\Microsoft\Windows\Explorer\thumbcache_custom_stream.db
attrib +r +s +h C:\USERS\Administrator\AppData\Local\Microsoft\Windows\Explorer\thumbcache_768.db
attrib +r +s +h C:\USERS\Administrator\AppData\Local\Microsoft\Windows\Explorer\thumbcache_48.db
attrib +r +s +h C:\USERS\Administrator\AppData\Local\Microsoft\Windows\Explorer\thumbcache_2560.db
attrib +r +s +h C:\USERS\Administrator\AppData\Local\Microsoft\Windows\Explorer\thumbcache_1920.db
attrib +r +s +h C:\USERS\Administrator\AppData\Local\Microsoft\Windows\Explorer\thumbcache_1280.db
attrib +r +s +h C:\USERS\Administrator\AppData\Local\Microsoft\Windows\Explorer\iconcache_wide_alternate.db
attrib +r +s +h C:\USERS\Administrator\AppData\Local\Microsoft\Windows\Explorer\iconcache_wide.db
attrib +r +s +h C:\USERS\Administrator\AppData\Local\Microsoft\Windows\Explorer\iconcache_sr.db
attrib +r +s +h C:\USERS\Administrator\AppData\Local\Microsoft\Windows\Explorer\iconcache_exif.db
attrib +r +s +h C:\USERS\Administrator\AppData\Local\Microsoft\Windows\Explorer\iconcache_custom_stream.db
attrib +r +s +h C:\USERS\Administrator\AppData\Local\Microsoft\Windows\Explorer\iconcache_96.db
attrib +r +s +h C:\USERS\Administrator\AppData\Local\Microsoft\Windows\Explorer\iconcache_768.db
attrib +r +s +h C:\USERS\Administrator\AppData\Local\Microsoft\Windows\Explorer\iconcache_2560.db
attrib +r +s +h C:\USERS\Administrator\AppData\Local\Microsoft\Windows\Explorer\iconcache_1920.db
attrib +r +s +h C:\USERS\Administrator\AppData\Local\Microsoft\Windows\Explorer\iconcache_1280.db
del /f /q C:\Users\Default\AppData\Local\Microsoft\Windows\Explorer\thumbcache_16.db
del /f /q C:\Users\Default\AppData\Local\Microsoft\Windows\Explorer\iconcache_48.db
del /f /q C:\Users\Default\AppData\Local\Microsoft\Windows\Explorer\iconcache_32.db
del /f /q C:\Users\Default\AppData\Local\Microsoft\Windows\Explorer\iconcache_256.db
del /f /q C:\Users\Default\AppData\Local\Microsoft\Windows\Explorer\iconcache_16.db
del /f /q C:\Users\Default\AppData\Local\Microsoft\Windows\Explorer\iconcache_idx.db
del /f /q C:\Users\Default\AppData\Local\Microsoft\Windows\Explorer\thumbcache_wide_alternate.db
del /f /q C:\Users\Default\AppData\Local\Microsoft\Windows\Explorer\thumbcache_wide.db
del /f /q C:\Users\Default\AppData\Local\Microsoft\Windows\Explorer\thumbcache_exif.db
del /f /q C:\Users\Default\AppData\Local\Microsoft\Windows\Explorer\thumbcache_custom_stream.db
del /f /q C:\Users\Default\AppData\Local\Microsoft\Windows\Explorer\thumbcache_768.db
del /f /q C:\Users\Default\AppData\Local\Microsoft\Windows\Explorer\thumbcache_48.db
del /f /q C:\Users\Default\AppData\Local\Microsoft\Windows\Explorer\thumbcache_2560.db
del /f /q C:\Users\Default\AppData\Local\Microsoft\Windows\Explorer\thumbcache_1920.db
del /f /q C:\Users\Default\AppData\Local\Microsoft\Windows\Explorer\thumbcache_1280.db
del /f /q C:\Users\Default\AppData\Local\Microsoft\Windows\Explorer\iconcache_wide_alternate.db
del /f /q C:\Users\Default\AppData\Local\Microsoft\Windows\Explorer\iconcache_wide.db
del /f /q C:\Users\Default\AppData\Local\Microsoft\Windows\Explorer\iconcache_sr.db
del /f /q C:\Users\Default\AppData\Local\Microsoft\Windows\Explorer\iconcache_exif.db
del /f /q C:\Users\Default\AppData\Local\Microsoft\Windows\Explorer\iconcache_custom_stream.db
del /f /q C:\Users\Default\AppData\Local\Microsoft\Windows\Explorer\iconcache_96.db
del /f /q C:\Users\Default\AppData\Local\Microsoft\Windows\Explorer\iconcache_768.db
del /f /q C:\Users\Default\AppData\Local\Microsoft\Windows\Explorer\iconcache_2560.db
del /f /q C:\Users\Default\AppData\Local\Microsoft\Windows\Explorer\iconcache_1920.db
del /f /q C:\Users\Default\AppData\Local\Microsoft\Windows\Explorer\iconcache_1280.db
nul > C:\Users\Default\AppData\Local\Microsoft\Windows\Explorer\thumbcache_16.db
nul > C:\Users\Default\AppData\Local\Microsoft\Windows\Explorer\iconcache_48.db
nul > C:\Users\Default\AppData\Local\Microsoft\Windows\Explorer\iconcache_32.db
nul > C:\Users\Default\AppData\Local\Microsoft\Windows\Explorer\iconcache_256.db
nul > C:\Users\Default\AppData\Local\Microsoft\Windows\Explorer\iconcache_16.db
nul > C:\Users\Default\AppData\Local\Microsoft\Windows\Explorer\iconcache_idx.db
nul > C:\Users\Default\AppData\Local\Microsoft\Windows\Explorer\thumbcache_wide_alternate.db
nul > C:\Users\Default\AppData\Local\Microsoft\Windows\Explorer\thumbcache_wide.db
nul > C:\Users\Default\AppData\Local\Microsoft\Windows\Explorer\thumbcache_exif.db
nul > C:\Users\Default\AppData\Local\Microsoft\Windows\Explorer\thumbcache_custom_stream.db
nul > C:\Users\Default\AppData\Local\Microsoft\Windows\Explorer\thumbcache_768.db
nul > C:\Users\Default\AppData\Local\Microsoft\Windows\Explorer\thumbcache_48.db
nul > C:\Users\Default\AppData\Local\Microsoft\Windows\Explorer\thumbcache_2560.db
nul > C:\Users\Default\AppData\Local\Microsoft\Windows\Explorer\thumbcache_1920.db
nul > C:\Users\Default\AppData\Local\Microsoft\Windows\Explorer\thumbcache_1280.db
nul > C:\Users\Default\AppData\Local\Microsoft\Windows\Explorer\iconcache_wide_alternate.db
nul > C:\Users\Default\AppData\Local\Microsoft\Windows\Explorer\iconcache_wide.db
nul > C:\Users\Default\AppData\Local\Microsoft\Windows\Explorer\iconcache_sr.db
nul > C:\Users\Default\AppData\Local\Microsoft\Windows\Explorer\iconcache_exif.db
nul > C:\Users\Default\AppData\Local\Microsoft\Windows\Explorer\iconcache_custom_stream.db
nul > C:\Users\Default\AppData\Local\Microsoft\Windows\Explorer\iconcache_96.db
nul > C:\Users\Default\AppData\Local\Microsoft\Windows\Explorer\iconcache_768.db
nul > C:\Users\Default\AppData\Local\Microsoft\Windows\Explorer\iconcache_2560.db
nul > C:\Users\Default\AppData\Local\Microsoft\Windows\Explorer\iconcache_1920.db
nul > C:\Users\Default\AppData\Local\Microsoft\Windows\Explorer\iconcache_1280.db
attrib +r +s +h C:\Users\Default\AppData\Local\Microsoft\Windows\Explorer\thumbcache_16.db
attrib +r +s +h C:\Users\Default\AppData\Local\Microsoft\Windows\Explorer\iconcache_48.db
attrib +r +s +h C:\Users\Default\AppData\Local\Microsoft\Windows\Explorer\iconcache_32.db
attrib +r +s +h C:\Users\Default\AppData\Local\Microsoft\Windows\Explorer\iconcache_256.db
attrib +r +s +h C:\Users\Default\AppData\Local\Microsoft\Windows\Explorer\iconcache_16.db
attrib +r +s +h C:\Users\Default\AppData\Local\Microsoft\Windows\Explorer\iconcache_idx.db
attrib +r +s +h C:\Users\Default\AppData\Local\Microsoft\Windows\Explorer\thumbcache_wide_alternate.db
attrib +r +s +h C:\Users\Default\AppData\Local\Microsoft\Windows\Explorer\thumbcache_wide.db
attrib +r +s +h C:\Users\Default\AppData\Local\Microsoft\Windows\Explorer\thumbcache_exif.db
attrib +r +s +h C:\Users\Default\AppData\Local\Microsoft\Windows\Explorer\thumbcache_custom_stream.db
attrib +r +s +h C:\Users\Default\AppData\Local\Microsoft\Windows\Explorer\thumbcache_768.db
attrib +r +s +h C:\Users\Default\AppData\Local\Microsoft\Windows\Explorer\thumbcache_48.db
attrib +r +s +h C:\Users\Default\AppData\Local\Microsoft\Windows\Explorer\thumbcache_2560.db
attrib +r +s +h C:\Users\Default\AppData\Local\Microsoft\Windows\Explorer\thumbcache_1920.db
attrib +r +s +h C:\Users\Default\AppData\Local\Microsoft\Windows\Explorer\thumbcache_1280.db
attrib +r +s +h C:\Users\Default\AppData\Local\Microsoft\Windows\Explorer\iconcache_wide_alternate.db
attrib +r +s +h C:\Users\Default\AppData\Local\Microsoft\Windows\Explorer\iconcache_wide.db
attrib +r +s +h C:\Users\Default\AppData\Local\Microsoft\Windows\Explorer\iconcache_sr.db
attrib +r +s +h C:\Users\Default\AppData\Local\Microsoft\Windows\Explorer\iconcache_exif.db
attrib +r +s +h C:\Users\Default\AppData\Local\Microsoft\Windows\Explorer\iconcache_custom_stream.db
attrib +r +s +h C:\Users\Default\AppData\Local\Microsoft\Windows\Explorer\iconcache_96.db
attrib +r +s +h C:\Users\Default\AppData\Local\Microsoft\Windows\Explorer\iconcache_768.db
attrib +r +s +h C:\Users\Default\AppData\Local\Microsoft\Windows\Explorer\iconcache_2560.db
attrib +r +s +h C:\Users\Default\AppData\Local\Microsoft\Windows\Explorer\iconcache_1920.db
attrib +r +s +h C:\Users\Default\AppData\Local\Microsoft\Windows\Explorer\iconcache_1280.db
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
del /f /q c:\windows\system32\perfi00a.dat
del /f /q c:\windows\system32\perfi009.dat
del /f /q c:\windows\system32\perfh009.dat
del /f /q c:\windows\system32\perfh00a.dat
del /f /q c:\windows\system32\perfd009.dat
del /f /q c:\windows\system32\perfd00a.dat
del /f /q c:\windows\system32\perfc009.dat
del /f /q c:\windows\system32\perfc00a.dat
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
del /f /q C:\Windows\Panther\setup.etl
nul > C:\Windows\Panther\setup.etl
attrib +r C:\Windows\Panther\setup.etl
del /f /q C:\Windows\System32\umstartup000.etl
nul > C:\Windows\System32\umstartup000.etl
attrib +r C:\Windows\System32\umstartup000.etl
del /f /q C:\Windows\System32\umstartup.etl
nul > C:\Windows\System32\umstartup.etl
attrib +r C:\Windows\System32\umstartup.etl
takeown /f C:\Windows\System32\wfp\wfpdiag.etl
icacls C:\Windows\System32\wfp\wfpdiag.etl /grant system:f
icacls C:\Windows\System32\wfp\wfpdiag.etl /grant administrator:f
icacls C:\Windows\System32\wfp\wfpdiag.etl /grant administrator:f
del /f /q C:\Windows\System32\wfp\wfpdiag.etl
nul > C:\Windows\System32\wfp\wfpdiag.etl
attrib +r C:\Windows\System32\wfp\wfpdiag.etl
del /f /q C:\USERS\Administrator\AppData\Local\Microsoft\Windows\Explorer\ExplorerStartupLog_RunOnce.etl
nul > C:\USERS\Administrator\AppData\Local\Microsoft\Windows\Explorer\ExplorerStartupLog_RunOnce.etl
attrib +r C:\USERS\Administrator\AppData\Local\Microsoft\Windows\Explorer\ExplorerStartupLog_RunOnce.etl
del /f /q C:\USERS\Administrator\AppData\Local\Microsoft\Windows\Explorer\ExplorerStartupLog.etl
nul > C:\USERS\Administrator\AppData\Local\Microsoft\Windows\Explorer\ExplorerStartupLog.etl
attrib +r C:\USERS\Administrator\AppData\Local\Microsoft\Windows\Explorer\ExplorerStartupLog.etl
del /f /q C:\USERS\Administrator\AppData\Local\Microsoft\Windows\Explorer\thumbcache_32.db
del /f /q C:\USERS\Administrator\AppData\Local\Microsoft\Windows\Explorer\\thumbcache_96.db
del /f /q C:\USERS\Administrator\AppData\Local\Microsoft\Windows\Explorer\thumbcache_256.db
del /f /q C:\USERS\Administrator\AppData\Local\Microsoft\Windows\Explorer\thumbcache_1024.db
del /f /q C:\USERS\Administrator\AppData\Local\Microsoft\Windows\Explorer\thumbcache_idx.db
del /f /q C:\USERS\Administrator\AppData\Local\Microsoft\Windows\Explorer\thumbcache_sr.db
nul > C:\USERS\Administrator\AppData\Local\Microsoft\Windows\Explorer\thumbcache_32.db
nul > C:\USERS\Administrator\AppData\Local\Microsoft\Windows\Explorer\thumbcache_96.db
nul > C:\USERS\Administrator\AppData\Local\Microsoft\Windows\Explorer\thumbcache_256.db
nul > C:\USERS\Administrator\AppData\Local\Microsoft\Windows\Explorer\thumbcache_1024.db
nul > C:\USERS\Administrator\AppData\Local\Microsoft\Windows\Explorer\thumbcache_idx.db
nul > C:\USERS\Administrator\AppData\Local\Microsoft\Windows\Explorer\thumbcache_sr.db
attrib +r C:\USERS\Administrator\AppData\Local\Microsoft\Windows\Explorer\thumbcache_32.db
attrib +r C:\USERS\Administrator\AppData\Local\Microsoft\Windows\Explorer\thumbcache_96.db
attrib +r C:\USERS\Administrator\AppData\Local\Microsoft\Windows\Explorer\thumbcache_256.db
attrib +r C:\USERS\Administrator\AppData\Local\Microsoft\Windows\Explorer\thumbcache_1024.db
attrib +r C:\USERS\Administrator\AppData\Local\Microsoft\Windows\Explorer\thumbcache_idx.db
attrib +r C:\USERS\Administrator\AppData\Local\Microsoft\Windows\Explorer\thumbcache_sr.db
del /f /q C:\Users\default\AppData\Local\Microsoft\Windows\Explorer\ExplorerStartupLog_RunOnce.etl
nul > C:\Users\default\AppData\Local\Microsoft\Windows\Explorer\ExplorerStartupLog_RunOnce.etl
attrib +r C:\Users\default\AppData\Local\Microsoft\Windows\Explorer\ExplorerStartupLog_RunOnce.etl
del /f /q C:\Users\default\AppData\Local\Microsoft\Windows\Explorer\ExplorerStartupLog.etl
nul > C:\Users\default\AppData\Local\Microsoft\Windows\Explorer\ExplorerStartupLog.etl
attrib +r C:\Users\default\AppData\Local\Microsoft\Windows\Explorer\ExplorerStartupLog.etl
del /f /q C:\Users\default\AppData\Local\Microsoft\Windows\Explorer\thumbcache_32.db
del /f /q C:\Users\default\AppData\Local\Microsoft\Windows\Explorer\thumbcache_96.db
del /f /q C:\Users\default\AppData\Local\Microsoft\Windows\Explorer\thumbcache_256.db
del /f /q C:\Users\default\AppData\Local\Microsoft\Windows\Explorer\thumbcache_1024.db
del /f /q C:\Users\default\AppData\Local\Microsoft\Windows\Explorer\thumbcache_idx.db
del /f /q C:\Users\default\AppData\Local\Microsoft\Windows\Explorer\thumbcache_sr.db
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
del /f /q C:\Windows\Prefetch\ReadyBoot\readyboot.etl
nul > C:\Windows\Prefetch\ReadyBoot\readyboot.etl
attrib +r C:\Windows\Prefetch\ReadyBoot\readyboot.etl
del /f /q C:\Windows\Prefetch\pfsvperfstats.bin
nul > C:\Windows\Prefetch\pfsvperfstats.bin
attrib +r C:\Windows\Prefetch\pfsvperfstats.bin
del /f /q c:\windows\prefetch\trace.fx
del /f /q c:\windows\prefetch\trace1.fx
del /f /q c:\windows\prefetch\trace2.fx
del /f /q c:\windows\prefetch\trace3.fx
del /f /q c:\windows\prefetch\trace4.fx
del /f /q c:\windows\prefetch\trace5.fx
del /f /q c:\windows\prefetch\trace6.fx
del /f /q c:\windows\prefetch\trace7.fx
del /f /q c:\windows\prefetch\trace8.fx
del /f /q c:\windows\prefetch\trace9.fx
del /f /q c:\windows\prefetch\trace10.fx
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
del /f /q C:\USERS\Administrator\AppData\Local\Microsoft\Windows\Notifications\wpndatabase.db-shm
del /f /q C:\USERS\Administrator\AppData\Local\Microsoft\Windows\Notifications\wpndatabase.db
nul > C:\USERS\Administrator\AppData\Local\Microsoft\Windows\Notifications\wpndatabase.db-shm
nul > C:\USERS\Administrator\AppData\Local\Microsoft\Windows\Notifications\wpndatabase.db
attrib +r +s +h C:\USERS\Administrator\AppData\Local\Microsoft\Windows\Notifications\wpndatabase.db-shm
attrib +r +s +h C:\USERS\Administrator\AppData\Local\Microsoft\Windows\Notifications\wpndatabase.db
mkdir C:\Windows\System32\wdi\logfiles
del /f /q C:\Windows\System32\wdi\LogFiles\WdiContextLog.etl.003
nul > C:\Windows\System32\wdi\LogFiles\WdiContextLog.etl.003
attrib +r C:\Windows\System32\wdi\LogFiles\WdiContextLog.etl.003
del /f /q C:\Windows\System32\wdi\LogFiles\WdiContextLog.etl.002
nul > C:\Windows\System32\wdi\LogFiles\WdiContextLog.etl.002
attrib +r C:\Windows\System32\wdi\LogFiles\WdiContextLog.etl.002
del /f /q C:\Windows\System32\wdi\LogFiles\WdiContextLog.etl.001
nul > C:\Windows\System32\wdi\LogFiles\WdiContextLog.etl.001
attrib +r C:\Windows\System32\wdi\LogFiles\WdiContextLog.etl.001
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
takeown /f C:\Windows\System32\LogFiles\WMI\RtBackup\EtwRTUBPM.etl
icacls C:\Windows\System32\LogFiles\WMI\RtBackup\EtwRTUBPM.etl /grant system:f
icacls C:\Windows\System32\LogFiles\WMI\RtBackup\EtwRTUBPM.etl /grant administrator:f
icacls C:\Windows\System32\LogFiles\WMI\RtBackup\EtwRTUBPM.etl /grant administrator:f
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
del /f /q C:\Windows\System32\LogFiles\WMI\RtBackup\EtwRTPhEtRundownLogger.etl
nul > C:\Windows\System32\LogFiles\WMI\RtBackup\EtwRTPhEtRundownLogger.etl
attrib +r C:\Windows\System32\LogFiles\WMI\RtBackup\EtwRTPhEtRundownLogger.etl
del /f /q "C:\Windows\System32\LogFiles\WMI\RtBackup\EtwRTSteam Event Tracing.etl"
nul > "C:\Windows\System32\LogFiles\WMI\RtBackup\EtwRTSteam Event Tracing.etl"
attrib +r "C:\Windows\System32\LogFiles\WMI\RtBackup\EtwRTSteam Event Tracing.etl"
del /f /q C:\Windows\System32\LogFiles\WMI\RtBackup\EtwRTPhEtKernelLogger.etl
nul > C:\Windows\System32\LogFiles\WMI\RtBackup\EtwRTPhEtKernelLogger.etl
attrib +r C:\Windows\System32\LogFiles\WMI\RtBackup\EtwRTPhEtKernelLogger.etl
attrib +r C:\windows\system32\logfiles\ait
attrib +r C:\windows\system32\logfiles\fax
attrib +r C:\windows\system32\logfiles\firewall
attrib +r C:\windows\system32\logfiles\scm
attrib +r C:\windows\system32\logfiles\sqm
attrib +r C:\windows\system32\logfiles\wudf
attrib +r C:\windows\system32\logfiles\fax\incoming
attrib +r C:\windows\system32\logfiles\fax\outgoing
del /f /q C:\Windows\System32\wdi\ShutdownPerformanceDiagnostics_SystemData.bin
nul > C:\Windows\System32\wdi\ShutdownPerformanceDiagnostics_SystemData.bin
attrib +r C:\Windows\System32\wdi\ShutdownPerformanceDiagnostics_SystemData.bin
del /f /q C:\Windows\System32\wdi\BootPerformanceDiagnostics_SystemData.bin
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
rd /s /q C:\USERS\Administrator\AppData\LocalLow\Microsoft\cryptneturlcache
mkdir C:\USERS\Administrator\AppData\LocalLow\Microsoft\cryptneturlcache
attrib +r C:\USERS\Administrator\AppData\LocalLow\Microsoft\cryptneturlcache
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
rd /s /q C:\Windows\winsxs\x86_microsoft-windows-t..nailcache.resources_31bf3856ad364e35_6.1.7600.16385_es-es_da1c4bfb8523f11b
rd /s /q C:\Windows\winsxs\amd64_microsoft-windows-t..nailcache.resources_31bf3856ad364e35_6.1.7600.16385_es-es_363ae77f3d816251
rd /s /q C:\USERS\Administrator\AppData\Local\Microsoft\Windows\Caches
mkdir C:\USERS\Administrator\AppData\Local\Microsoft\Windows\Caches
nul > C:\USERS\Administrator\AppData\Local\Microsoft\Windows\Caches\cversions.1.db
attrib +r C:\USERS\Administrator\AppData\Local\Microsoft\Windows\Caches\cversions1.db
nul > C:\USERS\Administrator\AppData\Local\Microsoft\Windows\Caches\{AFBF9F1A-8EE8-4C77-AF34-C647E37CA0D9}.1.ver0x0000000000000001.db
nul > C:\USERS\Administrator\AppData\Local\Microsoft\Windows\Caches\{AFBF9F1A-8EE8-4C77-AF34-C647E37CA0D9}.1.ver0x0000000000000002.db
attrib +r C:\USERS\Administrator\AppData\Local\Microsoft\Windows\Caches\{AFBF9F1A-8EE8-4C77-AF34-C647E37CA0D9}.1.ver0x0000000000000001.db
attrib +r C:\USERS\Administrator\AppData\Local\Microsoft\Windows\Caches\{AFBF9F1A-8EE8-4C77-AF34-C647E37CA0D9}.1.ver0x0000000000000002.db
rd /s /q C:\USERS\Administrator\AppData\Local\Microsoft\Windows\Caches
mkdir C:\USERS\Administrator\AppData\Local\Microsoft\Windows\Caches
nul > C:\USERS\Administrator\AppData\Local\Microsoft\Windows\Caches\cversions.1.db
attrib +r C:\USERS\Administrator\AppData\Local\Microsoft\Windows\Caches\cversions1.db
nul > C:\USERS\Administrator\AppData\Local\Microsoft\Windows\Caches\{AFBF9F1A-8EE8-4C77-AF34-C647E37CA0D9}.1.ver0x0000000000000001.db
nul > C:\USERS\Administrator\AppData\Local\Microsoft\Windows\Caches\{AFBF9F1A-8EE8-4C77-AF34-C647E37CA0D9}.1.ver0x0000000000000002.db
attrib +r C:\USERS\Administrator\AppData\Local\Microsoft\Windows\Caches\{AFBF9F1A-8EE8-4C77-AF34-C647E37CA0D9}.1.ver0x0000000000000001.db
attrib +r C:\USERS\Administrator\AppData\Local\Microsoft\Windows\Caches\{AFBF9F1A-8EE8-4C77-AF34-C647E37CA0D9}.1.ver0x0000000000000002.db
rd /s /q C:\Users\default\AppData\Local\Microsoft\Windows\Caches
mkdir C:\Users\default\AppData\Local\Microsoft\Windows\Caches
nul > C:\Users\default\AppData\Local\Microsoft\Windows\Caches\cversions.1.db
attrib +r C:\Users\default\AppData\Local\Microsoft\Windows\Caches\cversions1.db
nul > C:\Users\default\AppData\Local\Microsoft\Windows\Caches\{AFBF9F1A-8EE8-4C77-AF34-C647E37CA0D9}.1.ver0x0000000000000001.db
nul > C:\Users\default\AppData\Local\Microsoft\Windows\Caches\{AFBF9F1A-8EE8-4C77-AF34-C647E37CA0D9}.1.ver0x0000000000000002.db
attrib +r C:\Users\default\AppData\Local\Microsoft\Windows\Caches\{AFBF9F1A-8EE8-4C77-AF34-C647E37CA0D9}.1.ver0x0000000000000001.db
attrib +r C:\Users\default\AppData\Local\Microsoft\Windows\Caches\{AFBF9F1A-8EE8-4C77-AF34-C647E37CA0D9}.1.ver0x0000000000000002.db
del /f /q "C:\ProgramData\Microsoft\Windows\Power Efficiency Diagnostics\energy-trace.etl"
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
del /f /q C:\Windows\Performance\WinSAT\winsat.log
nul > C:\Windows\Performance\WinSAT\winsat.log
attrib +r C:\Windows\Performance\WinSAT\winsat.log
del /f /q C:\Windows\Performance\WinSAT\winsat.prx
nul > C:\Windows\Performance\WinSAT\winsat.prx
attrib +r C:\Windows\Performance\WinSAT\winsat.prx
del /f /q c:\windows\system32\logfiles\wmi\lwtnetlog.etl
nul > c:\windows\system32\logfiles\wmi\lwtnetlog.etl
attrib +r c:\windows\system32\logfiles\wmi\lwtnetlog.etl
del /f /q c:\windows\logs\logonuilog.etl
nul > c:\windows\logs\logonuilog.etl
attrib +r c:\windows\logs\logonuilog.etl
del /f /q c:\windows\inf\netcfgx.0.etl
nul > c:\windows\inf\netcfgx.0.etl
attrib +r c:\windows\inf\netcfgx.0.etl
del /f /q c:\windows\inf\netcfgs.0.etl
nul > c:\windows\inf\netcfgs.0.etl
attrib +r c:\windows\inf\netcfgs.0.etl
del /f /q c:\windows\logs\netsetup\service.0.etl
nul > c:\windows\logs\netsetup\service.0.etl
attrib +r +s +h c:\windows\logs\netsetup\service.0.etl
del /f /q c:\windows\system32\logfiles\wmi\cloudexperiencehostoobe.etl.001
nul > c:\windows\system32\logfiles\wmi\cloudexperiencehostoobe.etl.001
attrib +r +s +h c:\windows\system32\logfiles\wmi\cloudexperiencehostoobe.etl.001
del /f /q c:\windows\system32\logfiles\wmi\spoolerlogger.etl.001
nul > c:\windows\system32\logfiles\wmi\spoolerlogger.etl.001
attrib +r +s +h c:\windows\system32\logfiles\wmi\spoolerlogger.etl.001
del /f /q c:\windows\logs\appreadiness.etl
nul > c:\windows\logs\appreadiness.etl
attrib +r c:\windows\logs\appreadiness.etl
del /f /q c:\windows\winsxs\temp\logfiles\ntfslog.etl
nul c:\windows\winsxs\temp\logfiles\ntfslog.etl
attrib +r c:\windows\winsxs\temp\logfiles\ntfslog.etl
del /f /q c:\windows\system32\wfp\wfpdiag.etl
nul > c:\windows\system32\wfp\wfpdiag.etl
attrib +r c:\windows\system32\wfp\wfpdiag.etl
rd /s /q C:\USERS\Administrator\microsoftedgebackups
mkdir C:\USERS\Administrator\MICROSOFTEDGEBACKUPS
attrib +r C:\USERS\Administrator\microsoftedgebackups
rd /s /q C:\Windows\WinSxS\wow64_microsoft-windows-onedrive-setup_31bf3856ad364e35_10.0.18362.1_none_01f25b79d7a97c4b
del /f /q c:\windows\syswow64\onedrivesetup.exe
del /f /q c:\windows\system32\onedrivesetup.exe
del /f /q c:\windows\winsxs\wow64_microsoft-windows-onedrive-setup_31bf3856ad364e35_10.0.18362.1_none_01f25b79d7a97c4b.manifest
ren c:\windows\system32\comsvcs.dll comsvcs.dl
ren c:\windows\syswow64\comsvcs.dll comsvcs.dl
ren c:\windows\system32\catsrv.dll catsrv.dl
ren c:\windows\syswow64\catsrv.dll catsrv.dl
ren c:\windows\system32\catsrvps.dll catsrvps.dl
ren c:\windows\syswow64\catsrvps.dll catsrvps.dl
ren c:\windows\system32\catsrvut.dll catsrvut.dl
ren c:\windows\syswow64\catsrvut.dll catsrvut.dl
ren c:\windows\system32\clbcatq.dll clbcatq.dl
ren c:\windows\syswow64\clbcatq.dll clbcatq.dl
ren c:\windows\system32\thumbnailextractionhost.exe thumbnailextractionhost.ex
ren c:\windows\syswow64\thumbnailextractionhost.exe thumbnailextractionhost.ex
ren c:\windows\system32\mobsync.exe mobsync.ex
ren c:\windows\syswow64\mobsync.exe mobsync.ex
ren c:\windows\system32\ms3dthumbnailprovider.dll ms3dthumbnailprovider.dl
ren c:\windows\syswow64\ms3dthumbnailprovider.dll ms3dthumbnailprovider.dl
ren c:\windows\system32\onecoreuapcommonproxystub.dll onecoreuapcommonproxystub.dl
ren c:\windows\syswow64\onecoreuapcommonproxystub.dll onecoreuapcommonproxystub.dl
ren c:\windows\system32\onecorecommonproxystub.dll onecorecommonproxystub.dl
ren c:\windows\syswow64\onecorecommonproxystub.dll onecorecommonproxystub.dl
ren c:\windows\system32\mssvp.dll mssvp.dl
ren c:\windows\syswow64\mssvp.dll mssvp.dl
ren c:\windows\system32\dxp.dll dxp.dl
ren c:\windows\syswow64\dxp.dll dxp.dl
ren c:\windows\system32\dxpserver.exe dxpserver.ex
ren c:\windows\syswow64\dxpserver.exe dxpserver.ex
ren c:\windows\system32\dxptasksync.dll dxptasksync.dl
ren c:\windows\syswow64\dxptasksync.dll dxptasksync.dl
ren c:\windows\system32\dxpps.dll dxpps.dl
ren c:\windows\syswow64\dxpps.dll dxpps.dl
ren c:\windows\system32\synccenter.dll synccenter.dl
ren c:\windows\syswow64\synccenter.dll synccenter.dl
ren c:\windows\system32\ubpm.dll ubpm.dl
ren c:\windows\syswow64\ubpm.dll ubpm.dl
ren c:\windows\system32\whealogr.dll whealogr.dl
ren c:\windows\syswow64\whealogr.dll whealogr.dl
rd /s /q c:\users\Administrator\microsoftedgebackups
mkdir c:\users\Administrator\microsoftdegebackups
attrib +r +s +h c:\users\Administrator\microsoftedgebackups
rd /s /q "c:\users\all users"
rd /s /q "c:\users\default user"
rd /s /q c:\users\public
attrib -r -s -h c:\users\desktop.ini
del c:\users\desktop.ini
attrib +r +s +h C:\Windows\system32\LogFiles\Mlnx
attrib +r +s +h C:\Windows\system32\LogFiles\sqm
del /f /q C:\USERS\Administrator\AppData\Local\Microsoft\Windows\Caches\{3DA71D5A-20CC-432F-A115-DFE92379E91F}.1.ver0x0000000000000036.db
del /f /q C:\USERS\Administrator\AppData\Local\Microsoft\Windows\Caches\{3DA71D5A-20CC-432F-A115-DFE92379E91F}.1.ver0x0000000000000037.db
nul > C:\USERS\Administrator\AppData\Local\Microsoft\Windows\Caches\{3DA71D5A-20CC-432F-A115-DFE92379E91F}.1.ver0x0000000000000036.db
nul > C:\USERS\Administrator\AppData\Local\Microsoft\Windows\Caches\{3DA71D5A-20CC-432F-A115-DFE92379E91F}.1.ver0x0000000000000037.db
attrib +r C:\USERS\Administrator\AppData\Local\Microsoft\Windows\Caches\{3DA71D5A-20CC-432F-A115-DFE92379E91F}.1.ver0x0000000000000036.db
attrib +r C:\USERS\Administrator\AppData\Local\Microsoft\Windows\Caches\{3DA71D5A-20CC-432F-A115-DFE92379E91F}.1.ver0x0000000000000037.db
robocopy c:\users\default c:\windows\syswow64\config\systemprofile /e /copyall /xj /r:1 /w:1
rd /s /q C:\windows\system32\config\systemprofile\DESKTOP
rd /s /q C:\windows\system32\config\systemprofile\DOCUMENTS
rd /s /q C:\windows\syswow64\config\systemprofile\DESKTOP
rd /s /q C:\windows\syswow64\config\systemprofile\DOCUMENTS
mklink /j C:\windows\system32\config\systemprofile\DESKTOP C:\USERS\Administrator\DESKTOP
mklink /j C:\windows\system32\config\systemprofile\DOCUMENTS C:\USERS\Administrator\DOCUMENTS
mklink /j C:\windows\syswow64\config\systemprofile\DESKTOP C:\USERS\Administrator\DESKTOP
mklink /j C:\windows\syswow64\config\systemprofile\DOCUMENTS C:\USERS\Administrator\DOCUMENTS
attrib +r +s +h c:\windows\system32\wfp\
attrib +r +s +h C:\windows\winsxs\temp\logfiles
attrib +r +s +h C:\Windows\System32\LogFiles\AIT
bcdedit /store c:\boot\bcd /set {default} bootmenupolicy legacy
bcdedit /store c:\boot\bcd /set {default} forcelegacyplatform yes
bcdedit /store c:\boot\bcd /set {default} nx alwaysoff
bcdedit /store c:\boot\bcd /set {default} useplatformclock no
bcdedit /store c:\boot\bcd /set {default} disabledynamictick yes
attrib +r +s +h C:\USERS\Administrator\AppData\Local\Microsoft\Windows\Notifications
bcdedit /store c:\boot\bcd /deletevalue {default} recoverysequence
bcdedit /store c:\boot\bcd /deletevalue {default} recoveryenabled
bcdedit /store c:\boot\bcd /deletevalue {default} recoverysequence
bcdedit /store c:\boot\bcd /deletevalue {default} displaymessageoverride
bcdedit /store c:\boot\bcd /deletevalue {default} allowedinmemorysettings
bcdedit /store c:\boot\bcd /set {bootmgr} timeout 30
echo off
echo                         [Lovingly hand-edited by MeKLiN Method]  tinychat.com/irony
echo                         [Aug.31 2023: MEANT TO BE RUN ON C:\  ]  youtube.com/indicator27
echo                         [Win7or10 on the DVD install PE shell!]  archive.org/details/@meklin                 ]
EXIT