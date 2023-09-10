@shift /0
::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
:: Blackbird BGB (Be a Good Bird) 1.0 Free Software License (c) 2015-2022                                       ::
::                                                                                                              ::
:: Blackbird is Freeware. It's free to use for everyone, always, in all environments.                           ::
:: Under no circumstances can our software be monetized for commercial or any other purposes.                   ::
:: If you want to use our software in your project let us know at info@getblackbird.net                         ::
::                                                                                                              ::
:: Blackbird comes with NO WARRANTY whatsoever. We are not responsible for any damages.                         ::
:: You can edit, break, and modify the exe for your own personal and academic use.                              ::
:: You can redistribute and mirror our software in it's entirety with all documentation and executables intact. ::
:: You cannot sell, modify and/or repackage our software and redistribute it.                                   ::
:: In short, don't be an asshole and you're good.                                                               ::
::                                                                                                              ::
:: Fuck Microsoft.                                                                                              ::
::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

:Birdboot
@title Blackbird
@echo off
setlocal EnableExtensions DisableDelayedExpansion
set __COMPAT_LAYER=RunAsAdmin
echo ;%PATH%; | find /C /I "\system32;" >nul || goto ERROR_SYSPATH
echo ;%PATH%; | find /C /I "\wbem;" >nul || goto ERROR_SYSPATH
reg add HKLM /F >nul 2>&1 || goto ERROR_NOADMIN
chcp 437 >nul 2>&1
set _FEED=
call :GetRuntimePath _FEED
verify Blackbird 2>nul
setlocal EnableDelayedExpansion
if errorlevel 1 goto ERROR_NOEXTENSIONS
shutdown /a >nul 2>&1
set q=^"
(
set LineBreak=^


)
set "bird=blackbirds" &set "blackbird_ver=1.0.85.3" &set "blackbird_bit=64" &set "_OS-UNKNOWN=" &set "_VerboseOS=Unsupported OS version detected. USE AT YOUR OWN RISK." &set "_BirdNVGE_installed="
if defined _flag-color (set "_BC_A=9" &set "_BC_B=6" &set "_BC_C=f" &set "_BC_D=f" &set "_BC_E=0" &set "_BC_F=3" &set "_BC_G=1" &set "_BC_H=e" &set "_BC_I=f" &set "_BC_J=b") else (set "_BC_A=2" &set "_BC_B=4" &set "_BC_C=f" &set "_BC_D=f" &set "_BC_E=0" &set "_BC_F=2" &set "_BC_G=6" &set "_BC_H=c" &set "_BC_I=0" &set "_BC_J=a")
if exist "!systemroot!\SysWOW64\cmd.exe" (set "os64bit=true" &set "osbit=64") else (set "os64bit=" &set "osbit=32")
if not exist "!systemroot!\System32\taskkill.exe" (set "OsHome=true")
for /F "Usebackq Tokens=4" %%A In (`ver`) Do ( set "_SysVersion=%%A" &set "_SysVersion=!_SysVersion:]=!" )
if not defined _SysVersion (set "ERROR_NOVAR_VALUE=SysVersion" &goto ERROR_NOVAR) else ( set "_SysVersion_INT=!_SysVersion:.=!" & set "_SysVersion_INT=!_SysVersion_INT:~0,8!" & set "_SysVersion_BASE=!_SysVersion_INT:~0,2!" )
if not defined _SysVersion_BASE (set "ERROR_NOVAR_VALUE=SysVersion_BASE" &goto ERROR_NOVAR)
if not !_SysVersion_BASE! lss 60 (
	if !_SysVersion_BASE! equ 60 (
		set "_flag-wVista=true" &set "_VerboseOS=Windows Vista" &goto Close_OSCheck 
	) else if !_SysVersion_BASE! equ 61 (
		set "_flag-w7=true" &set "_VerboseOS=Windows 7" &goto Close_OSCheck
	) else if !_SysVersion_BASE! equ 62 (
		set "_flag-w8=true" &set "_VerboseOS=Windows 8" &goto Close_OSCheck
	) else if !_SysVersion_BASE! equ 63 (
		set "_flag-w8=true" &set "_VerboseOS=Windows 8.1" &goto Close_OSCheck
)) else if !_SysVersion_BASE! equ 10 (
		set "_flag-w10=true"
		if not defined _SysVersion_INT (set "ERROR_NOVAR_VALUE=SysVersion_INT" &goto ERROR_NOVAR)
		if !_SysVersion_INT! gtr 10010200 if !_SysVersion_INT! lss 10010500 (
			set "_VerboseOS=Windows 10 (RTM)" &set "_flag-w10-Generic=true" &goto Close_OSCheck
		) else if !_SysVersion_INT! gtr 10010500 if !_SysVersion_INT! lss 10010600 (
			set "_VerboseOS=Windows 10 (Version 1511)" &goto Close_OSCheck
		) else if !_SysVersion_INT! gtr 10014000 if !_SysVersion_INT! lss 10015000 (
			set "_flag-w10red=true" &set "_VerboseOS=Windows 10 (Version 1607)" &goto Close_OSCheck
		) else if !_SysVersion_INT! gtr 10015000 if !_SysVersion_INT! lss 10016000 (
			set "_flag-w10red=true" &set "_flag-w10red2=true" &set "_VerboseOS=Windows 10 (Version 1703)" &goto Close_OSCheck
		) else if !_SysVersion_INT! gtr 10016000 if !_SysVersion_INT! lss 10017000 (
			set "_flag-w10red=true" &set "_flag-w10red2=true" &set "_flag-w10red3=true" &set "_VerboseOS=Windows 10 (Version 1709)" &goto Close_OSCheck
		) else if !_SysVersion_INT! gtr 10017000 if !_SysVersion_INT! lss 10017700 (
			set "_flag-w10red=true" &set "_flag-w10red2=true" &set "_flag-w10red3=true" &set "_flag-w10red4=true" &set "_VerboseOS=Windows 10 (Version 1803)" &goto Close_OSCheck
		) else if !_SysVersion_INT! gtr 10017700 if !_SysVersion_INT! lss 10017800 (
			set "_flag-w10red=true" &set "_flag-w10red2=true" &set "_flag-w10red3=true" &set "_flag-w10red4=true" &set "_flag-w10red5=true" &set "_VerboseOS=Windows 10 (Version 1809)" &goto Close_OSCheck
		) else if !_SysVersion_INT! gtr 10017800 if !_SysVersion_INT! lss 10018363 (
			set "_flag-w10red=true" &set "_flag-w10red2=true" &set "_flag-w10red3=true" &set "_flag-w10red4=true" &set "_flag-w10red5=true" &set "_flag-w10red6=true" &set "_VerboseOS=Windows 10 (Version 1903)" &goto Close_OSCheck
		) else if !_SysVersion_INT! gtr 10018362 if !_SysVersion_INT! lss 10019003 (
			set "_flag-w10red=true" &set "_flag-w10red2=true" &set "_flag-w10red3=true" &set "_flag-w10red4=true" &set "_flag-w10red5=true" &set "_flag-w10red6=true" &set "_flag-w10red7=true" &set "_VerboseOS=Windows 10 (Version 1909)" &goto Close_OSCheck
		) else if !_SysVersion_INT! equ 10019041 (
			set "_flag-w10red=true" &set "_flag-w10red2=true" &set "_flag-w10red3=true" &set "_flag-w10red4=true" &set "_flag-w10red5=true" &set "_flag-w10red6=true" &set "_flag-w10red7=true" &set "_flag-w10red8=true" &set "_VerboseOS=Windows 10 (Version 2004)" &goto Close_OSCheck
		) else if !_SysVersion_INT! equ 10019042 (
			set "_flag-w10red=true" &set "_flag-w10red2=true" &set "_flag-w10red3=true" &set "_flag-w10red4=true" &set "_flag-w10red5=true" &set "_flag-w10red6=true" &set "_flag-w10red7=true" &set "_flag-w10red8=true" &set "_VerboseOS=Windows 10 (Version 20H2)" &goto Close_OSCheck
		) else if !_SysVersion_INT! equ 10019043 (
			set "_flag-w10red=true" &set "_flag-w10red2=true" &set "_flag-w10red3=true" &set "_flag-w10red4=true" &set "_flag-w10red5=true" &set "_flag-w10red6=true" &set "_flag-w10red7=true" &set "_flag-w10red8=true" &set "_VerboseOS=Windows 10 (Version 2009)" &goto Close_OSCheck
		) else if !_SysVersion_INT! equ 10019044 (
			set "_flag-w10red=true" &set "_flag-w10red2=true" &set "_flag-w10red3=true" &set "_flag-w10red4=true" &set "_flag-w10red5=true" &set "_flag-w10red6=true" &set "_flag-w10red7=true" &set "_flag-w10red8=true" &set "_VerboseOS=Windows 10 (Version 21H2)" &goto Close_OSCheck
		) else if !_SysVersion_INT! equ 10019045 (
			set "_flag-w10red=true" &set "_flag-w10red2=true" &set "_flag-w10red3=true" &set "_flag-w10red4=true" &set "_flag-w10red5=true" &set "_flag-w10red6=true" &set "_flag-w10red7=true" &set "_flag-w10red8=true" &set "_VerboseOS=Windows 10 (Version 22H2)" &goto Close_OSCheck
))
set "_OS-UNKNOWN=true"
:Close_OSCheck
if not [%1]==[] ( if [%1]==[-?] (goto Blackbird_Help) else if [%1]==[/?] (goto Blackbird_Help) else if [%1]==[?] (goto Blackbird_Help) else if /i [%1]==[-help] (goto Blackbird_Help) else if /i [%1]==[/help] (goto Blackbird_Help) else if /i [%1]==[help] (goto Blackbird_Help) )
set "_EXTERNAL=%~dp0" &set "_DebugStickA=:" &set "_BakString=BlackbirdBackup"
set "_BirdSessionColumns=" &set "BlackTemp=" &set "UserSID="
set "_BirdLangCode=" &set "_BirdLangString=" &set "_BirdLangUIString="
set "_BirdInput=" &set "_Bird_ExtPS=" &set "_BirdSwitchActive=" &set "__SIZE_Debug= "
set "_BirdRuntimeConfig=" &set "_BirdRuntimeMultiFlags=" &set "_BirdRuntimeNoDeepSwitch="
set "_Blackname_WMIC_RAW=" &set "_Blackname_DIRTY=" &set "_blackname="
if not exist "!systemroot!\system32\xcopy.exe" goto ERROR_NOXCOPY
for /F "usebackq tokens=* delims=" %%A in (`wmic /node:"!computername!" COMPUTERSYSTEM GET USERNAME ^| findstr /i "!computername!"`) Do ( if not defined _Blackname_WMIC_RAW set "_Blackname_WMIC_RAW=%%A" )
if not defined _Blackname_WMIC_RAW (
	for /F "usebackq tokens=* delims=" %%A in (`whoami ^| findstr /i "!computername!"`) Do (if not defined _Blackname_DIRTY set "_Blackname_DIRTY=%%A")
	if not defined _Blackname_DIRTY (
		for /F "usebackq skip=1 tokens=* delims=" %%a in (`wmic /node:"!computername!" COMPUTERSYSTEM GET PrimaryOwnerName`) Do (if not defined _Blackname_WMIC_RAW set "_Blackname_WMIC_RAW=%%a")
))
if defined _Blackname_WMIC_RAW ( set "_Blackname_DIRTY=!_Blackname_WMIC_RAW:~0,-1!" )
if defined _Blackname_DIRTY ( set "_blackname=!_Blackname_DIRTY:%computername%\=!" )
if "!_blackname:~-1!"==" " ( for /l %%A in (1,1,20) do if "!_blackname:~-1!"==" " set "_blackname=!_blackname:~0,-1!" )
if not defined _blackname (goto ERROR_NOUSER) else if exist "!systemdrive!\Users\!_blackname!\AppData\Local\Temp\" (set "BlackTemp=!systemdrive!\Users\!_blackname!\AppData\Local\Temp\!bird!_temp")
if not defined BlackTemp (
	for %%A in ("%path:;=";"%") do ( echo %%A | findstr /ir ".*!systemdrive!\\.*\\.*\\AppData\\.*" >nul && if not defined _BlackPathTEMP set "_BlackPathTEMP=%%A" )
	if defined _BlackPathTEMP set "_BlackPathTEMP_Clean=!_BlackPathTEMP:"=!"
	for /F "tokens=3 delims=\" %%B in ("!_BlackPathTEMP_Clean!") do set "_blackname=%%B"
	if exist "!systemdrive!\Users\!_blackname!\AppData\Local\Temp\" (set "BlackTemp=!systemdrive!\Users\!_blackname!\AppData\Local\Temp\!bird!_temp")
)
if not defined BlackTemp if defined temp ( set "BlackTemp=!temp!\!bird!_temp" )
echo !BlackTemp! | findstr /i ".*\\!bird!_temp" >nul || goto ERROR_NOTEMP
echo !PATH! | findstr /i "powershell" >nul && ( set "_Bird_ExtPS=true" )
if defined BlackTemp if exist "!BlackTemp!\" ( del /F /Q /S "!BlackTemp!\*" >nul 2>&1 & RD /S /Q "!BlackTemp!" >nul 2>&1 )
if not exist "!BlackTemp!\" MD "!BlackTemp!" >nul 2>&1
if not exist "!BlackTemp!\nest\" MD "!BlackTemp!\nest" >nul 2>&1
for /f %%X in ('"prompt $H &echo on &for %%B in (1) do rem"') do set BS=%%X
for /f "tokens=1,* delims=:" %%a in ('mode con^|findstr /n "^"^|findstr /l /b /c:"5:"') do (set "_BirdSessionColumnsRAW=%%b")
if defined _BirdSessionColumnsRAW ( for /f "tokens=2" %%A in ("!_BirdSessionColumnsRAW!") do (set "_BirdSessionColumns=%%A")) else ( if not defined _BirdSessionColumns ( set "_BirdSessionColumns=80"))
if !_BirdSessionColumns! lss 80 (goto ERROR_NOCOLS) else if !_BirdSessionColumns! equ 80 (set "__SIZE_Debug=")
if !_BirdSessionColumns! geq 81 (
	set /a _BirdSessionColumns_Dif=!_BirdSessionColumns!-81
	if !_BirdSessionColumns_Dif! geq 1 ( for /l %%c in (1 1 !_BirdSessionColumns_Dif!) do ( set "__SIZE_Debug=!__SIZE_Debug! " ))
)
reg query "HKCU\Control Panel\Desktop" | findstr /ir "\<PreferredUILanguages.*REG_MULTI_SZ " >nul && (
	for /f "usebackq tokens=3" %%A In (`reg query "HKCU\Control Panel\Desktop" /v "PreferredUILanguages" ^| findstr /ir "\<PreferredUILanguages.*REG_MULTI_SZ "`) Do (set "_BirdLangUIString=%%A")
	echo !_BirdLangUIString! | findstr /ir "\<.*-.*" >nul && set "_BirdLangString=!_BirdLangUIString!"
)
if not defined _BirdLangString (
	for /f "usebackq tokens=3" %%A In (`reg query "HKLM\System\ControlSet001\Control\Nls\Language" /v "InstallLanguage" ^| findstr /ir "\<InstallLanguage.*REG_SZ "`) Do (set "_BirdLangCode=%%A")
	if defined _BirdLangCode if not "!_BirdLangCode!"=="0409" set "_BirdLangString=true_DEBUG"
)
if /i "!_BirdLangString!"=="en-US" set _BirdLangString=
for /f "skip=1 delims= " %%a in ('"wmic path win32_useraccount where name='!_blackname!' get sid"') do ( set "UserSID=%%a" &goto Close_Birdboot )
:Close_Birdboot
if not defined UserSID (set "ERROR_NOVAR_VALUE=User_SID" &goto ERROR_NOVAR)
if not defined os64bit (set "_BirdNVGE_RootPath=!programfiles!") else if defined os64bit (set "_BirdNVGE_RootPath=!programfiles(x86)!")
dir /b "!_BirdNVGE_RootPath!\" | findstr /irc:"NVIDIA Corporation" >nul && (
	dir /b "!_BirdNVGE_RootPath!\NVIDIA Corporation\" | findstr /irc:"NVIDIA Geforce Experience" >nul && (set "_BirdNVGE_installed=true")
)
if exist "!_EXTERNAL!BlackbirdBackup" (set "_ExtBakPath=!_EXTERNAL!BlackbirdBackup" &set "_flag-extbackup=true") else (set "_ExtBakPath=" &set "_flag-extbackup=")
if exist "!_EXTERNAL!host.txt" (set "_ExtHostsPath=!_EXTERNAL!host.txt" &set "_flag-exthost=true") else if exist "!_EXTERNAL!hosts.txt" (set "_ExtHostsPath=!_EXTERNAL!hosts.txt" &set "_flag-exthost=true") else ( set "_ExtHostsPath=" &set "_flag-exthost=" )
if not defined _flag-w10 ( if exist "!_EXTERNAL!update.txt" (set "_ExtUpdatesPath=!_EXTERNAL!update.txt" &set "_flag-extupdate=true") else if exist "!_EXTERNAL!updates.txt" (set "_ExtUpdatesPath=!_EXTERNAL!updates.txt" &set "_flag-extupdate=true")) else ( set "_ExtUpdatesPath=" &set "_flag-extupdate=" )
set "__BTM_Win=\Microsoft\Windows" &set "__BTM_USO=\Microsoft\Windows\UpdateOrchestrator" &set "__BTM_Office=\Microsoft\Office"
set "__BTM_TQ01=\Agent$Activation$Runtime\!UserSID! !__BTM_Office!\Office$15$Subscription$Heartbeat !__BTM_Office!\OfficeTelemetry\AgentFallBack !__BTM_Office!\OfficeTelemetry\AgentFallBack2016"
set "__BTM_TQ02=!__BTM_Office!\OfficeTelemetry\AgentLogOn !__BTM_Office!\OfficeTelemetry\OfficeTelemetryAgentLogOn2016 !__BTM_Office!\OfficeTelemetryAgentFallBack !__BTM_Office!\OfficeTelemetryAgentFallBack2016"
set "__BTM_TQ03=!__BTM_Office!\OfficeTelemetryAgentLogOn !__BTM_Office!\OfficeTelemetryAgentLogOn2016 !__BTM_Win!\AppID\SmartScreenSpecific !__BTM_Win!\AppID\VerifiedPublisherCertStoreCheck"
set "__BTM_TQ04=!__BTM_Win!\Application$Experience\AitAgent !__BTM_Win!\Application$Experience\Microsoft$Compatibility$Appraiser !__BTM_Win!\Application$Experience\PcaPatchDbTask"
set "__BTM_TQ05=!__BTM_Win!\Application$Experience\ProgramDataUpdater !__BTM_Win!\Application$Experience\StartupAppTask !__BTM_Win!\ApplicationData\AppUriVerifierDaily !__BTM_Win!\ApplicationData\AppUriVerifierInstall"
set "__BTM_TQ06=!__BTM_Win!\ApplicationData\DsSvcCleanup !__BTM_Win!\Autochk\Proxy !__BTM_Win!\CloudExperienceHost\CreateObjectTask !__BTM_Win!\Customer$Experience$Improvement$Program\BthSQM"
set "__BTM_TQ07=!__BTM_Win!\Customer$Experience$Improvement$Program\Consolidator !__BTM_Win!\Customer$Experience$Improvement$Program\HypervisorFlightingTask !__BTM_Win!\Customer$Experience$Improvement$Program\KernelCeipTask"
set "__BTM_TQ08=!__BTM_Win!\Customer$Experience$Improvement$Program\Uploader !__BTM_Win!\Customer$Experience$Improvement$Program\UsbCeip !__BTM_Win!\Device$Information\Device !__BTM_Win!\Device$Information\Device$User"
set "__BTM_TQ09=!__BTM_Win!\Device$Setup\Metadata$Refresh !__BTM_Win!\Diagnosis\RecommendedTroubleshootingScanner !__BTM_Win!\Diagnosis\Scheduled !__BTM_Win!\DiskDiagnostic\Microsoft-Windows-DiskDiagnosticDataCollector"
set "__BTM_TQ10=!__BTM_Win!\DiskDiagnostic\Microsoft-Windows-DiskDiagnosticResolver !__BTM_Win!\DiskFootprint\Diagnostics !__BTM_Win!\End$Of$Support\Notify1 !__BTM_Win!\End$Of$Support\Notify2"
set "__BTM_TQ11=!__BTM_Win!\ErrorDetails\EnableErrorDetailsUpdate !__BTM_Win!\ErrorDetails\ErrorDetailsUpdate !__BTM_Win!\Feedback\Siuf\DmClient !__BTM_Win!\Feedback\Siuf\DmClientOnScenarioDownload"
set "__BTM_TQ12=!__BTM_Win!\FileHistory\File$History$[maintenance$mode] !__BTM_Win!\Flighting\FeatureConfig\ReconcileFeatures !__BTM_Win!\Flighting\FeatureConfig\UsageDataFlushing !__BTM_Win!\Flighting\FeatureConfig\UsageDataReporting"
set "__BTM_TQ13=!__BTM_Win!\Flighting\OneSettings\RefreshCache !__BTM_Win!\IME\SQM$data$sender !__BTM_Win!\Input\LocalUserSyncDataAvailable !__BTM_Win!\Input\MouseSyncDataAvailable !__BTM_Win!\Input\PenSyncDataAvailable"
set "__BTM_TQ14=!__BTM_Win!\Input\TouchpadUserSyncDataAvailable !__BTM_Win!\LanguageComponentsInstaller\Installation !__BTM_Win!\LanguageComponentsInstaller\ReconcileLanguageResources !__BTM_Win!\Location\Notifications"
set "__BTM_TQ15=!__BTM_Win!\Maintenance\WinSAT !__BTM_Win!\Management\Provisioning\Cellular !__BTM_Win!\Management\Provisioning\Logon !__BTM_Win!\Media$Center\ActivateWindowsSearch !__BTM_Win!\Media$Center\ConfigureInternetTimeService"
set "__BTM_TQ16=!__BTM_Win!\Media$Center\DispatchRecoveryTasks !__BTM_Win!\Media$Center\ehDRMInit !__BTM_Win!\Media$Center\InstallPlayReady !__BTM_Win!\Media$Center\mcupdate !__BTM_Win!\Media$Center\MediaCenterRecoveryTask"
set "__BTM_TQ17=!__BTM_Win!\Media$Center\ObjectStoreRecoveryTask !__BTM_Win!\Media$Center\OCURActivate !__BTM_Win!\Media$Center\OCURDiscovery !__BTM_Win!\Media$Center\PBDADiscovery !__BTM_Win!\Media$Center\PBDADiscoveryW1"
set "__BTM_TQ18=!__BTM_Win!\Media$Center\PBDADiscoveryW2 !__BTM_Win!\Media$Center\PvrRecoveryTask !__BTM_Win!\Media$Center\PvrScheduleTask !__BTM_Win!\Media$Center\RegisterSearch !__BTM_Win!\Media$Center\ReindexSearchRoot"
set "__BTM_TQ19=!__BTM_Win!\Media$Center\SqlLiteRecoveryTask !__BTM_Win!\Media$Center\UpdateRecordPath !__BTM_Win!\Mobile$Broadband$Accounts\MNO$Metadata$Parser !__BTM_Win!\NetTrace\GatherNetworkInfo !__BTM_Win!\NlaSvc\WiFiTask"
set "__BTM_TQ20=!__BTM_Win!\PerfTrack\BackgroundConfigSurveyor !__BTM_Win!\PI\Sqm-Tasks !__BTM_Win!\Power$Efficiency$Diagnostics\AnalyzeSystem !__BTM_Win!\PushToInstall\LoginCheck !__BTM_Win!\PushToInstall\Registration"
set "__BTM_TQ21=!__BTM_Win!\RemoteAssistance\RemoteAssistanceTask !__BTM_Win!\RemovalTools\MRT_ERROR_HB !__BTM_Win!\SettingSync\BackgroundUploadTask !__BTM_Win!\SettingSync\BackupTask !__BTM_Win!\SettingSync\NetworkStateChangeTask"
set "__BTM_TQ22=!__BTM_Win!\Setup\EOSNotify !__BTM_Win!\Setup\EOSNotify2 !__BTM_Win!\Setup\gwx\launchtrayprocess !__BTM_Win!\Setup\gwx\refreshgwxconfig !__BTM_Win!\Setup\gwx\refreshgwxconfigandcontent"
set "__BTM_TQ23=!__BTM_Win!\Setup\GWXTriggers\Logon-10s !__BTM_Win!\Setup\GWXTriggers\Logon-5d !__BTM_Win!\Setup\GWXTriggers\MachineUnlock-10s !__BTM_Win!\Setup\GWXTriggers\MachineUnlock-5d !__BTM_Win!\Setup\GWXTriggers\OutOfIdle-10s"
set "__BTM_TQ24=!__BTM_Win!\Setup\GWXTriggers\OutOfIdle-5d !__BTM_Win!\Setup\GWXTriggers\OutOfSleep-10s !__BTM_Win!\Setup\GWXTriggers\OutOfSleep-5d !__BTM_Win!\Setup\GWXTriggers\refreshgwxconfig-B"
set "__BTM_TQ25=!__BTM_Win!\Setup\GWXTriggers\Telemetry-4xd !__BTM_Win!\Setup\GWXTriggers\Time-10s !__BTM_Win!\Setup\GWXTriggers\Time-5d !__BTM_Win!\Shell\CreateObjectTask !__BTM_Win!\Shell\FamilySafetyMonitor"
set "__BTM_TQ26=!__BTM_Win!\Shell\FamilySafetyMonitorToastTask !__BTM_Win!\Shell\FamilySafetyRefresh !__BTM_Win!\Shell\FamilySafetyRefreshTask !__BTM_Win!\Shell\FamilySafetyUpload !__BTM_Win!\SideShow\SessionAgent"
set "__BTM_TQ27=!__BTM_Win!\SideShow\SystemDataProviders !__BTM_Win!\Speech\SpeechModelDownloadTask !__BTM_USO!\Maintenance$Install !__BTM_USO!\Reboot !__BTM_USO!\Reboot_AC !__BTM_USO!\Reboot_Battery !__BTM_USO!\Report$policies"
set "__BTM_TQ28=!__BTM_USO!\Schedule$Maintenance$Work !__BTM_USO!\Schedule$Scan !__BTM_USO!\Schedule$Scan$Static$Task !__BTM_USO!\Schedule$Wake$To$Work !__BTM_USO!\Schedule$Work !__BTM_USO!\USO_Broker_Display"
set "__BTM_TQ29=!__BTM_USO!\USO_RebootDisplay !__BTM_USO!\USO_UxBroker !__BTM_USO!\USO_UxBroker_Display !__BTM_USO!\USO_UxBroker_ReadyToReboot !__BTM_USO!\USO_UxBroker_WnfDisplay !__BTM_USO!\USO_WnfDisplay"
set "__BTM_TQ30=!__BTM_USO!\UpdateModelTask !__BTM_Win!\UPnP\UPnPHostConfig !__BTM_Win!\User$Profile$Service\HiveUploadTask !__BTM_Win!\WaaSMedic\PerformRemediation !__BTM_Win!\WCM\WiFiTask"
set "__BTM_TQ31=!__BTM_Win!\Windows$Defender\Windows$Defender$Scheduled$Scan !__BTM_Win!\Windows$Error$Reporting\QueueReporting !__BTM_Win!\WindowsUpdate\Automatic$App$Update !__BTM_Win!\WindowsUpdate\sih"
set "__BTM_TQ32=!__BTM_Win!\WlanSvc\CDSSync \Microsoft\XblGameSave\XblGameSaveTask \Microsoft\XblGameSave\XblGameSaveTaskLogon \OneDrive$Standalone$Update$Task-!UserSID!"
set "__BTM_TQNV1=\NvTmMon_{B2FE1952-0186-46C3-BAEC-A80AA35AC5B8} \NvTmRep \NvTmRep_{B2FE1952-0186-46C3-BAEC-A80AA35AC5B8} \NvTmRepCR1_{B2FE1952-0186-46C3-BAEC-A80AA35AC5B8} \NvTmRepCR2_{B2FE1952-0186-46C3-BAEC-A80AA35AC5B8} \NvTmRepCR3_{B2FE1952-0186-46C3-BAEC-A80AA35AC5B8} \NvTmRepOnLogon_{B2FE1952-0186-46C3-BAEC-A80AA35AC5B8}"
set "_Bird_BigTaskPool=!__BTM_TQ01! !__BTM_TQ02! !__BTM_TQ03! !__BTM_TQ04! !__BTM_TQ05! !__BTM_TQ06! !__BTM_TQ07! !__BTM_TQ08! !__BTM_TQ09! !__BTM_TQ10! !__BTM_TQ11! !__BTM_TQ12! !__BTM_TQ13! !__BTM_TQ14! !__BTM_TQ15! !__BTM_TQ16! !__BTM_TQ17! !__BTM_TQ18! !__BTM_TQ19! !__BTM_TQ20! !__BTM_TQ21! !__BTM_TQ22! !__BTM_TQ23! !__BTM_TQ24! !__BTM_TQ25! !__BTM_TQ26! !__BTM_TQ27! !__BTM_TQ28! !__BTM_TQ29! !__BTM_TQ30! !__BTM_TQ31! !__BTM_TQ32!"
if not defined _BirdNVGE_installed ( set "_Bird_BigTaskPool=!_Bird_BigTaskPool! !__BTM_TQNV1!" )
rem if defined _Bird_EXPERIMENTAL_Tasks set "_Bird_BigTaskPool=!_Bird_BigTaskPool! !__BTM_TQ_EXPERIMENTAL_Tasks!"
if not defined _Bird_BigTaskPool ( set "ERROR_NOVAR_VALUE=SCHTASK_POOL" &goto ERROR_NOVAR )
set "__BSM_SQ01=AarSvc AeLookupSvc BcastDVRUserService BluetoothUserService CaptureService cbdhsvc CDPSvc CDPUserSvc cldflt ConsentUxUserSvc CredentialEnrollmentManagerUserSvc DcpSvc DeviceAssociationBrokerSvc DeviceAssociationService"
set "__BSM_SQ02=DevicePickerUserSvc DevicesFlowUserSvc diagnosticshub.standardcollector.service diagsvc DiagTrack DmWapPushService DoSvc DPS DsSvc fdPHost FDResPub HPTouchpointAnalyticsService IEEtwCollectorService InstallService iphlpsvc"
set "__BSM_SQ03=lanmanserver lfsvc lmhosts LxpSvc MessagingService MRxDAV MRxSMB10 NcaSvc NcbService NetBT NetMsmqActivator OneSyncSvc PcaSvc PimIndexMaintenanceSvc PrintWorkflowUserSvc PushToInstall RemoteAccess RemoteRegistry RetailDemo"
set "__BSM_SQ04=sgrmbroker shpamsvc SmsRouter srv SSDPSRV StorSvc telemetry TrkWks tunnel UevAgentService UnistoreSvc upnphost UserDataSvc VDWFP VisualDiscovery W32Time WaaSMedicSvc wcncsvc WdiServiceHost WdiSystemHost WebClient"
set "__BSM_SQ05=wercplsupport WerSvc WinHttpAutoProxySvc WinRM wisvc wlidsvc WMPNetworkSvc WpnService WpnUserService xbgm XblAuthManager XblGameSave XboxGipSvc XboxNetApiSvc"
set "_Bird_BigServicePool=!__BSM_SQ01! !__BSM_SQ02! !__BSM_SQ03! !__BSM_SQ04! !__BSM_SQ05!"
if not defined _BirdNVGE_installed ( set "_Bird_BigServicePool=!_Bird_BigServicePool! NvTelemetryContainer" )
rem SET "_Bird_EXPERIMENTAL_Services=fdPHost FDResPub BITS SessionEnv TermService UmRdpService IPBusEnum  NetTcpActivator NetTcpPortSharing NetPipeActivator"
rem SET "_Bird_EXPERIMENTAL_Services=WPCSvc WPDBusEnum ndu WbioSrvc NetTcpPortSharing"
rem ---
rem if defined _Bird_EXPERIMENTAL_Services set "_Bird_BigServicePool=!_Bird_BigServicePool! !_Bird_EXPERIMENTAL_Services!"
if not defined _Bird_BigServicePool ( set "ERROR_NOVAR_VALUE=SERVICE_POOL" &goto ERROR_NOVAR )
set "_Bird_ServiceDeadPool=\<HPTouchpointAnalyticsService\> \<VDWFP\> \<VisualDiscovery\>"
if not defined _BirdNVGE_installed ( set "_Bird_ServiceDeadPool=!_Bird_ServiceDeadPool! \<NvTelemetryContainer\>" )
if defined _flag-w10 ( set "_Bird_DynamicServicePool=AarSvc BcastDVRUserService BluetoothUserService CaptureService cbdhsvc ConsentUxUserSvc CredentialEnrollmentManagerUserSvc DeviceAssociationBrokerSvc DevicePickerUserSvc PimIndexMaintenanceSvc PrintWorkflowUserSvc MessagingService CDPUserSvc DevicesFlowUserSvc OneSyncSvc UnistoreSvc UserDataSvc WpnUserService" )
if not defined _flag-w10 (
	set "__BUM_KBQ01=KB971033 KB2876229 KB2882822 KB2902907 KB2922324 KB2952664 KB2976978 KB2976987 KB2977759 KB2990214 KB3012973 KB3014460 KB3015249 KB3021917 KB3022345 KB3035583 KB3044374 KB3046480 KB3050265 KB3050267"
	set "__BUM_KBQ02=KB3064683 KB3065987 KB3065988 KB3068707 KB3068708 KB3072318 KB3074677 KB3075249 KB3075851 KB3075853 KB3080149 KB3080351 KB3081427 KB3081437 KB3081451 KB3081454 KB3081954 KB3083324 KB3083325 KB3083710"
	set "__BUM_KBQ03=KB3083711 KB3090045 KB3095675 KB3112336 KB3112343 KB3123862 KB3124275 KB3134814 KB3135445 KB3138612 KB3138615 KB3139929 KB3140166 KB3140185 KB3146449 KB3150513 KB3173040 KB4493132"
	set "_Bird_BigKBPool=!__BUM_KBQ01! !__BUM_KBQ02! !__BUM_KBQ03!"
	rem SET "_Bird_EXPERIMENTAL_Updates=KB3058168 KB3102812 KB3125574 KB3135449 KB3102810 KB3184143"
	rem if defined _Bird_EXPERIMENTAL_Updates set "_Bird_BigKBPool=!_Bird_BigKBPool! !_Bird_EXPERIMENTAL_Updates!"
	if not defined _Bird_BigKBPool (set "ERROR_NOVAR_VALUE=KBUPDATE_POOL" &goto ERROR_NOVAR)
)
if [%1]==[] (goto BlackbirdStartupScanner) else ( call :GetSwitchCount %* )
for /l %%A in (1 1 !_BirdSwitch_RAWCounter!) do (
	set "_BirdSwitch_RAWFLAG%%A=!_BirdSwitch_RAWFLAG%%A:-=!"
	set "_BirdSwitch_RAWFLAG%%A=!_BirdSwitch_RAWFLAG%%A:/=!"
	if /i [!_BirdSwitch_RAWFLAG%%A!]==[color] if not defined _flag-color ( set "_flag-color=true" &goto Birdboot )
	if /i [!_BirdSwitch_RAWFLAG%%A!]==[s] ( set "_flag-s=true" &set "_BirdRuntimeConfig=!_BirdRuntimeConfig!_S " )
	if /i [!_BirdSwitch_RAWFLAG%%A!]==[?] goto Blackbird_Help
	if /i [!_BirdSwitch_RAWFLAG%%A!]==[help] goto Blackbird_Help
	if /i [!_BirdSwitch_RAWFLAG%%A!]==[r] goto Blackbird_Recovery
	if /i [!_BirdSwitch_RAWFLAG%%A!]==[bak] goto Blackbird_Backup
	if /i [!_BirdSwitch_RAWFLAG%%A!]==[std] goto Blackbird_STD
	if /i [!_BirdSwitch_RAWFLAG%%A!]==[scan] goto Blackbird_Scan
	if /i [!_BirdSwitch_RAWFLAG%%A!]==[v] ( set "_flag-v=true" &set "_BirdRuntimeConfig=!_BirdRuntimeConfig!_V " )
	if /i [!_BirdSwitch_RAWFLAG%%A!]==[tasks] ( set "_flag-tasks=true" &set "_BirdRuntimeConfig=!_BirdRuntimeConfig!_TASKS " )
	if /i [!_BirdSwitch_RAWFLAG%%A!]==[task] ( set "_flag-tasks=true" &set "_BirdRuntimeConfig=!_BirdRuntimeConfig!_TASKS " )
	if /i [!_BirdSwitch_RAWFLAG%%A!]==[services] ( set "_flag-services=true" &set "_BirdRuntimeConfig=!_BirdRuntimeConfig!_SERVICES " )
	if /i [!_BirdSwitch_RAWFLAG%%A!]==[service] ( set "_flag-services=true" &set "_BirdRuntimeConfig=!_BirdRuntimeConfig!_SERVICES " )
	if /i [!_BirdSwitch_RAWFLAG%%A!]==[reg] ( set "_flag-reg=true" &set "_BirdRuntimeConfig=!_BirdRuntimeConfig!_REG " )
	if /i [!_BirdSwitch_RAWFLAG%%A!]==[registry] ( set "_flag-reg=true" &set "_BirdRuntimeConfig=!_BirdRuntimeConfig!_REG " )
	if /i [!_BirdSwitch_RAWFLAG%%A!]==[hostblock] ( set "_flag-hostblock=true" &set "_BirdRuntimeConfig=!_BirdRuntimeConfig!_HOSTBLOCK " )
	if /i [!_BirdSwitch_RAWFLAG%%A!]==[e] ( set "_flag-e=true" &set "_BirdRuntimeConfig=!_BirdRuntimeConfig!_E " )
	if /i [!_BirdSwitch_RAWFLAG%%A!]==[g] ( set "_flag-g=true" &set "_BirdRuntimeConfig=!_BirdRuntimeConfig!_G " )
	if /i [!_BirdSwitch_RAWFLAG%%A!]==[p] ( set "_flag-p=true" &set "_BirdRuntimeConfig=!_BirdRuntimeConfig!_P " )
	if /i [!_BirdSwitch_RAWFLAG%%A!]==[d] ( set "_flag-d=true" &set "_BirdRuntimeConfig=!_BirdRuntimeConfig!_D " )
	if /i [!_BirdSwitch_RAWFLAG%%A!]==[l] ( set "_flag-l=true" &set "_BirdRuntimeConfig=!_BirdRuntimeConfig!_L " )
	if /i [!_BirdSwitch_RAWFLAG%%A!]==[i] ( set "_flag-i=true" &set "_BirdRuntimeConfig=!_BirdRuntimeConfig!_I " )
	if /i [!_BirdSwitch_RAWFLAG%%A!]==[u] ( set "_flag-u=true" &set "_BirdRuntimeConfig=!_BirdRuntimeConfig!_U " )
	if /i [!_BirdSwitch_RAWFLAG%%A!]==[h] ( set "_flag-h=true" &set "_BirdRuntimeConfig=!_BirdRuntimeConfig!_H " )
	if /i [!_BirdSwitch_RAWFLAG%%A!]==[t] ( set "_flag-t=true" &set "_BirdRuntimeConfig=!_BirdRuntimeConfig!_T " )
	if /i [!_BirdSwitch_RAWFLAG%%A!]==[n] ( set "_flag-n=true" &set "_BirdRuntimeConfig=!_BirdRuntimeConfig!_N " )
	if /i [!_BirdSwitch_RAWFLAG%%A!]==[aslr] ( set "_flag-aslr=true" &set "_BirdRuntimeConfig=!_BirdRuntimeConfig!_ASLR " )
	if /i [!_BirdSwitch_RAWFLAG%%A!]==[smb1] ( set "_flag-smb1=true" &set "_BirdRuntimeConfig=!_BirdRuntimeConfig!_SMB1 " )
	if /i [!_BirdSwitch_RAWFLAG%%A!]==[nohosts] ( set "_flag-nohost=true" &set "_BirdRuntimeConfig=!_BirdRuntimeConfig!_NOHOST " )
	if /i [!_BirdSwitch_RAWFLAG%%A!]==[nohost] ( set "_flag-nohost=true" &set "_BirdRuntimeConfig=!_BirdRuntimeConfig!_NOHOST " )
	if /i [!_BirdSwitch_RAWFLAG%%A!]==[nospeed] ( set "_flag-nospeed=true" &set "_BirdRuntimeConfig=!_BirdRuntimeConfig!_NOSPEED " )
	if /i [!_BirdSwitch_RAWFLAG%%A!]==[showhosts] ( set "_flag-showhost=true" &set "_BirdRuntimeConfig=!_BirdRuntimeConfig!_SHOWHOST " )
	if /i [!_BirdSwitch_RAWFLAG%%A!]==[showhost] ( set "_flag-showhost=true" &set "_BirdRuntimeConfig=!_BirdRuntimeConfig!_SHOWHOST " )
	if defined _flag-w8 (
		if /i [!_BirdSwitch_RAWFLAG%%A!]==[a] ( set "_flag-a=true" &set "_BirdRuntimeConfig=!_BirdRuntimeConfig!_A " )
		if /i [!_BirdSwitch_RAWFLAG%%A!]==[b] ( set "_flag-b=true" &set "_BirdRuntimeConfig=!_BirdRuntimeConfig!_B " )
		if /i [!_BirdSwitch_RAWFLAG%%A!]==[o] ( set "_flag-o=true" &set "_BirdRuntimeConfig=!_BirdRuntimeConfig!_O " )
	)
	if defined _flag-w10 (
		if /i [!_BirdSwitch_RAWFLAG%%A!]==[app] goto Blackbird_AppMan
		if /i [!_BirdSwitch_RAWFLAG%%A!]==[a] ( set "_flag-a=true" &set "_BirdRuntimeConfig=!_BirdRuntimeConfig!_A " )
		if /i [!_BirdSwitch_RAWFLAG%%A!]==[b] ( set "_flag-b=true" &set "_BirdRuntimeConfig=!_BirdRuntimeConfig!_B " )
		if /i [!_BirdSwitch_RAWFLAG%%A!]==[c] ( set "_flag-c=true" &set "_BirdRuntimeConfig=!_BirdRuntimeConfig!_C " )
		if /i [!_BirdSwitch_RAWFLAG%%A!]==[j] ( set "_flag-j=true" &set "_BirdRuntimeConfig=!_BirdRuntimeConfig!_J " )
		if /i [!_BirdSwitch_RAWFLAG%%A!]==[o] ( set "_flag-o=true" &set "_BirdRuntimeConfig=!_BirdRuntimeConfig!_O " )
		if /i [!_BirdSwitch_RAWFLAG%%A!]==[w] ( set "_flag-w=true" &set "_BirdRuntimeConfig=!_BirdRuntimeConfig!_W " )
		if /i [!_BirdSwitch_RAWFLAG%%A!]==[x] ( set "_flag-x=true" &set "_BirdRuntimeConfig=!_BirdRuntimeConfig!_X " )
		if /i [!_BirdSwitch_RAWFLAG%%A!]==[kc] ( set "_flag-kc=true" &set "_BirdRuntimeConfig=!_BirdRuntimeConfig!_KC " )
		if /i [!_BirdSwitch_RAWFLAG%%A!]==[ke] ( set "_flag-ke=true" &set "_BirdRuntimeConfig=!_BirdRuntimeConfig!_KE " )
		if /i [!_BirdSwitch_RAWFLAG%%A!]==[kf] ( set "_flag-kf=true" &set "_BirdRuntimeConfig=!_BirdRuntimeConfig!_KF " )
		if /i [!_BirdSwitch_RAWFLAG%%A!]==[kl] ( set "_flag-kl=true" &set "_BirdRuntimeConfig=!_BirdRuntimeConfig!_KL " )
		if /i [!_BirdSwitch_RAWFLAG%%A!]==[ks] ( set "_flag-ks=true" &set "_BirdRuntimeConfig=!_BirdRuntimeConfig!_KS " )
	)
	if not defined _flag-w10 if not defined _OS-UNKNOWN (
		if /i [!_BirdSwitch_RAWFLAG%%A!]==[m] ( set "_flag-m=true" &set "_BirdRuntimeConfig=!_BirdRuntimeConfig!_M " )
		if /i [!_BirdSwitch_RAWFLAG%%A!]==[updates] ( set "_flag-updates=true" &set "_BirdRuntimeConfig=!_BirdRuntimeConfig!_UPDATES " )
		if /i [!_BirdSwitch_RAWFLAG%%A!]==[update] ( set "_flag-updates=true" &set "_BirdRuntimeConfig=!_BirdRuntimeConfig!_UPDATES " )
		if /i [!_BirdSwitch_RAWFLAG%%A!]==[noupdates] ( set "_flag-noupdate=true" &set "_BirdRuntimeConfig=!_BirdRuntimeConfig!_NOUPDATE " )
		if /i [!_BirdSwitch_RAWFLAG%%A!]==[noupdate] ( set "_flag-noupdate=true" &set "_BirdRuntimeConfig=!_BirdRuntimeConfig!_NOUPDATE " )
))
if !_BirdSwitch_RAWCounter! gtr 1 ( set "_BirdRuntimeMultiFlags=true" &set "_BirdSwitchActive=true" )
if not defined _BirdRuntimeMultiFlags if defined _BirdRuntimeConfig (
	set "_BirdRuntimeConfig=!_BirdRuntimeConfig: =!"
	call :SwitchSlave "!_BirdRuntimeConfig!" -STATE
	if defined _BirdRuntimeFlag set _BirdSwitchActive=true
)
:BlackbirdStartupScanner
if not defined _BirdSwitchActive set "_BirdRuntimeNoDeepSwitch=true"
echo.
call :GUI 0f "   B l a c k b i r d  "&call :GUI 06 "V6"
<nul set /p =".!BS!!__SIZE_Debug!       "&call :GUI 0f "Windows privacy, security and performance" /n
<nul set /p =".!BS!!__SIZE_Debug!                                                        "&call :GUI 06 "Version !blackbird_ver!" /n
echo.
if defined _OS-UNKNOWN ( <nul set /p =".!BS!   " &call :GUI !_BC_B!!_BC_D! " WARNING "&call :GUI 0f " !_VerboseOS! " /n &echo. )
if defined _BirdSwitchActive goto SwitchFunctionTable
call :GUI 0f "  ["&call :GUI !_BC_G!!_BC_I! " Scanning system - Please wait "&call :GUI 0f "]" /n
<nul set /p =".!BS!  "
set "_BOOT_IAI=" &set "_BOOT_SchIAI=" &set "_BOOT_RegLoggersIAI=" &set "_BOOT_SrvIAI=" &set "_BOOT_PrivIAI="
set "_BOOT_TelemIAI=" &set "_BOOT_gwxIAI=" &set "_BOOT_KBUpdatesIAI=" &set "_BOOT_AutoUpdatesOFF="
set "_BOOT_StartupNotes_isActive=" &set "_BOOT_MLTask_DISABLED=Disabled"
if defined _BirdLangString if defined _Bird_ExtPS call :GetMLSET _BOOT_MLTask_DISABLED -SCHTASKS -DISABLED
if not defined _flag-w10 (
	rem ############# x32_flag ###############
	if defined os64bit if "!blackbird_bit!"=="64" (
		set "WindowsUpdateState=Disabled" &set "_BOOT_AutoUpdatesOFF=true"
		set "_BOOT_AUOptionsRoot=HKLM\SOFTWARE\Policies\Microsoft\Windows"
		reg query !_BOOT_AUOptionsRoot! | findstr /irc:".*\\Windows\\WindowsUpdate$" >nul && (
			reg query !_BOOT_AUOptionsRoot!\WindowsUpdate | findstr /irc:".*\\WindowsUpdate\\AU$" >nul && (
				reg query !_BOOT_AUOptionsRoot!\WindowsUpdate\AU | findstr /irc:" AUOptions .*REG_DWORD .*0x[3-5]$" >nul && ( set "WindowsUpdateState=Enabled" &set "_BOOT_AutoUpdatesOFF=" ) || (
					reg query !_BOOT_AUOptionsRoot!\WindowsUpdate\AU | findstr /irc:" AUOptions .*REG_DWORD .*0x2$" >nul && set "WindowsUpdateState=Manual"
			))
		) || (
			set "_BOOT_AUOptionsRoot=HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion"
			reg query !_BOOT_AUOptionsRoot! | findstr /irc:".*\\CurrentVersion\\WindowsUpdate$" >nul && (
				reg query !_BOOT_AUOptionsRoot!\WindowsUpdate | findstr /irc:".*\\WindowsUpdate\\Auto Update$" >nul && (
					set "_BOOT_AUOptionsFinal_Quoted=^"!_BOOT_AUOptionsRoot!\WindowsUpdate\Auto Update^""
					reg query !_BOOT_AUOptionsFinal_Quoted! | findstr /irc:" AUOptions .*REG_DWORD .*0x[3-5]$" >nul && ( set "WindowsUpdateState=Enabled" &set "_BOOT_AutoUpdatesOFF=" ) || (
						reg query !_BOOT_AUOptionsFinal_Quoted! | findstr /irc:" AUOptions .*REG_DWORD .*0x2$" >nul && set "WindowsUpdateState=Manual"
	)))))
	rem ############# x32_flag ###############
	REG QUERY "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Component Based Servicing\Packages" | findstr "!_Bird_BigKBPool!" >nul && (set "_BOOT_KBUpdatesIAI=true" &set "_BOOT_IAI=true")
	tasklist | findstr /i "gwx.exe">nul && ( set "_BOOT_gwxIAI=true" &set "_BOOT_IAI=true" )
)
call :GetHostBlockState
if defined _flag-w10 ( set "_Bird_BootTSKExceptions=.*\\UpdateOrchestrator\\Schedule.*Scan$ .*\\USO_Broker_Display$ .*\\USO_UxBroker$ .*\\WinSAT$" ) else ( set "_Bird_BootTSKExceptions=.*\\WinSAT$" )
schtasks /query /fo list | findstr /vr "!_Bird_BootTSKExceptions!">>"!BlackTemp!\blackbird.tempsch_raw.tmp"
if not exist "!BlackTemp!\blackbird.tempsch_raw.tmp" (set "ERROR_NOTEMP_VALUE=!BlackTemp!\blackbird.tempsch_raw.tmp" &goto ERROR_NOTEMP)
for %%A in (!_Bird_BigTaskPool!) do (
	set "_Bird_BootTaskQuery=%%A"
	set "_Bird_BootTaskQuery=!_Bird_BootTaskQuery:[=(!" &set "_Bird_BootTaskQuery=!_Bird_BootTaskQuery:]=)!"
	set "_Bird_BootTaskQuery=!_Bird_BootTaskQuery:$= !" &set "_Bird_BootTaskQuery=!_Bird_BootTaskQuery:\=\\!"
	findstr /irc:" !_Bird_BootTaskQuery!$" "!BlackTemp!\blackbird.tempsch_raw.tmp" >nul && (
		set "_Bird_BootTaskQuery=!_Bird_BootTaskQuery:\\=\!" &set "_Bird_BootTaskQueryQuoted=^"!_Bird_BootTaskQuery!^""
		schtasks /query /TN !_Bird_BootTaskQueryQuoted! | findstr /irc:" !_BOOT_MLTask_DISABLED! .*$" >nul || ( set "_BOOT_SchIAI=true" &set "_BOOT_IAI=true" )
))
for %%A in (!_Bird_BigServicePool!) do (
	set "_Bird_BootSrvCheck=%%A"
	reg query HKLM\SYSTEM\CurrentControlSet\Services | findstr /irc:".*\\services\\!_Bird_BootSrvCheck!$" >nul && (
		reg query HKLM\SYSTEM\CurrentControlSet\Services\!_Bird_BootSrvCheck! | findstr /irc:" start .*REG_DWORD .*0x[0-3]$" >nul && ( set "_BOOT_SrvIAI=true" &set "_BOOT_IAI=true" )
))
set "_AUTOLOG_TemplateExceptions=ReadyBoot EventLog- Status"
if defined _flag-w10 set "_AUTOLOG_TemplateExceptions=ReadyBoot Defender EventLog- Status"
for /F "tokens=* usebackq delims=" %%A in (`reg query "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger" ^| findstr /v "!_AUTOLOG_TemplateExceptions!" ^| findstr /i ".*\\WMI\\Autologger\\.*"`) do (
	set _Bird_BootAutoLog_FullPath=%%A
	set "_Bird_BootAutoLog_FullPathQuoted=^"!_Bird_BootAutoLog_FullPath!^""
	reg query !_Bird_BootAutoLog_FullPathQuoted! | findstr /irc:" Start .*REG_DWORD .*0x1$" >nul && ( set "_BOOT_RegLoggersIAI=true" &set "_BOOT_IAI=true" )
)
if defined _flag-w10 (
	reg query HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AdvertisingInfo | findstr /irc:" Id .*REG_SZ .*null$" >nul || ( set "_BOOT_PrivIAI=true" &set "_BOOT_IAI=true" )
)
echo. &call :GUI 0f "   Autologgers        =  " & <nul set /p ="["
if defined _BOOT_RegLoggersIAI ( call :GUI !_BC_B!!_BC_D! " Not secure " & <nul set /p ="]      " ) else ( call :GUI !_BC_A!!_BC_C! " Secure " & <nul set /p ="]          " )
if defined _flag-exthost (
	if defined _flag-extupdate ( <nul set /p =".!BS!!__SIZE_Debug!" &call :GUI 0f "External hosts   = " ) else ( <nul set /p =".!BS!  !__SIZE_Debug!" &call :GUI 0f "External hosts = " )
	<nul set /p ="[" &call :GUI !_BC_E!!_BC_F! " Ready " & <nul set /p ="]" &echo.
) else (
	if defined _flag-extupdate ( <nul set /p =".!BS!!__SIZE_Debug!"&call :GUI 0f "External updates = " & <nul set /p ="["&call :GUI !_BC_E!!_BC_F! " Ready " & <nul set /p ="]" &echo. ) else ( echo. )
)
call :GUI 0f "   Scheduled tasks    =  " & <nul set /p ="["
if defined _BOOT_SchIAI ( call :GUI !_BC_B!!_BC_D! " Not secure " & <nul set /p ="]      " ) else ( call :GUI !_BC_A!!_BC_C! " Secure " & <nul set /p ="]          " )
if defined _flag-exthost ( if defined _flag-extupdate ( <nul set /p =".!BS!!__SIZE_Debug!"&call :GUI 0f "External updates = " & <nul set /p ="[" &call :GUI !_BC_E!!_BC_F! " Ready " & <nul set /p ="]" &echo. ) else ( echo. )) else ( echo. )
call :GUI 0f "   Services           =  " & <nul set /p ="["
if defined _BOOT_SrvIAI ( call :GUI !_BC_B!!_BC_D! " Not secure " & <nul set /p ="]" &echo. ) else ( call :GUI !_BC_A!!_BC_C! " Secure " & <nul set /p ="]" &echo. )
if not defined _flag-w10 (
	call :GUI 0f "   Windows updates    =  " & <nul set /p ="["
	if defined _BOOT_KBUpdatesIAI ( call :GUI !_BC_B!!_BC_D! " Not secure " & <nul set /p ="]" &echo. ) else ( call :GUI !_BC_A!!_BC_C! " Secure " & <nul set /p ="]" &echo. )
)
if defined _flag-w10 (
	call :GUI 0f "   Privacy            =  " & <nul set /p ="["
	if defined _BOOT_PrivIAI ( call :GUI !_BC_B!!_BC_D! " Not secure " & <nul set /p ="]" &echo. ) else ( call :GUI !_BC_A!!_BC_C! " Secure " & <nul set /p ="]" &echo. )
)
call :GUI 0f "   Telemetry / Hosts  =  " & <nul set /p ="["
if defined _BOOT_TelemIAI ( call :GUI !_BC_B!!_BC_D! " Not blocked " & <nul set /p ="]" &echo. ) else ( call :GUI !_BC_A!!_BC_C! " Blocked " & <nul set /p ="]" &echo. )
rem ############# x32_flag ###############
if not defined _flag-w10 (
	if defined os64bit if "!blackbird_bit!"=="64" (
		call :GUI 0f "   Automatic updates  =  " & <nul set /p ="["
		if "!WindowsUpdateState!"=="Manual" ( call :GUI !_BC_A!!_BC_C! " !WindowsUpdateState! " & <nul set /p ="]" &echo. ) else ( call :GUI 0e " !WindowsUpdateState! " & <nul set /p ="]" &echo. )
))
rem ############# x32_flag ###############
if not defined _flag-w10 (
	call :GUI 0f "   GWX                =  " & <nul set /p ="["
	if defined _BOOT_gwxIAI ( call :GUI !_BC_B!!_BC_D! " Installed, Active " & <nul set /p ="]" &echo. ) else ( call :GUI !_BC_A!!_BC_C! " Not installed " & <nul set /p ="]" &echo. )
	call :GUI 0f "   WGA                =  " & <nul set /p ="["
	if exist "!systemroot!\system32\WgaLogon.dll.bak" (call :GUI !_BC_B!!_BC_D! " Installed "&call :GUI !_BC_A!!_BC_C! " Not active " & <nul set /p ="]" &echo. )
	if exist "!systemroot!\system32\WgaLogon.dll" (call :GUI !_BC_B!!_BC_D! " Installed, Active ") else (call :GUI !_BC_A!!_BC_C! " Not installed " & <nul set /p ="]" &echo. )
)
call :GUI 0f "   Backup             =  "
if defined _flag-extbackup (
	<nul set /p ="[" &call :GUI !_BC_A!!_BC_C! " Found "
	if defined _ExtBak_Datestamp ( call :GUI !_BC_A!!_BC_C! "- !_ExtBak_Datestamp! " & <nul set /p ="]" &echo. ) else ( <nul set /p ="]" &echo. )
) else (
	call :GUI !_BC_E!!_BC_H! "["&call :GUI 0e " No backup made "&call :GUI !_BC_E!!_BC_H! "]" /n
)
if defined _flag-w10 (
	call :GUI 0f "   Automatic updates  =  " & <nul set /p ="["
	reg query HKLM\SYSTEM\CurrentControlSet\Services\wuauserv | findstr /irc:" Start .*REG_DWORD .*0x4$" >nul && ( call :GUI 0e " Off " &set "_BOOT_AutoUpdatesOFF=true" )
	reg query HKLM\SYSTEM\CurrentControlSet\Services\wuauserv | findstr /irc:" Start .*REG_DWORD .*0x[1-3]$" >nul && ( call :GUI !_BC_E!!_BC_F! " On " &set "_BOOT_AutoUpdatesOFF=" )
	<nul set /p ="]"&echo.
)
if defined _FEED (
	if not defined _flag-extbackup (
		echo. &set "_BOOT_StartupNotes_isActive=true"
		call :GUI !_BC_E!!_BC_H! "   ["&call :GUI 0e " > "&call :GUI !_BC_E!!_BC_H! "] " & <nul set /p ="Press"&call :GUI 0f " B " & <nul set /p ="to create a backup file." &echo.
	) else (
		if not defined _BOOT_StartupNotes_isActive ( echo. &set "_BOOT_StartupNotes_isActive=true" )
		<nul set /p =".!BS!   ["&call :GUI !_BC_A!!_BC_C! " > " & <nul set /p ="] Press"&call :GUI 0f " R " & <nul set /p ="to restore backup."&echo.
	)
	if defined _BOOT_SchIAI (
		if not defined _BOOT_RegLoggersIAI if not defined _BOOT_SrvIAI (
			if not defined _BOOT_PrivIAI if not defined _BOOT_TelemIAI (
				if not defined _BOOT_gwxIAI if not defined _BOOT_KBUpdatesIAI (
					<nul set /p =".!BS!   ["&call :GUI ec " > " & <nul set /p ="] Press"&call :GUI 0f " / " & <nul set /p ="to run Blackbird STD and secure scheduled tasks." &echo.
	))))
	if defined _BOOT_IAI (
		if not defined _BOOT_StartupNotes_isActive ( echo. &set "_BOOT_StartupNotes_isActive=true" )
		<nul set /p =".!BS!   ["&call :GUI !_BC_B!!_BC_D! " > " & <nul set /p ="] Press"&call :GUI 0f " S " & <nul set /p ="to perform a scan and show all issues found." &echo.
	)
	if defined _flag-w10 (
		if not defined _BOOT_StartupNotes_isActive ( echo. &set "_BOOT_StartupNotes_isActive=true" )
		<nul set /p =".!BS!   ["&call :GUI 3f " > " & <nul set /p ="] Press"&call :GUI 0f " A " & <nul set /p ="to start the App Manager."&echo.
))
:BIRD_PROMPT
echo. &echo.
if not defined _FEED (
	call :GUI 0f "   Press any key to apply"&call :GUI 06 " Blackbird "&call :GUI 0f "to your computer > "
	pause>nul
	echo. &goto subswitch_MainFlow
)
set _BirdInput=
call :GUI 0f "   Press any other key to apply "&call :GUI 06 "Blackbird"&call :GUI 0f " to your computer > "
for /F "delims=" %%B in ('xcopy /L /w "!_FEED!" "!_FEED!" 2^>NUL') do ( if not defined _BirdInput set "_BirdInput=%%B" )
set "_BirdInput=!_BirdInput:~-1!"
echo. &echo.
if not defined _flag-w10 (
	if [!_BirdInput!]==[1] ( set "_flag-updates=true" &set "_BirdRuntimeFlag=true" &set "_BirdRuntimeConfig=_UPDATES" &goto SwitchFunctionTable )
	if [!_BirdInput!]==[2] ( set "_flag-tasks=true" &set "_BirdRuntimeFlag=true" &set "_BirdRuntimeConfig=_TASKS" &goto SwitchFunctionTable )
	if [!_BirdInput!]==[3] ( set "_flag-services=true" &set "_BirdRuntimeFlag=true" &set "_BirdRuntimeConfig=_SERVICES" &goto SwitchFunctionTable )
	if [!_BirdInput!]==[4] ( set "_flag-reg=true" &set "_BirdRuntimeFlag=true" &set "_BirdRuntimeConfig=_REG" &goto SwitchFunctionTable )
	if [!_BirdInput!]==[5] ( set "_flag-hostblock=true" &set "_BirdRuntimeFlag=true" &set "_BirdRuntimeConfig=_HOSTBLOCK" &goto SwitchFunctionTable )
)
if defined _flag-w10 (
	if [!_BirdInput!]==[1] ( set "_flag-tasks=true" &set "_BirdRuntimeFlag=true" &set "_BirdRuntimeConfig=_TASKS" &goto SwitchFunctionTable )
	if [!_BirdInput!]==[2] ( set "_flag-services=true" &set "_BirdRuntimeFlag=true" &set "_BirdRuntimeConfig=_SERVICES" &goto SwitchFunctionTable )
	if [!_BirdInput!]==[3] ( set "_flag-reg=true" &set "_BirdRuntimeFlag=true" &set "_BirdRuntimeConfig=_REG" &goto SwitchFunctionTable )
	if [!_BirdInput!]==[4] ( set "_flag-hostblock=true" &set "_BirdRuntimeFlag=true" &set "_BirdRuntimeConfig=_HOSTBLOCK" &goto SwitchFunctionTable )
	if /i [!_BirdInput!]==[a] goto Blackbird_AppMan
	if /i [!_BirdInput!]==[x] ( set "_flag-x=true" &set "_BirdRuntimeFlag=true" &set "_BirdRuntimeConfig=_X" &goto SwitchFunctionTable )
	if /i [!_BirdInput!]==[w] ( set "_flag-w=true" &set "_BirdRuntimeFlag=true" &set "_BirdRuntimeConfig=_W" &goto SwitchFunctionTable )
	if /i [!_BirdInput!]==[j] ( set "_flag-j=true" &set "_BirdRuntimeFlag=true" &set "_BirdRuntimeConfig=_J" &goto SwitchFunctionTable )
)
if /i [!_BirdInput!]==[b] goto Blackbird_Backup
if /i [!_BirdInput!]==[r] goto Blackbird_Recovery
if /i [!_BirdInput!]==[s] goto Blackbird_Scan
if [!_BirdInput!]==[/] goto Blackbird_STD
if [!_BirdInput!]==[:] (
	if defined _flag-color ( set "_flag-color=" ) else ( set "_flag-color=true" )
	cls &goto Birdboot
)
if [!_BirdInput!]==[@] goto Blackbird_DevShell
if /i [!_BirdInput!]==[h] ( set "_flag-showhost=true" &set "_BirdRuntimeFlag=true" &set "_BirdRuntimeConfig=_SHOWHOST" &goto SwitchFunctionTable )
if /i [!_BirdInput!]==[n] ( set "_flag-n=true" &set "_BirdRuntimeFlag=true" &set "_BirdRuntimeConfig=_N" &goto SwitchFunctionTable )
if /i [!_BirdInput!]==[e] ( set "_flag-e=true" &set "_BirdRuntimeFlag=true" &set "_BirdRuntimeConfig=_E" &goto SwitchFunctionTable )
if /i [!_BirdInput!]==[g] ( set "_flag-g=true" &set "_BirdRuntimeFlag=true" &set "_BirdRuntimeConfig=_G" &goto SwitchFunctionTable )
if /i [!_BirdInput!]==[u] ( set "_flag-u=true" &set "_BirdRuntimeFlag=true" &set "_BirdRuntimeConfig=_U" &goto SwitchFunctionTable )
if /i [!_BirdInput!]==[l] ( set "_flag-l=true" &set "_BirdRuntimeFlag=true" &set "_BirdRuntimeConfig=_L" &goto SwitchFunctionTable )
if /i [!_BirdInput!]==[i] ( set "_flag-i=true" &set "_BirdRuntimeFlag=true" &set "_BirdRuntimeConfig=_I" &goto SwitchFunctionTable )
if /i [!_BirdInput!]==[v] ( set "_flag-v=true" &set "_BirdRuntimeFlag=true" &set "_BirdRuntimeConfig=_V" &goto SwitchFunctionTable )
if /i [!_BirdInput!]==[q] ( call :GetClean & exit )
if [!_BirdInput!]==[?] (
	if not defined _flag-w10 (
		call :GUI 07 "   Press"&call :GUI 0f " [ 1 ] "&call :GUI 07 "to only remove KB updates." /n
		call :GUI 07 "   Press"&call :GUI 0f " [ 2 ] "&call :GUI 07 "to only secure/disable scheduled tasks." /n
		call :GUI 07 "   Press"&call :GUI 0f " [ 3 ] "&call :GUI 07 "to only secure/disable services." /n
		call :GUI 07 "   Press"&call :GUI 0f " [ 4 ] "&call :GUI 07 "to only secure registry." /n
		call :GUI 07 "   Press"&call :GUI 0f " [ 5 ] "&call :GUI 07 "to only run IP/host blocker." /n
	)
	if defined _flag-w10 (
		call :GUI 07 "   Press"&call :GUI 0f " [ 1 ] "&call :GUI 07 "to only secure/disable scheduled tasks." /n
		call :GUI 07 "   Press"&call :GUI 0f " [ 2 ] "&call :GUI 07 "to only secure/disable services." /n
		call :GUI 07 "   Press"&call :GUI 0f " [ 3 ] "&call :GUI 07 "to only secure registry." /n
		call :GUI 07 "   Press"&call :GUI 0f " [ 4 ] "&call :GUI 07 "to only run IP/host blocker." /n
	)
	<nul set /p =".!BS!   ----------------------------------------"&echo.
	if defined _flag-w10 ( call :GUI 07 "   Press"&call :GUI 0f " [ A ] "&call :GUI 07 "to start the Blackbird App Manager." /n )
	call :GUI 07 "   Press"&call :GUI 0f " [ B ] "&call :GUI 07 "to create a backup of your current settings." /n
	call :GUI 07 "   Press"&call :GUI 0f " [ R ] "&call :GUI 07 "to recover from a backup or restore to defaults." /n
	call :GUI 07 "   Press"&call :GUI 0f " [ S ] "&call :GUI 07 "to perform a full system scan." /n
	call :GUI 07 "   Press"&call :GUI 0f " [ V ] "&call :GUI 07 "to run Blackbird in Verbose mode." /n
	call :GUI 07 "   Press"&call :GUI 0f " [ E ] "&call :GUI 07 "to disable/enable SMB over NetBIOS/shares." /n
	call :GUI 07 "   Press"&call :GUI 0f " [ G ] "&call :GUI 07 "to disable/enable Games Explorer." /n
	call :GUI 07 "   Press"&call :GUI 0f " [ U ] "&call :GUI 07 "to disable/enable automatic Windows updates." /n
	if defined _flag-w10 ( call :GUI 07 "   Press"&call :GUI 0f " [ W ] "&call :GUI 07 "to enable/disable Task View." /n )
	if defined _flag-w10 ( call :GUI 07 "   Press"&call :GUI 0f " [ X ] "&call :GUI 07 "to enable/disable Xbox services." /n )
	if defined _flag-w10 ( call :GUI 07 "   Press"&call :GUI 0f " [ J ] "&call :GUI 07 "to enable/disable application access to local devices." /n )
	call :GUI 07 "   Press"&call :GUI 0f " [ H ] "&call :GUI 07 "to show all active network host blocks." /n
	call :GUI 07 "   Press"&call :GUI 0f " [ N ] "&call :GUI 07 "to remove all active network host blocks." /n
	call :GUI 07 "   Press"&call :GUI 0f " [ I ] "
	if not defined _flag-w10 ( call :GUI 07 "to fix Bluetooth pairing issues." /n ) else if defined _flag-w10 ( call :GUI 07 "to fix notifications." /n )
	call :GUI 07 "   Press"&call :GUI 0f " [ L ] "&call :GUI 07 "to fix network/LAN connectivity issues." /n
	call :GUI 07 "   Press"&call :GUI 0f " [ / ] "&call :GUI 07 "to start Blackbird STD." /n
	call :GUI 07 "   Press"&call :GUI 0f " [ : ] "&call :GUI 07 "to use an alternative color scheme." /n
	call :GUI 07 "   Press"&call :GUI 0f " [ ? ] "&call :GUI 07 "to show help." /n
	call :GUI 07 "   Press"&call :GUI 0f " [ Q ] "&call :GUI 07 "to quit Blackbird."
	goto BIRD_PROMPT
)
goto subswitch_MainFlow

:SwitchFunctionTable
if not defined _BirdRuntimeMultiFlags if not defined _BirdRuntimeFlag (
	set "_Bird_NoDeepFilteredConfig=!_BirdRuntimeConfig:_=!"
	set _flag-!_Bird_NoDeepFilteredConfig!=
	set "_flag-v=" &echo.
	if not defined _SWITCH_SHOWHOST-MSGDBG if not defined _BirdRuntimeNoDeepSwitch ( call :GUI 0f "   Done. Please restart your computer for changes to take effect." /n )
	set "_SWITCH_SHOWHOST-MSGDBG="
	call :GetClean
	if defined _BirdRuntimeNoDeepSwitch (
		<nul set /p =".!BS!   Press any key to return to the main window"&call :GUI 0f " > "
		pause>nul
		cls & goto Birdboot
	)
	if not defined _flag-s pause>nul
	echo. & goto :eof
)
if not defined _BirdRuntimeMultiFlags if defined _BirdRuntimeConfig (
	if defined _flag-v goto subswitch_MainFlow
	call :SwitchSlave "!_BirdRuntimeConfig!" -STATE
	call :DrawBird 1 -LOOP 2
	call :DrawBird 3 __SwitchTable_FillSpace
	<nul set /p =".!BS!!__SwitchTable_FillSpace! "&call :GUI 0f "[ Active switch ]" /n
	call :DrawBird 4 __SwitchTable_FillSpace
	<nul set /p =".!BS!!__SwitchTable_FillSpace! - "&call :GUI 06 "!_BirdRuntimeFlag!" /n
	call :DrawBird 5 -LOOP 10
	echo. &echo.
	if not defined _flag-s (
		if not defined _FEED (
			call :GUI 0f "   Press any key to run selected switch > "
			pause>nul
		) else (
			set "_BirdInput="
			<nul set /p =".!BS!   ["&call :GUI 0f " > "
			<nul set /p ="] Press"&call :GUI 0f " Q "
			if defined _BirdRuntimeNoDeepSwitch (
				<nul set /p ="to cancel and return to the main window." &echo.
			) else (
				<nul set /p ="to cancel and quit."&echo.
			)
			echo.
			call :GUI 0f "   Press any other key to run selected switch > "
			for /F "delims=" %%B in ('xcopy /L /w "!_FEED!" "!_FEED!" 2^>NUL') do ( if not defined _BirdInput set "_BirdInput=%%B" )
			set "_BirdInput=!_BirdInput:~-1!"
			if /i [!_BirdInput!]==[q] if defined _BirdRuntimeNoDeepSwitch (
				set "_Bird_NoDeepFilteredConfig=!_BirdRuntimeConfig:_=!"
				set _flag-!_Bird_NoDeepFilteredConfig!=
				set _flag-v=
				cls & goto Birdboot
			) else if /i [!_BirdInput!]==[q] if not defined _BirdRuntimeNoDeepSwitch (
				call :GetClean
				echo. & goto :eof
	)))
	echo. &echo.
	if defined _flag-updates ( set "_flag-v=true" &goto GreenDog )
	if defined _flag-tasks ( set "_flag-v=true" &goto BlueDog_Tasks )
	if defined _flag-services ( set "_flag-v=true" &goto BlueDog_Services )
	if defined _flag-reg ( set "_flag-v=true" &goto BlueDog_Registry )
	if defined _flag-hostblock ( set "_flag-v=true" &goto RedPanda )
	if defined _flag-s goto subswitch_MainFlow
	if defined _flag-nohost goto subswitch_MainFlow
	if defined _flag-noupdate goto subswitch_MainFlow
	if defined _flag-nospeed goto subswitch_MainFlow
	goto subswitch!_BirdRuntimeConfig!
)
if defined _BirdRuntimeMultiFlags (
	set _Switch_MultiFlags_NextContinue=
	if defined _SwitchSlave_Config set _Switch_MultiFlags_NextContinue=true
	set "_SwitchSlave_Config=!_BirdRuntimeConfig!"
	echo !_SwitchSlave_Config! | findstr "_V" >nul && goto subswitch_MainFlow
	if defined _SwitchSlave_Config (
		if not defined _Switch_MultiFlags_NextContinue (
			call :SwitchSlave "!_SwitchSlave_Config!" -SHOW_LOGO
			echo. &echo.
			if not defined _flag-s (
				if not defined _FEED (
					call :GUI 0f "   Press any key to run selected switches > "
					pause>nul
				) else (
					set "_BirdInput="
					<nul set /p =".!BS!   ["&call :GUI 0f " > "
					<nul set /p ="] Press"&call :GUI 0f " Q "
					<nul set /p ="to cancel and quit."&echo.
					echo.
					call :GUI 0f "   Press any other key to run selected switches > "
					for /F "delims=" %%B in ('xcopy /L /w "!_FEED!" "!_FEED!" 2^>NUL') do ( if not defined _BirdInput set "_BirdInput=%%B" )
					set "_BirdInput=!_BirdInput:~-1!"
					if /i [!_BirdInput!]==[q] (
						call :GetClean
						echo. & goto :eof
		))))
		echo. &echo.
		if defined _flag-updates ( set "_flag-v=true" & goto GreenDog )
		if defined _flag-tasks ( set "_flag-v=true" & goto BlueDog_Tasks )
		if defined _flag-services ( set "_flag-v=true" & goto BlueDog_Services )
		if defined _flag-reg ( set "_flag-v=true" & goto BlueDog_Registry )
		if defined _flag-hostblock ( set "_flag-v=true" & goto RedPanda )
		if defined _flag-nohost goto subswitch_MainFlow
		if defined _flag-noupdate goto subswitch_MainFlow
		if defined _flag-nospeed goto subswitch_MainFlow
		call :SwitchSlave "!_SwitchSlave_Config!" -EXEC
		goto :eof
	)
	if not defined _SwitchSlave_Config (
		call :GUI 0f "   Done. Please restart your computer for changes to take effect." /n
		call :GetClean
		if not defined _flag-s pause>nul
		goto :eof
	)
	goto :eof
)
goto subswitch_MainFlow

:SwitchSlave
set __SwitchSlave_ExecuteJobs=
set __SwitchSlave_ShowJobs=
set __SwitchSlave_SLCounter=
set __SwitchSlave_Marker=
set "_SwitchSlave_Config=%1"
set _SwitchSlave_Config=!_SwitchSlave_Config:"=!
if "%2"=="-EXEC" (
	set "_SwitchSlave_Config=!_SwitchSlave_Config:_S =!"
	set "_SwitchSlave_Config=!_SwitchSlave_Config:_V =!"
	set "_SwitchSlave_Config=!_SwitchSlave_Config:_NOHOST =!"
	set "_SwitchSlave_Config=!_SwitchSlave_Config:_NOUPDATE =!"
	set "_SwitchSlave_Config=!_SwitchSlave_Config:_NOSPEED =!"
	set "_SwitchSlave_Config=!_SwitchSlave_Config:_UPDATES =!"
	set "_SwitchSlave_Config=!_SwitchSlave_Config:_TASKS =!"
	set "_SwitchSlave_Config=!_SwitchSlave_Config:_SERVICES =!"
	set "_SwitchSlave_Config=!_SwitchSlave_Config:_REG =!"
	set "_SwitchSlave_Config=!_SwitchSlave_Config:_HOSTBLOCK =!"
	if not defined _SwitchSlave_Config goto :eof
	for %%s in (!_SwitchSlave_Config!) do (
		goto subswitch%%s
))
if "%2"=="-STATE" (
	if [!_SwitchSlave_Config!]==[_BAK] (set "_BirdRuntimeFlag=Create backup" & goto:eof)
	if [!_SwitchSlave_Config!]==[_V] (set "_BirdRuntimeFlag=Verbose Mode" & goto:eof)
	if [!_SwitchSlave_Config!]==[_S] (set "_BirdRuntimeFlag=Silent Mode" & goto:eof)
	if [!_SwitchSlave_Config!]==[_N] (set "_BirdRuntimeFlag=Remove Blackbird host blocks" & goto:eof)
	if [!_SwitchSlave_Config!]==[_L] (set "_BirdRuntimeFlag=Fix LAN/network connectivity" & goto:eof)
	if [!_SwitchSlave_Config!]==[_SMB1] (set "_BirdRuntimeFlag=Enable SMBv1" & goto:eof)
	if [!_SwitchSlave_Config!]==[_UPDATES] (set "_BirdRuntimeFlag=Only remove KB updates" & goto:eof)
	if [!_SwitchSlave_Config!]==[_TASKS] (set "_BirdRuntimeFlag=Only secure scheduled tasks" & goto:eof)
	if [!_SwitchSlave_Config!]==[_SERVICES] (set "_BirdRuntimeFlag=Only secure services" & goto:eof)
	if [!_SwitchSlave_Config!]==[_REG] (set "_BirdRuntimeFlag=Only secure registry" & goto:eof)
	if [!_SwitchSlave_Config!]==[_HOSTBLOCK] (set "_BirdRuntimeFlag=Only run IP/host blocker" & goto:eof)
	if [!_SwitchSlave_Config!]==[_NOHOST] (set "_BirdRuntimeFlag=Skip host blocking" & goto:eof)
	if [!_SwitchSlave_Config!]==[_NOUPDATE] (set "_BirdRuntimeFlag=Skip Windows update removal" & goto:eof)
	if [!_SwitchSlave_Config!]==[_NOSPEED] (set "_BirdRuntimeFlag=Skip system speed optimizations" & goto:eof)
	if [!_SwitchSlave_Config!]==[_SHOWHOST] (set "_BirdRuntimeFlag=Show all active host/IP blocks" & goto:eof)
	if [!_SwitchSlave_Config!]==[_A] (
		set "_SWITCH_A_OFF=" &set "_BirdRuntimeFlag=Disable SmartScreen App checking"
		reg query "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer" | findstr /irc:" SmartScreenEnabled .*REG_SZ .*Off$" >nul && ( set "_SWITCH_A_OFF=true" &set "_BirdRuntimeFlag=Enable SmartScreen App checking" )
		goto:eof
	)
	if [!_SwitchSlave_Config!]==[_B] (
		set "_SWITCH_B_OFF=" &set "_BirdRuntimeFlag=Disable Runtime Broker"
		reg query "HKLM\SYSTEM\CurrentControlSet\Services\TimeBrokerSvc" | findstr /irc:" Start .*REG_DWORD .*0x4$" >nul && ( set "_SWITCH_B_OFF=true" &set "_BirdRuntimeFlag=Enable Runtime Broker" )
		goto:eof
	)
	if [!_SwitchSlave_Config!]==[_C] (
		set "_SWITCH_C_OFF=" &set "_BirdRuntimeFlag=Disable all Background App access"
		for /F "tokens=* usebackq delims=" %%C in (`reg query "HKCU\Software\Microsoft\Windows\CurrentVersion\BackgroundAccessApplications" ^| findstr /i ".*\\CurrentVersion\\BackgroundAccessApplications\\.*"`) do (
			set "_SwitchSlave_CLoop_FullPath=" &set "_SwitchSlave_CLoop_CutPath="
			set _SwitchSlave_CLoop_FullPath=%%C
			set "_SwitchSlave_CLoop_CutPath=!_SwitchSlave_CLoop_FullPath:HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\BackgroundAccessApplications\=!"
			reg query HKCU\Software\Microsoft\Windows\CurrentVersion\BackgroundAccessApplications\!_SwitchSlave_CLoop_CutPath! /v "Disabled" | findstr /irc:" disabled .*REG_DWORD .*0x1$" >nul && ( set "_SWITCH_C_OFF=true" )
		)
		if defined _SWITCH_C_OFF set "_BirdRuntimeFlag=Enable all Background App access"
		goto:eof
	)
	if [!_SwitchSlave_Config!]==[_D] (
		set "_SWITCH_D_OFF=" &set "_BirdRuntimeFlag=Disable Windows Defender"
		reg query "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender" | findstr /irc:" DisableAntiSpyware .*REG_DWORD .*0x1$" >nul && ( set "_SWITCH_D_OFF=true" &set "_BirdRuntimeFlag=Enable Windows Defender" )
		goto:eof
	)
	if [!_SwitchSlave_Config!]==[_E] (
		set "_SWITCH_E_OFF=" &set "_BirdRuntimeFlag=Disable SMB over NetBIOS"
		reg query "HKLM\SYSTEM\CurrentControlSet\Services\NetBT\Parameters" | findstr /irc:" SMBDeviceEnabled .*REG_DWORD .*0x0$" >nul && ( set "_SWITCH_E_OFF=true" &set "_BirdRuntimeFlag=Enable SMB over NetBIOS" )
		goto:eof
	)
	if [!_SwitchSlave_Config!]==[_G] (
		set "_SWITCH_G_OFF=" &set "_BirdRuntimeFlag=Disable Games Explorer"
		if not exist "!systemroot!\System32\gameux.dll" if not exist "!systemroot!\SysWOW64\gameux.dll" ( set "_SWITCH_G_OFF=true" &set "_BirdRuntimeFlag=Enable Games Explorer" )
		goto:eof
	)
	if [!_SwitchSlave_Config!]==[_P] (
		set "_SWITCH_P_OFF=" &set "_BirdRuntimeFlag=Disable Diagnostic Policy Service"
		reg query "HKLM\SYSTEM\CurrentControlSet\Services\DPS" | findstr /irc:" Start .*REG_DWORD .*0x4$" >nul && ( set "_SWITCH_P_OFF=true" &set "_BirdRuntimeFlag=Enable Diagnostic Policy Service" )
		goto:eof
	)
	if [!_SwitchSlave_Config!]==[_H] (
		set "_SWITCH_H_OFF=true" &set "_BirdRuntimeFlag=Enable Hibernation"
		dir /a:h /b "!systemdrive!\" | findstr /i "hiberfil.sys" >nul && ( set "_SWITCH_H_OFF=" &set "_BirdRuntimeFlag=Disable Hibernation" )
		goto:eof
	)
	if [!_SwitchSlave_Config!]==[_I] (
		if defined _flag-w10 (set "_BirdRuntimeFlag=Fix Device Settings / Bluetooth / notifications" &goto:eof) else if not defined _flag-w10 (set "_BirdRuntimeFlag=Fix Bluetooth pairing" &goto:eof)
	)
	if [!_SwitchSlave_Config!]==[_J] (
		set "_SWITCH_J_OFF=" &set "_BirdRuntimeFlag=Disable application access to devices"
		reg query HKLM\Software\Policies\Microsoft\Windows | findstr /irc:".*\\Windows\\AppPrivacy$" >nul && (
			reg query HKLM\Software\Policies\Microsoft\Windows\AppPrivacy | findstr /irc:" .*REG_DWORD .*0x[0-2]$" >nul && ( set "_SWITCH_J_OFF=true" &set "_BirdRuntimeFlag=Enable application access to devices" )
		)
		goto:eof
	)
	if [!_SwitchSlave_Config!]==[_M] (
		set "_SWITCH_M_OFF=" &set "_BirdRuntimeFlag=Disable Windows MRT updates"
		reg query "HKLM\SOFTWARE\Policies\Microsoft\MRT" | findstr /irc:" DontOfferThroughWUAU .*REG_DWORD .*0x1$" >nul && ( set "_SWITCH_M_OFF=true" &set "_BirdRuntimeFlag=Enable Windows MRT updates" )
		goto:eof
	)
	if [!_SwitchSlave_Config!]==[_O] (
		set "_SWITCH_O_OFF=" &set "_BirdRuntimeFlag=Disable OneDrive"
		reg query HKLM\SYSTEM\CurrentControlSet\Services | findstr /irc:".*\\services\\OneSyncSvc$" >nul && (
			reg query HKLM\SYSTEM\CurrentControlSet\Services\OneSyncSvc | findstr /irc:" Start .*REG_DWORD .*0x4$" >nul && ( set "_SWITCH_O_OFF=true" &set "_BirdRuntimeFlag=Enable OneDrive" )
		)
		goto:eof
	)
	if [!_SwitchSlave_Config!]==[_T] (
		set "_SWITCH_T_OFF=" &set "_BirdRuntimeFlag=Disable sensors"
		reg query "HKLM\SOFTWARE\Policies\Microsoft\Windows\LocationAndSensors" | findstr /irc:" DisableSensors .*REG_DWORD .*0x1$" >nul && ( set "_SWITCH_T_OFF=true" &set "_BirdRuntimeFlag=Enable sensors" )
		goto:eof
	)
	if [!_SwitchSlave_Config!]==[_U] (
		set "_SWITCH_U_OFF=" &set "_BirdRuntimeFlag=Disable automatic Windows updates"
		if defined _flag-w10 (
			reg query HKLM\SYSTEM\CurrentControlSet\Services\wuauserv | findstr /irc:" Start.*REG_DWORD.*0x[3-4]$" >nul && ( set "_SWITCH_U_OFF=true" &set "_BirdRuntimeFlag=Enable automatic Windows updates" )
		) else (
			reg query "HKLM\Software\Microsoft\Windows\CurrentVersion\WindowsUpdate\Auto Update" | findstr /irc:" AUOptions.*REG_DWORD.*0x2$" >nul && ( set "_SWITCH_U_OFF=true" &set "_BirdRuntimeFlag=Enable automatic Windows updates" )
		)
		goto:eof
	)
	if [!_SwitchSlave_Config!]==[_W] (
		set "_SWITCH_W_OFF=" &set "_BirdRuntimeFlag=Disable Task View"
		reg query HKLM\SYSTEM\CurrentControlSet\Services | findstr /irc:".*\\services\\CDPUserSvc$" >nul && (
			reg query HKLM\SYSTEM\CurrentControlSet\Services\CDPUserSvc | findstr /irc:" start .*REG_DWORD .*0x4$" >nul && ( set "_SWITCH_W_OFF=true" &set "_BirdRuntimeFlag=Enable Task View" )
		)
		goto:eof
	)
	if [!_SwitchSlave_Config!]==[_X] (
		set "_SWITCH_X_OFF=" &set "_BirdRuntimeFlag=Disable Xbox services"
		reg query HKLM\SYSTEM\CurrentControlSet\Services | findstr /irc:".*\\services\\XboxNetApiSvc$" >nul && (
			reg query HKLM\SYSTEM\CurrentControlSet\Services\XboxNetApiSvc | findstr /irc:" Start .*REG_DWORD .*0x4$" >nul && ( set "_SWITCH_X_OFF=true" &set "_BirdRuntimeFlag=Enable Xbox services" )
		)
		goto:eof
	)
	if [!_SwitchSlave_Config!]==[_ASLR] (
		set "_SWITCH_ASLR_OFF=" &set "_BirdRuntimeFlag=Enable system ASLR"
		reg query "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" | findstr /irc:" MoveImages .*REG_DWORD .*0xffffffff$" >nul && ( set "_SWITCH_ASLR_OFF=true" &set "_BirdRuntimeFlag=Disable system ASLR" )
		goto:eof
	)
	goto :eof
)
if "%~2"=="-SHOW" ( set "__SwitchSlave_ShowJobs=true" &set "__SwitchSlave_EmptySpace=" &set "__SwitchSlave_LineBreak= " )
if "%~2"=="-SHOW_LOGO" ( set "__SwitchSlave_ShowJobs=true" &set "__SwitchSlave_SLCounter=1" &set "__SwitchSlave_EmptySpace=" &set "__SwitchSlave_Marker=- " &set "__SwitchSlave_LineBreak=/n" )
if "%~2"=="-SHOW_VERBOSE" ( set "__SwitchSlave_ShowJobs=true" &set "__SwitchSlave_ShowVerboseMode=true" &set "__SwitchSlave_LineBreak=/n" &set "__SwitchSlave_Marker=- " &set "__SwitchSlave_EmptySpace=                       " )
for %%s in (!_SwitchSlave_Config!) do (
	if "!__SwitchSlave_SLCounter!"=="1" (
		call :DrawBird 1 __SwitchSlave_FillSpace
		<nul set /p =".!BS!!__SwitchSlave_FillSpace!"&echo.
		set /a __SwitchSlave_SLCounter=!__SwitchSlave_SLCounter!+1
		call :DrawBird 2 __SwitchSlave_FillSpace
		<nul set /p =".!BS!!__SwitchSlave_FillSpace!"&call :GUI 0f "[ Active switches ]" /n
		set /a __SwitchSlave_SLCounter=!__SwitchSlave_SLCounter!+1
		call :DrawBird 3 __SwitchSlave_FillSpace
		<nul set /p =".!BS!!__SwitchSlave_FillSpace!"&echo.
	)
	if defined __SwitchSlave_SLCounter set /a __SwitchSlave_SLCounter=!__SwitchSlave_SLCounter!+1
	if defined __SwitchSlave_ShowJobs (
		set "__SwitchSlave_CurrentSwitchFunction="
		if defined __SwitchSlave_SLCounter (call :Switch_SubSlave) else if defined __SwitchSlave_ShowVerboseMode (<nul set /p =".!BS!!__SwitchSlave_EmptySpace! !__SwitchSlave_Marker!")
		if "%%s"=="_BAK" ( set "__SwitchSlave_CurrentSwitchFunction=Create backup" )
		if "%%s"=="_C" ( set "__SwitchSlave_CurrentSwitchFunction=Disable/enable background app access" )
		if "%%s"=="_N" ( set "__SwitchSlave_CurrentSwitchFunction=Remove network host blocks" )
		if "%%s"=="_L" ( set "__SwitchSlave_CurrentSwitchFunction=Fix LAN/network connectivity" )
		if "%%s"=="_I" ( if defined _flag-w10 (set "__SwitchSlave_CurrentSwitchFunction=Fix Device Settings / Bluetooth / notifications" & goto:eof ) else if not defined _flag-w10 (set "__SwitchSlave_CurrentSwitchFunction=Fix Bluetooth pairing" & goto:eof) )
		if "%%s"=="_SMB1" ( set "__SwitchSlave_CurrentSwitchFunction=Enable SMBv1" )
		if "%%s"=="_S" ( set "__SwitchSlave_CurrentSwitchFunction=Silent Mode" )
		if "%%s"=="_UPDATES" ( set "__SwitchSlave_CurrentSwitchFunction=Only remove Windows KB updates" )
		if "%%s"=="_TASKS" ( set "__SwitchSlave_CurrentSwitchFunction=Only secure scheduled tasks" )
		if "%%s"=="_SERVICES" ( set "__SwitchSlave_CurrentSwitchFunction=Only secure services" )
		if "%%s"=="_REG" ( set "__SwitchSlave_CurrentSwitchFunction=Only secure registry" )
		if "%%s"=="_HOSTBLOCK" ( set "__SwitchSlave_CurrentSwitchFunction=Only run IP/host blocker" )
		if "%%s"=="_NOSPEED" ( set "__SwitchSlave_CurrentSwitchFunction=Skip system speed optimizations" )
		if "%%s"=="_NOHOST" ( set "__SwitchSlave_CurrentSwitchFunction=Skip host blocking" )
		if "%%s"=="_NOUPDATE" ( set "__SwitchSlave_CurrentSwitchFunction=Skip Windows update removal" )
		if "%%s"=="_SHOWHOST" ( set "__SwitchSlave_CurrentSwitchFunction=Show all active host/IP blocks" )
		if "%%s"=="_KC" (
			set "_SWITCH_KC_OFF=" &set "__SwitchSlave_CurrentSwitchFunction=Kill Cortana"
			if exist "!systemroot!\SystemApps\Microsoft.Windows.Cortana_cw5n1h2txyewy.BlackbirdBackup\" if not exist "!systemroot!\SystemApps\Microsoft.Windows.Cortana_cw5n1h2txyewy\" ( set "_SWITCH_KC_OFF=true" &set "__SwitchSlave_CurrentSwitchFunction=Revive Cortana" )
		)
		if "%%s"=="_KE" (
			set "_SWITCH_KE_OFF=" &set "__SwitchSlave_CurrentSwitchFunction=Kill Edge"
			if exist "!systemroot!\SystemApps\Microsoft.MicrosoftEdge_8wekyb3d8bbwe.BlackbirdBackup\" if not exist "!systemroot!\SystemApps\Microsoft.MicrosoftEdge_8wekyb3d8bbwe\" ( set "_SWITCH_KE_OFF=true" &set "__SwitchSlave_CurrentSwitchFunction=Revive Edge" )
		)
		if "%%s"=="_KF" (
			set "_SWITCH_KF_OFF=" &set "__SwitchSlave_CurrentSwitchFunction=Kill Feedback/ContactSupport"
			if exist "!systemroot!\SystemApps\WindowsFeedback_cw5n1h2txyewy.BlackbirdBackup\" if not exist "!systemroot!\SystemApps\WindowsFeedback_cw5n1h2txyewy\" ( set "_SWITCH_KF_OFF=true" &set "__SwitchSlave_CurrentSwitchFunction=Revive Feedback/ContactSupport" )
		)
		if "%%s"=="_KL" (
			set "_SWITCH_KL_OFF=" &set "__SwitchSlave_CurrentSwitchFunction=Kill Lockscreen"
			if exist "!systemroot!\SystemApps\Microsoft.LockApp_cw5n1h2txyewy.BlackbirdBackup\" if not exist "!systemroot!\SystemApps\Microsoft.LockApp_cw5n1h2txyewy\" ( set "_SWITCH_KL_OFF=true" &set "__SwitchSlave_CurrentSwitchFunction=Revive Lockscreen" )
		)
		if "%%s"=="_KS" (
			set "_SWITCH_KS_OFF=" &set "__SwitchSlave_CurrentSwitchFunction=Kill Windows Store"
			if exist "!systemroot!\SystemApps\Microsoft.LockApp_cw5n1h2txyewy.BlackbirdBackup\" if not exist "!systemroot!\SystemApps\Microsoft.LockApp_cw5n1h2txyewy\" ( set "_SWITCH_KS_OFF=true" &set "__SwitchSlave_CurrentSwitchFunction=Revive Windows Store" )
		)
		if "%%s"=="_A" (
			set "_SWITCH_A_OFF=" &set "__SwitchSlave_CurrentSwitchFunction=Disable SmartScreen App checking"
			reg query "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer" | findstr /irc:" SmartScreenEnabled .*REG_SZ .*Off$" >nul && ( set "_SWITCH_A_OFF=true" &set "__SwitchSlave_CurrentSwitchFunction=Enable SmartScreen App checking" )
		)
		if "%%s"=="_B" (
			set "_SWITCH_B_OFF=" &set "__SwitchSlave_CurrentSwitchFunction=Disable Runtime Broker"
			reg query "HKLM\SYSTEM\CurrentControlSet\Services\TimeBrokerSvc" | findstr /irc:" Start .*REG_DWORD .*0x4$" >nul && ( set "_SWITCH_B_OFF=true" &set "__SwitchSlave_CurrentSwitchFunction=Enable Runtime Broker" )
		)
		if "%%s"=="_D" (
			set "_SWITCH_D_OFF=" &set "__SwitchSlave_CurrentSwitchFunction=Disable Windows Defender"
			reg query "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender" | findstr /irc:" DisableAntiSpyware .*REG_DWORD .*0x1$" >nul && ( set "_SWITCH_D_OFF=true" &set "__SwitchSlave_CurrentSwitchFunction=Enable Windows Defender" )
		)
		if "%%s"=="_E" (
			set "_SWITCH_E_OFF=" &set "__SwitchSlave_CurrentSwitchFunction=Disable SMB over NetBIOS"
			reg query "HKLM\SYSTEM\CurrentControlSet\Services\NetBT\Parameters" | findstr /irc:" SMBDeviceEnabled .*REG_DWORD .*0x0$" >nul && ( set "_SWITCH_E_OFF=true" &set "__SwitchSlave_CurrentSwitchFunction=Enable SMB over NetBIOS" )
		)
		if "%%s"=="_G" (
			set "_SWITCH_G_OFF=" &set "__SwitchSlave_CurrentSwitchFunction=Disable Games Explorer"
			if not exist "!systemroot!\System32\gameux.dll" if not exist "!systemroot!\SysWOW64\gameux.dll" ( set "_SWITCH_G_OFF=true" &set "__SwitchSlave_CurrentSwitchFunction=Enable Games Explorer" )
		)
		if "%%s"=="_H" (
			set "_SWITCH_H_OFF=true" &set "__SwitchSlave_CurrentSwitchFunction=Enable Hibernation"
			dir /a:h /b "!systemdrive!\" | findstr /i "hiberfil.sys" >nul && ( set "_SWITCH_H_OFF=" &set "__SwitchSlave_CurrentSwitchFunction=Disable Hibernation" )
		)
		if "%%s"=="_P" (
			set "_SWITCH_P_OFF=" &set "__SwitchSlave_CurrentSwitchFunction=Disable Diagnostic Policy Service"
			reg query "HKLM\SYSTEM\CurrentControlSet\Services\DPS" | findstr /irc:" Start .*REG_DWORD .*0x4$" >nul && ( set "_SWITCH_P_OFF=true" &set "__SwitchSlave_CurrentSwitchFunction=Enable Diagnostic Policy Service" )
		)
		if "%%s"=="_M" (
			set "_SWITCH_M_OFF=" &set "__SwitchSlave_CurrentSwitchFunction=Disable Windows MRT updates"
			reg query "HKLM\SOFTWARE\Policies\Microsoft\MRT" | findstr /irc:" DontOfferThroughWUAU .*REG_DWORD .*0x1$" >nul && ( set "_SWITCH_M_OFF=true" &set "__SwitchSlave_CurrentSwitchFunction=Enable Windows MRT updates" )
		)
		if "%%s"=="_O" (
			set "_SWITCH_O_OFF=" &set "__SwitchSlave_CurrentSwitchFunction=Disable OneDrive"
			reg query HKLM\SYSTEM\CurrentControlSet\Services | findstr /irc:".*\\services\\OneSyncSvc$" >nul && (
				reg query HKLM\SYSTEM\CurrentControlSet\Services\OneSyncSvc | findstr /irc:" Start .*REG_DWORD .*0x4$" >nul && ( set "_SWITCH_O_OFF=true" &set "__SwitchSlave_CurrentSwitchFunction=Enable OneDrive" )
		))
		if "%%s"=="_T" (
			set "_SWITCH_T_OFF=" &set "__SwitchSlave_CurrentSwitchFunction=Disable sensors"
			reg query "HKLM\SOFTWARE\Policies\Microsoft\Windows\LocationAndSensors" | findstr /irc:" DisableSensors .*REG_DWORD .*0x1$" >nul && ( set "_SWITCH_T_OFF=true" &set "__SwitchSlave_CurrentSwitchFunction=Enable sensors" )
		)
		if "%%s"=="_U" (
			set "_SWITCH_U_OFF=" &set "__SwitchSlave_CurrentSwitchFunction=Disable automatic Windows updates"
			if defined _flag-w10 (
				reg query HKLM\SYSTEM\CurrentControlSet\Services\wuauserv | findstr /irc:" Start .*REG_DWORD .*0x[3-4]$" >nul && ( set "_SWITCH_U_OFF=true" &set "__SwitchSlave_CurrentSwitchFunction=Enable automatic Windows updates" )
			) else (
				reg query "HKLM\Software\Microsoft\Windows\CurrentVersion\WindowsUpdate\Auto Update" | findstr /irc:" AUOptions .*REG_DWORD .*0x2$" >nul && ( set "_SWITCH_U_OFF=true" &set "__SwitchSlave_CurrentSwitchFunction=Enable automatic Windows updates" )
		))
		if "%%s"=="_W" (
			set "_SWITCH_W_OFF=" &set "__SwitchSlave_CurrentSwitchFunction=Disable Task View"
			reg query HKLM\SYSTEM\CurrentControlSet\Services | findstr /irc:".*\\services\\CDPUserSvc$" >nul && (
				reg query HKLM\SYSTEM\CurrentControlSet\Services\CDPUserSvc | findstr /irc:" Start .*REG_DWORD .*0x4$" >nul && ( set "_SWITCH_W_OFF=true" &set "__SwitchSlave_CurrentSwitchFunction=Enable Task View" )
		))
		if "%%s"=="_X" (
			set "_SWITCH_X_OFF=" &set "__SwitchSlave_CurrentSwitchFunction=Disable Xbox services"
			reg query HKLM\SYSTEM\CurrentControlSet\Services | findstr /irc:".*\\services\\XboxNetApiSvc$" >nul && (
				reg query HKLM\SYSTEM\CurrentControlSet\Services\XboxNetApiSvc | findstr /irc:" Start .*REG_DWORD .*0x4$" >nul && ( set "_SWITCH_X_OFF=true" &set "__SwitchSlave_CurrentSwitchFunction=Enable Xbox services" )
		))
		if "%%s"=="_ASLR" (
			set "_SWITCH_ASLR_OFF=" &set "__SwitchSlave_CurrentSwitchFunction=Enable system ASLR"
			reg query "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" | findstr /irc:" MoveImages .*REG_DWORD .*0xffffffff$" >nul && ( set "_SWITCH_ASLR_OFF=true" &set "__SwitchSlave_CurrentSwitchFunction=Disable system ASLR" )
		)
		if defined __SwitchSlave_CurrentSwitchFunction ( call :GUI 06 "!__SwitchSlave_CurrentSwitchFunction!" !__SwitchSlave_LineBreak! )
))
if defined __SwitchSlave_SLCounter (
	set /a __SwitchSlave_SLCounter=!__SwitchSlave_SLCounter!+1
	if defined __SwitchSlave_ShowJobs if "!__SwitchSlave_SLCounter!" leq 10 for /l %%y in (!__SwitchSlave_SLCounter! 1 10) do (
		call :DrawBird %%y __SwitchSlave_FillSpace
		<nul set /p =".!BS!!__SwitchSlave_FillSpace!"&echo.
))
goto:eof
:Switch_SubSlave
if !__SwitchSlave_SLCounter! leq 7 ( call :DrawBird !__SwitchSlave_SLCounter! __SwitchSlave_EmptySpace ) else if !__SwitchSlave_SLCounter! gtr 7 ( set "__SwitchSlave_EmptySpace=                            " )
<nul set /p =".!BS!!__SwitchSlave_EmptySpace!!__SwitchSlave_Marker!"
goto:eof

rem Show active network host blocks -showhost switch
:subswitch_SHOWHOST
if defined _flag-showhost (
	<nul set /p =".!BS!   - Loading block list, please wait . . ." &echo. &echo.
	set "__ShowHosts_SIZE_Debug=" &set "_Show_NetBlock_PublicCounterTOTAL=0"
	set "_Show_NetBlock_PublicCounterIPv4=0" &set "_Show_NetBlock_INTCounterIPv4=0"
	set "_ShowNetBlockIPv4_CutOffValue=0" &set "_ShowNetBlockIPv4_FixedWSpace="
	set "_Show_NetBlock_PublicCounterIPv6=0" &set "_Show_NetBlock_INTCounterIPv6=0"
	set "_ShowNetBlockIPv6_CutOffValue=0" &set "_ShowNetBlockIPv6_FixedWSpace="
	set /a "_ShowNetBlock_INTSizeDebugValue=(!_BirdSessionColumns!-28)/2"
	for /l %%x in (1 1 !_ShowNetBlock_INTSizeDebugValue!) do set "__ShowHosts_SIZE_Debug=!__ShowHosts_SIZE_Debug!_"
	set /a "_ShowNetBlockIPv4_INTFixedWSpaceValue=(!_BirdSessionColumns!%%18)/2"
	if !_ShowNetBlockIPv4_INTFixedWSpaceValue! neq 0 ( for /l %%y in (1 1 !_ShowNetBlockIPv4_INTFixedWSpaceValue!) do set "_ShowNetBlockIPv4_FixedWSpace=!_ShowNetBlockIPv4_FixedWSpace! " )
	set /a "_ShowNetBlockIPv6_INTFixedWSpaceValue=(!_BirdSessionColumns!%%39)/2"
	if !_ShowNetBlockIPv6_INTFixedWSpaceValue! neq 0 ( for /l %%z in (1 1 !_ShowNetBlockIPv6_INTFixedWSpaceValue!) do set "_ShowNetBlockIPv6_FixedWSpace=!_ShowNetBlockIPv6_FixedWSpace! " )
	set /a "_ShowNetBlockIPv4_CutOffValue=!_BirdSessionColumns!/18" &set /a "_ShowNetBlockIPv6_CutOffValue=!_BirdSessionColumns!/39"
	if exist "!BlackTemp!\bird.ncfg_sh.tmp" del /F /Q /S "!BlackTemp!\bird.ncfg_sh.tmp" >nul 2>&1
	if not exist "!BlackTemp!\bird.ncfg_sh.tmp" (route print|findstr /r "[0-9]*\.[0-9]*\.[0-9]*\.[0-9]*.*255\.255\.255\.255.*127\.0\.0\.0.*1$ 0.*1.*\:.*\:.*\:.*/128$ 0.*1.*\:.*\:.*\:.*/128.*\:\:1$"|sort>>"!BlackTemp!\bird.ncfg_sh.tmp")
	if not exist "!BlackTemp!\bird.ncfg_sh.tmp" ( set "ERROR_NOTEMP_VALUE=!BlackTemp!\bird.ncfg_sh.tmp" &goto ERROR_NOTEMP )
	findstr /rc:"^[0-9]*\.[0-9]*\.[0-9]*\.[0-9].* 255\.255\.255\.255.* 127\.0\.0\.0.* 1$" "!BlackTemp!\bird.ncfg_sh.tmp" >nul && (
		<nul set /p =".!BS! !__ShowHosts_SIZE_Debug!"&call :GUI 03 " Blocked IPv4 addresses "&<nul set /p ="!__ShowHosts_SIZE_Debug! " &echo.
		For /F "Usebackq Tokens=1" %%A In (`type "!BlackTemp!\bird.ncfg_sh.tmp" 2^>Nul ^|findstr /rc:"^[0-9]*\.[0-9]*\.[0-9]*\.[0-9].* 255\.255\.255\.255.* 127\.0\.0\.0.* 1$"`) do (
			if not "%%A"=="!_Show_NetBlockIPV4_Address!" (
				set "_Show_NetBlockIPV4_Address=%%A"
				set "_Show_NetBlockIPV4_WSpace="
				set /a "_Show_NetBlock_PublicCounterIPv4=!_Show_NetBlock_PublicCounterIPv4!+1" &set /a "_Show_NetBlock_INTCounterIPv4=!_Show_NetBlock_INTCounterIPv4!+1"
				call :StringCalc _Show_NetBlockIPV4_Address _LengthResult
				if !_LengthResult! lss 15 (
					set /a "_AdrLengthResult_DIF=15-!_LengthResult!"
					for /l %%a in (1 1 !_AdrLengthResult_DIF!) do (set "_Show_NetBlockIPV4_WSpace=!_Show_NetBlockIPV4_WSpace! ")
				)
				if !_Show_NetBlock_INTCounterIPv4! equ 1 if defined _ShowNetBlockIPv4_FixedWSpace <nul set /p =".!BS!!_ShowNetBlockIPv4_FixedWSpace!"
				if !_Show_NetBlock_INTCounterIPv4! geq 2 <nul set /p ="|"
				<nul set /p =".!BS! !_Show_NetBlockIPV4_WSpace!!_Show_NetBlockIPV4_Address! "
				if !_Show_NetBlock_INTCounterIPv4! equ !_ShowNetBlockIPv4_CutOffValue! set "_Show_NetBlock_INTCounterIPv4=0"&echo.
		))
		if !_Show_NetBlock_INTCounterIPv4! neq !_ShowNetBlockIPv4_CutOffValue! if !_Show_NetBlock_INTCounterIPv4! neq 0 <nul set /p ="|"&echo.
		echo.
	)
	findstr /rc:"^0.* 1 .*\:.*\:.*\:.*/128" "!BlackTemp!\bird.ncfg_sh.tmp" >nul && (
		<nul set /p =".!BS! !__ShowHosts_SIZE_Debug!"&call :GUI 03 " Blocked IPv6 addresses "&<nul set /p ="!__ShowHosts_SIZE_Debug! " &echo.
		For /F "Usebackq Tokens=3" %%B In (`type "!BlackTemp!\bird.ncfg_sh.tmp" 2^>Nul ^|findstr /rc:"^0.* 1 .*\:.*\:.*\:.*/128"`) do (
			if not "%%B"=="!_Show_NetBlockIPV6_Address!" (
				set "_Show_NetBlockIPV6_Address=%%B"
				set "_Show_NetBlockIPV6_WSpace="
				set "_Show_NetBlockIPV6_AddressClean=!_Show_NetBlockIPV6_Address:/128=!"
				set /a "_Show_NetBlock_PublicCounterIPv6=!_Show_NetBlock_PublicCounterIPv6!+1" &set /a "_Show_NetBlock_INTCounterIPv6=!_Show_NetBlock_INTCounterIPv6!+1"
				call :StringCalc _Show_NetBlockIPV6_AddressClean _LengthResult
				if !_LengthResult! lss 38 (
					set /a "_AdrLengthResult_DIF=38-!_LengthResult!"
					for /l %%a in (1 1 !_AdrLengthResult_DIF!) do (set "_Show_NetBlockIPV6_WSpace=!_Show_NetBlockIPV6_WSpace! ")
				)
				if !_Show_NetBlock_INTCounterIPv6! equ 1 if defined _ShowNetBlockIPv6_FixedWSpace <nul set /p =".!BS!!_ShowNetBlockIPv6_FixedWSpace!"
				if !_Show_NetBlock_INTCounterIPv6! geq 2 <nul set /p ="|"
				<nul set /p =".!BS!!_Show_NetBlockIPV6_WSpace!!_Show_NetBlockIPV6_AddressClean!"
				if !_Show_NetBlock_INTCounterIPv6! equ !_ShowNetBlockIPv6_CutOffValue! ( set "_Show_NetBlock_INTCounterIPv6=0"&echo. )
		))
		if !_Show_NetBlock_INTCounterIPv6! neq !_ShowNetBlockIPv6_CutOffValue! if !_Show_NetBlock_INTCounterIPv6! neq 0 <nul set /p ="|"&echo.
		echo.
	)
	set /A "_Show_NetBlock_PublicCounterTOTAL=!_Show_NetBlock_PublicCounterIPv4!+!_Show_NetBlock_PublicCounterIPv6!"
	if !_Show_NetBlock_PublicCounterTOTAL! equ 0 (
		<nul set /p =".!BS!   "&call :GUI !_BC_B!!_BC_D! " X "&call :GUI 0f " No active IP blocks found. " /n
	) else (
		echo. &call :GUI 0f " -- Total addresses blocked: "&call :GUI 06 "!_Show_NetBlock_PublicCounterTOTAL!"
		<nul set /p =".!BS!  [ IPv4: "&call :GUI 06 "!_Show_NetBlock_PublicCounterIPv4! " & <nul set /p =", IPv6: "&call :GUI 06 "!_Show_NetBlock_PublicCounterIPv6! " & <nul set /p ="]"&echo.
	)
	set "_flag-showhost=" &set "_BirdRuntimeFlag=" &set "_SWITCH_SHOWHOST-MSGDBG="
	if not defined _BirdRuntimeMultiFlags (set "_SWITCH_SHOWHOST-MSGDBG=true") else (set "_BirdRuntimeConfig=!_BirdRuntimeConfig:_SHOWHOST =!")
	echo. & goto SwitchFunctionTable
)
rem Enable/Disable ASLR -aslr switch
:subswitch_ASLR
if defined _flag-aslr (
	if not defined _SWITCH_ASLR_OFF (
		<nul set /p =".!BS!   - Enabling Address Space Layout Randomization . . . "
		reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "MoveImages" /t REG_DWORD /d "4294967295" /f >nul 2>&1
		reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\kernel" /v "MitigationOptions" /t REG_BINARY /d "00010100000000000000000000000000" /f >nul 2>&1
	)
	if defined _SWITCH_ASLR_OFF (
		<nul set /p =".!BS!   - Disabling Address Space Layout Randomization . . . "
		reg delete "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\kernel" /v "MitigationOptions" /f >nul 2>&1
		reg delete "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "MoveImages" /f >nul 2>&1
	)
	call :GUI !_BC_E!!_BC_F! "OK" /n
	set _flag-aslr=
	set _BirdRuntimeFlag=
	if defined _BirdRuntimeMultiFlags set "_BirdRuntimeConfig=!_BirdRuntimeConfig:_ASLR =!"
	echo. & goto SwitchFunctionTable
)
rem Enable SMBv1 -smb1 undocumented switch
:subswitch_SMB1
if defined _flag-smb1 (
	<nul set /p =".!BS!   - Enabling SMBv1 . . . "
	reg add "HKLM\SYSTEM\CurrentControlSet\Services\LanmanServer\Parameters" /v "SMB1" /t REG_DWORD /d "1" /f >nul 2>&1
	reg query "HKLM\SYSTEM\CurrentControlSet\Control\Lsa\MSV1_0" | findstr /i "RestrictReceivingNTLMTraffic">nul && (
		reg delete "HKLM\SYSTEM\CurrentControlSet\Control\Lsa\MSV1_0" /v "RestrictReceivingNTLMTraffic" /f >nul 2>&1
	)
	reg query "HKLM\SYSTEM\CurrentControlSet\Control\Lsa\MSV1_0" | findstr /i "RestrictSendingNTLMTraffic">nul && (
		reg delete "HKLM\SYSTEM\CurrentControlSet\Control\Lsa\MSV1_0" /v "RestrictSendingNTLMTraffic" /f >nul 2>&1
	)
	reg add HKLM\SYSTEM\CurrentControlSet\Services\srv /v Start /t REG_DWORD /d 3 /f >nul 2>&1
	reg add HKLM\SYSTEM\CurrentControlSet\Services\MRxSMB10 /v Start /t REG_DWORD /d 3 /f >nul 2>&1
	reg add HKLM\SYSTEM\CurrentControlSet\Services\NetBT /v Start /t REG_DWORD /d 1 /f >nul 2>&1
	call sc config srv start= demand >nul 2>&1
	call sc config MRxSMB10 start= demand >nul 2>&1
	call sc config NetBT start= delayed-auto >nul 2>&1
	call sc config lanmanworkstation depend= bowser/mrxsmb10/nsi >nul 2>&1
	call :GUI !_BC_E!!_BC_F! "OK" /n
	set _flag-smb1=
	set _BirdRuntimeFlag=
	if defined _BirdRuntimeMultiFlags set "_BirdRuntimeConfig=!_BirdRuntimeConfig:_SMB1 =!"
	echo. & goto SwitchFunctionTable
)
rem Disable Background Access Apps -c switch
:subswitch_C
if defined _flag-c (
	for /F "tokens=* usebackq delims=" %%a in (`reg query "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\BackgroundAccessApplications" ^| findstr /i "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\BackgroundAccessApplications\\"`) do (
		set _BlueDog_RegBAA_FullPath=
		set _BlueDog_RegBAA_CutPath=
		set _BlueDog_RegBAA_FullPath=%%a
		set "_BlueDog_RegBAA_CutPath=!_BlueDog_RegBAA_FullPath:HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\BackgroundAccessApplications\=!"
		if not defined _SWITCH_C_OFF (
			<nul set /p =".!BS!   - Disabling "&call :GUI 0f "!_BlueDog_RegBAA_CutPath!" /n
			reg add HKCU\Software\Microsoft\Windows\CurrentVersion\BackgroundAccessApplications\!_BlueDog_RegBAA_CutPath! /v "Disabled" /t REG_DWORD /d "1" /f >nul 2>&1
			if defined _flag-w10red reg add HKU\!UserSID!\Software\Microsoft\Windows\CurrentVersion\BackgroundAccessApplications\!_BlueDog_RegBAA_CutPath! /v "Disabled" /t REG_DWORD /d "1" /f >nul 2>&1
		)
		if defined _SWITCH_C_OFF (
			<nul set /p =".!BS!   - Enabling "&call :GUI 0f "!_BlueDog_RegBAA_CutPath!" /n
			reg add HKCU\Software\Microsoft\Windows\CurrentVersion\BackgroundAccessApplications\!_BlueDog_RegBAA_CutPath! /v "Disabled" /t REG_DWORD /d "0" /f >nul 2>&1
			if defined _flag-w10red reg add HKU\!UserSID!\Software\Microsoft\Windows\CurrentVersion\BackgroundAccessApplications\!_BlueDog_RegBAA_CutPath! /v "Disabled" /t REG_DWORD /d "0" /f >nul 2>&1
	))
	set _flag-c=
	set _BirdRuntimeFlag=
	if defined _BirdRuntimeMultiFlags set "_BirdRuntimeConfig=!_BirdRuntimeConfig:_C =!"
	echo. & goto SwitchFunctionTable
)
rem Fix LAN -l switch
:subswitch_L
if defined _flag-l (
	<nul set /p =".!BS!   - Fixing LAN/network connectivity . . . "
	reg query "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" | findstr /i "IGMPLevel">nul && (
		reg delete "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "IGMPLevel" /f >nul 2>&1
	)
	reg add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "UseDomainNameDevolution" /t REG_DWORD /d "1" /f >nul 2>&1
	reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows NT\DNSClient" /v "DisableSmartNameResolution" /t REG_DWORD /d "0" /f >nul 2>&1
	reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows NT\DNSClient" /v "EnableMulticast" /t REG_DWORD /d "1" /f >nul 2>&1
	reg add "HKLM\SYSTEM\CurrentControlSet\Services\NetBT\Parameters" /v "SMBDeviceEnabled" /t REG_DWORD /d "1" /f >nul 2>&1
	reg add "HKLM\SYSTEM\CurrentControlSet\Services\LanmanServer\Parameters" /v "AutoShareServer" /t REG_DWORD /d "1" /f >nul 2>&1
	reg add "HKLM\SYSTEM\CurrentControlSet\Services\LanmanServer\Parameters" /v "AutoShareWks" /t REG_DWORD /d "1" /f >nul 2>&1
	if defined _flag-w10 reg add "HKLM\SYSTEM\CurrentControlSet\Services\Dnscache\Parameters" /v "DisableParallelAandAAAA" /t REG_DWORD /d "0" /f >nul 2>&1
	reg query "HKLM\SYSTEM\CurrentControlSet\Control\Lsa\MSV1_0" | findstr /i "RestrictReceivingNTLMTraffic">nul && (
		reg delete "HKLM\SYSTEM\CurrentControlSet\Control\Lsa\MSV1_0" /v "RestrictReceivingNTLMTraffic" /f >nul 2>&1
	)
	reg query "HKLM\SYSTEM\CurrentControlSet\Control\Lsa\MSV1_0" | findstr /i "RestrictSendingNTLMTraffic">nul && (
		reg delete "HKLM\SYSTEM\CurrentControlSet\Control\Lsa\MSV1_0" /v "RestrictSendingNTLMTraffic" /f >nul 2>&1
	)
	reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile" /v "NetworkThrottlingIndex" /t REG_DWORD /d "10" /f >nul 2>&1
	if defined _flag-w10 ( reg add HKLM\SYSTEM\CurrentControlSet\Services\lmhosts /v Start /t REG_DWORD /d 3 /f >nul 2>&1 )
	if defined _flag-w10 ( reg add HKLM\SYSTEM\CurrentControlSet\Services\DsSvc /v Start /t REG_DWORD /d 3 /f >nul 2>&1 )
	if not defined _flag-w10 ( reg add HKLM\SYSTEM\CurrentControlSet\Services\lmhosts /v Start /t REG_DWORD /d 2 /f >nul 2>&1 )
	reg add HKLM\SYSTEM\CurrentControlSet\Services\SSDPSRV /v Start /t REG_DWORD /d 3 /f >nul 2>&1
	reg add HKLM\SYSTEM\CurrentControlSet\Services\upnphost /v Start /t REG_DWORD /d 3 /f >nul 2>&1
	reg add HKLM\SYSTEM\CurrentControlSet\Services\RemoteAccess /v Start /t REG_DWORD /d 3 /f >nul 2>&1
	reg add HKLM\SYSTEM\CurrentControlSet\Services\srv /v Start /t REG_DWORD /d 3 /f >nul 2>&1
	reg add HKLM\SYSTEM\CurrentControlSet\Services\MRxDAV /v Start /t REG_DWORD /d 3 /f >nul 2>&1
	reg add HKLM\SYSTEM\CurrentControlSet\Services\WebClient /v Start /t REG_DWORD /d 3 /f >nul 2>&1
	reg add HKLM\SYSTEM\CurrentControlSet\Services\WMPNetworkSvc /v Start /t REG_DWORD /d 3 /f >nul 2>&1
	reg add HKLM\SYSTEM\CurrentControlSet\Services\NcaSvc /v Start /t REG_DWORD /d 3 /f >nul 2>&1
	reg add HKLM\SYSTEM\CurrentControlSet\Services\tunnel /v Start /t REG_DWORD /d 3 /f >nul 2>&1
	reg add HKLM\SYSTEM\CurrentControlSet\Services\WinHttpAutoProxySvc /v Start /t REG_DWORD /d 3 /f >nul 2>&1
	reg add HKLM\SYSTEM\CurrentControlSet\Services\WdiServiceHost /v Start /t REG_DWORD /d 3 /f >nul 2>&1
	reg add HKLM\SYSTEM\CurrentControlSet\Services\WdiSystemHost /v Start /t REG_DWORD /d 3 /f >nul 2>&1
	reg add HKLM\SYSTEM\CurrentControlSet\Services\NetBT /v Start /t REG_DWORD /d 1 /f >nul 2>&1
	reg add HKLM\SYSTEM\CurrentControlSet\Services\lanmanserver /v Start /t REG_DWORD /d 2 /f >nul 2>&1
	reg add HKLM\SYSTEM\CurrentControlSet\Services\TrkWks /v Start /t REG_DWORD /d 2 /f >nul 2>&1
	reg add HKLM\SYSTEM\CurrentControlSet\Services\iphlpsvc /v Start /t REG_DWORD /d 2 /f >nul 2>&1
	reg add HKLM\SYSTEM\CurrentControlSet\Services\DPS /v Start /t REG_DWORD /d 2 /f >nul 2>&1
	rem reg add HKLM\SYSTEM\CurrentControlSet\Services\fdPHost /v Start /t REG_DWORD /d 3 /f >nul 2>&1
	rem reg add HKLM\SYSTEM\CurrentControlSet\Services\FDResPub /v Start /t REG_DWORD /d 3 /f >nul 2>&1
	call sc config NetBT start= delayed-auto >nul 2>&1
	if defined _flag-w10 ( call sc config lmhosts start= demand >nul 2>&1 )
	if defined _flag-w10 ( call sc config DsSvc start= demand >nul 2>&1 )
	if not defined _flag-w10 ( call sc config lmhosts start= auto >nul 2>&1 )
	call sc config SSDPSRV start= demand >nul 2>&1
	call sc config upnphost start= demand >nul 2>&1
	call sc config RemoteAccess start= demand >nul 2>&1
	call sc config srv start= demand >nul 2>&1
	call sc config tunnel start= demand >nul 2>&1
	call sc config WinHttpAutoProxySvc start= demand >nul 2>&1
	call sc config MRxDAV start= demand >nul 2>&1
	call sc config WebClient start= demand >nul 2>&1
	call sc config WMPNetworkSvc start= demand >nul 2>&1
	call sc config NcaSvc start= demand >nul 2>&1
	call sc config lanmanserver start= auto >nul 2>&1
	call sc config iphlpsvc start= auto >nul 2>&1
	call sc config TrkWks start= auto >nul 2>&1
	call sc config WdiSystemHost start= demand >nul 2>&1
	call sc config WdiServiceHost start= demand >nul 2>&1
	call sc config DPS start= auto >nul 2>&1
	rem call sc config fdPHost start= demand >nul 2>&1
	rem call sc config FDResPub start= demand >nul 2>&1
	schtasks /Change /TN "Microsoft\Windows\UPnP\UPnPHostConfig" /Enable >nul 2>&1
	netsh int tcp set global autotuninglevel=normal >nul 2>&1
	netsh int tcp set global congestionprovider=default >nul 2>&1
	netsh int tcp set global rss=disabled >nul 2>&1
	netsh int tcp set global chimney=disabled >nul 2>&1
	netsh int tcp set global ecncapability=disabled >nul 2>&1
	netsh interface teredo set state type=default >nul 2>&1
	netsh winhttp reset proxy >nul 2>&1
	call :GUI !_BC_E!!_BC_F! "OK"
	set _flag-l=
	set _BirdRuntimeFlag=
	if defined _BirdRuntimeMultiFlags set "_BirdRuntimeConfig=!_BirdRuntimeConfig:_L =!"
	echo. & goto SwitchFunctionTable
)
rem Fix Bluetooth pairing, Device settings, notifications, Focus-Assist
:subswitch_I
if defined _flag-i (
	if defined _flag-w10 (<nul set /p =".!BS!   - Fixing Device Settings / Bluetooth / notifications . . . ")
	if not defined _flag-w10 (<nul set /p =".!BS!   - Fixing Bluetooth pairing . . . ")
	reg add HKLM\SYSTEM\CurrentControlSet\Services\UPNPHOST /v Start /t REG_DWORD /d 3 /f >nul 2>&1
	reg add HKLM\SYSTEM\CurrentControlSet\Services\SSDPSRV /v Start /t REG_DWORD /d 3 /f >nul 2>&1
	if defined _flag-w8 (
		reg add HKLM\SYSTEM\CurrentControlSet\Services\DeviceAssociationService /v Start /t REG_DWORD /d 3 /f >nul 2>&1
		call sc config DeviceAssociationService start= demand >nul 2>&1
	)
	if defined _flag-w10 (
		schtasks /Change /TN "\Microsoft\Windows\Shell\CreateObjectTask" /Enable >nul 2>&1
		reg add HKLM\SYSTEM\CurrentControlSet\Services\DeviceAssociationService /v Start /t REG_DWORD /d 3 /f >nul 2>&1
		call sc config DeviceAssociationService start= demand >nul 2>&1
		REM ----
		reg query HKLM\SYSTEM\CurrentControlSet\Services | findstr /irc:".*\\BluetoothUserService$" >nul && (
			reg add HKLM\SYSTEM\CurrentControlSet\Services\BluetoothUserService /v Start /t REG_DWORD /d 3 /f >nul 2>&1
			call sc config BluetoothUserService start= demand >nul 2>&1
			call :GetDSN "BluetoothUserService" _GDNFullName_BluetoothUserService
			reg add HKLM\SYSTEM\CurrentControlSet\Services\!_GDNFullName_BluetoothUserService! /v Start /t REG_DWORD /d 3 /f >nul 2>&1
			call sc config !_GDNFullName_BluetoothUserService! start= demand >nul 2>&1
		)
		reg query HKLM\SYSTEM\CurrentControlSet\Services | findstr /irc:".*\\WpnUserService$" >nul && (
			reg add HKLM\SYSTEM\CurrentControlSet\Services\WpnUserService /v Start /t REG_DWORD /d 2 /f >nul 2>&1
			call sc config WpnUserService start= auto >nul 2>&1
			call :GetDSN "WpnUserService" _GDNFullName_WpnUserService
			reg add HKLM\SYSTEM\CurrentControlSet\Services\!_GDNFullName_WpnUserService! /v Start /t REG_DWORD /d 2 /f >nul 2>&1
			call sc config !_GDNFullName_WpnUserService! start= auto >nul 2>&1
		)
		reg query HKLM\SYSTEM\CurrentControlSet\Services | findstr /irc:".*\\DevicesFlowUserSvc$" >nul && (
			reg add HKLM\SYSTEM\CurrentControlSet\Services\DevicesFlowUserSvc /v Start /t REG_DWORD /d 3 /f >nul 2>&1
			call sc config DevicesFlowUserSvc start= demand >nul 2>&1
			call :GetDSN "DevicesFlowUserSvc" _GDNFullName_DevicesFlowUserSvc
			reg add HKLM\SYSTEM\CurrentControlSet\Services\!_GDNFullName_DevicesFlowUserSvc! /v Start /t REG_DWORD /d 3 /f >nul 2>&1
			call sc config !_GDNFullName_DevicesFlowUserSvc! start= demand >nul 2>&1
		)
		reg query HKLM\SYSTEM\CurrentControlSet\Services | findstr /irc:".*\\DevicePickerUserSvc$" >nul && (
			reg add HKLM\SYSTEM\CurrentControlSet\Services\DevicePickerUserSvc /v Start /t REG_DWORD /d 3 /f >nul 2>&1
			call sc config DevicePickerUserSvc start= demand >nul 2>&1
			call :GetDSN "DevicePickerUserSvc" _GDNFullName_DevicePickerUserSvc
			reg add HKLM\SYSTEM\CurrentControlSet\Services\!_GDNFullName_DevicePickerUserSvc! /v Start /t REG_DWORD /d 3 /f >nul 2>&1
			call sc config !_GDNFullName_DevicePickerUserSvc! start= demand >nul 2>&1
		)
		REM ----
		if defined _flag-w10red (
			reg add HKLM\SYSTEM\CurrentControlSet\Services\WpnUserService /v Start /t REG_DWORD /d 2 /f >nul 2>&1
			call sc config WpnUserService start= auto >nul 2>&1
			call :GetDSN "WpnUserService" _GDNFullName_WpnUserService
			reg add HKLM\SYSTEM\CurrentControlSet\Services\!_GDNFullName_WpnUserService! /v Start /t REG_DWORD /d 2 /f >nul 2>&1
			call sc config !_GDNFullName_WpnUserService! start= auto >nul 2>&1
			call :GetDSN "BluetoothUserService" _GDNFullName_BluetoothUserService
			reg add HKLM\SYSTEM\CurrentControlSet\Services\!_GDNFullName_BluetoothUserService! /v Start /t REG_DWORD /d 3 /f >nul 2>&1
			call sc config !_GDNFullName_BluetoothUserService! start= demand >nul 2>&1
			if defined _flag-w10red2 (
				reg add HKLM\SYSTEM\CurrentControlSet\Services\DevicesFlowUserSvc /v Start /t REG_DWORD /d 3 /f >nul 2>&1
				call sc config DevicesFlowUserSvc start= demand >nul 2>&1
				call :GetDSN "DevicesFlowUserSvc" _GDNFullName_DevicesFlowUserSvc
				reg add HKLM\SYSTEM\CurrentControlSet\Services\!_GDNFullName_DevicesFlowUserSvc! /v Start /t REG_DWORD /d 3 /f >nul 2>&1
				call sc config !_GDNFullName_DevicesFlowUserSvc! start= demand >nul 2>&1
			)
			if defined _flag-w10red4 (
				reg add HKLM\SYSTEM\CurrentControlSet\Services\BluetoothUserService /v Start /t REG_DWORD /d 3 /f >nul 2>&1
				call sc config BluetoothUserService start= demand >nul 2>&1
				reg add HKLM\SYSTEM\CurrentControlSet\Services\DevicePickerUserSvc /v Start /t REG_DWORD /d 3 /f >nul 2>&1
				call sc config DevicePickerUserSvc start= demand >nul 2>&1
				call :GetDSN "DevicePickerUserSvc" _GDNFullName_DevicePickerUserSvc
				reg add HKLM\SYSTEM\CurrentControlSet\Services\!_GDNFullName_DevicePickerUserSvc! /v Start /t REG_DWORD /d 3 /f >nul 2>&1
				call sc config !_GDNFullName_DevicePickerUserSvc! start= demand >nul 2>&1
			)
			if defined _flag-w10red6 (
				reg add HKLM\SYSTEM\CurrentControlSet\Services\DeviceAssociationBrokerSvc /v Start /t REG_DWORD /d 3 /f >nul 2>&1
				call sc config DeviceAssociationBrokerSvc start= demand >nul 2>&1
				call :GetDSN "DeviceAssociationBrokerSvc" _GDNFullName_DeviceAssociationBrokerSvc
				reg add HKLM\SYSTEM\CurrentControlSet\Services\!_GDNFullName_DeviceAssociationBrokerSvc! /v Start /t REG_DWORD /d 3 /f >nul 2>&1
				call sc config !_GDNFullName_DeviceAssociationBrokerSvc! start= demand >nul 2>&1
	)))
	reg add HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\BluetoothSession /v Start /t REG_DWORD /d 1 /f >nul 2>&1
	schtasks /Change /TN "Microsoft\Windows\UPnP\UPnPHostConfig" /Enable >nul 2>&1
	call sc config SSDPSRV start= demand >nul 2>&1
	call sc config UPNPHOST start= demand >nul 2>&1
	call :GUI !_BC_E!!_BC_F! "OK" /n
	set _flag-i=
	set _BirdRuntimeFlag=
	if defined _BirdRuntimeMultiFlags set "_BirdRuntimeConfig=!_BirdRuntimeConfig:_I =!"
	echo. & goto SwitchFunctionTable
)
rem Disable NetBT/SMB -e switch
:subswitch_E
if defined _flag-e (
	if not defined _SWITCH_E_OFF (
		<nul set /p =".!BS!   - Disabling SMB over NetBIOS / Shares . . . "
		call sc config lanmanserver start= disabled >nul 2>&1
		reg add HKLM\SYSTEM\CurrentControlSet\Services\lanmanserver /v Start /t REG_DWORD /d 4 /f >nul 2>&1
		reg add "HKLM\SYSTEM\CurrentControlSet\Services\NetBT\Parameters" /v "SMBDeviceEnabled" /t REG_DWORD /d "0" /f >nul 2>&1
		reg add "HKLM\SYSTEM\CurrentControlSet\Services\LanmanServer\Parameters" /v "AutoShareServer" /t REG_DWORD /d "0" /f >nul 2>&1
		reg add "HKLM\SYSTEM\CurrentControlSet\Services\LanmanServer\Parameters" /v "AutoShareWks" /t REG_DWORD /d "0" /f >nul 2>&1
	)
	if defined _SWITCH_E_OFF (
		<nul set /p =".!BS!   - Enabling SMB over NetBIOS / Shares . . . "
		reg add "HKLM\SYSTEM\CurrentControlSet\Services\NetBT\Parameters" /v "SMBDeviceEnabled" /t REG_DWORD /d "1" /f >nul 2>&1
		reg add "HKLM\SYSTEM\CurrentControlSet\Services\LanmanServer\Parameters" /v "AutoShareServer" /t REG_DWORD /d "1" /f >nul 2>&1
		reg add "HKLM\SYSTEM\CurrentControlSet\Services\LanmanServer\Parameters" /v "AutoShareWks" /t REG_DWORD /d "1" /f >nul 2>&1
		reg add HKLM\SYSTEM\CurrentControlSet\Services\lanmanserver /v Start /t REG_DWORD /d 2 /f >nul 2>&1
		call sc config lanmanserver start= auto >nul 2>&1
	)
	call :GUI !_BC_E!!_BC_F! "OK" /n
	set _flag-e=
	set _BirdRuntimeFlag=
	if defined _BirdRuntimeMultiFlags set "_BirdRuntimeConfig=!_BirdRuntimeConfig:_E =!"
	echo. & goto SwitchFunctionTable
)
rem Disable/enable GameExplorer -g switch
:subswitch_G
if defined _flag-g (
	if not defined _SWITCH_G_OFF (
		<nul set /p =".!BS!   - Disabling Games Explorer . . . "
		if exist "!systemroot!\System32\gameux.dll.bak" ( del /F /Q /S "!systemroot!\System32\gameux.dll.bak" >nul 2>&1 )
		if exist "!systemroot!\System32\GameUXLegacyGDFs.dll.bak" ( del /F /Q /S "!systemroot!\System32\GameUXLegacyGDFs.dll.bak" >nul 2>&1 )
		if exist "!systemroot!\SysWOW64\gameux.dll.bak" ( del /F /Q /S "!systemroot!\SysWOW64\gameux.dll.bak" >nul 2>&1 )
		if exist "!systemroot!\SysWOW64\GameUXLegacyGDFs.dll.bak" ( del /F /Q /S "!systemroot!\SysWOW64\GameUXLegacyGDFs.dll.bak" >nul 2>&1 )
		if exist "!systemroot!\System32\gameux.dll" (
			takeown /f "!systemroot!\System32\gameux.dll" >nul 2>&1
			icacls "!systemroot!\System32\gameux.dll" /grant:r *S-1-5-32-544:f /C /Q >nul 2>&1
			ren "!systemroot!\System32\gameux.dll" "gameux.dll.bak" >nul 2>&1
			if exist "!systemroot!\System32\GameUXLegacyGDFs.dll" (
				takeown /f "!systemroot!\System32\GameUXLegacyGDFs.dll" >nul 2>&1
				icacls "!systemroot!\System32\GameUXLegacyGDFs.dll" /grant:r *S-1-5-32-544:f /C /Q >nul 2>&1
				ren "!systemroot!\System32\GameUXLegacyGDFs.dll" "GameUXLegacyGDFs.dll.bak" >nul 2>&1
		))
		if exist "!systemroot!\SysWOW64\gameux.dll" (
			takeown /f "!systemroot!\SysWOW64\gameux.dll" >nul 2>&1
			icacls "!systemroot!\SysWOW64\gameux.dll" /grant:r *S-1-5-32-544:f /C /Q >nul 2>&1
			ren "!systemroot!\SysWOW64\gameux.dll" "gameux.dll.bak" >nul 2>&1
			if exist "!systemroot!\SysWOW64\GameUXLegacyGDFs.dll" (
				takeown /f "!systemroot!\SysWOW64\GameUXLegacyGDFs.dll" >nul 2>&1
				icacls "!systemroot!\SysWOW64\GameUXLegacyGDFs.dll" /grant:r *S-1-5-32-544:f /C /Q >nul 2>&1
				ren "!systemroot!\SysWOW64\GameUXLegacyGDFs.dll" "GameUXLegacyGDFs.dll.bak" >nul 2>&1
	)))
	if defined _SWITCH_G_OFF (
		<nul set /p =".!BS!   - Enabling Games Explorer . . . "
		if exist "!systemroot!\System32\gameux.dll.bak" ( ren "!systemroot!\System32\gameux.dll.bak" "gameux.dll" >nul 2>&1 )
		if exist "!systemroot!\System32\GameUXLegacyGDFs.dll.bak" ( ren "!systemroot!\System32\GameUXLegacyGDFs.dll.bak" "GameUXLegacyGDFs.dll" >nul 2>&1 )
		if exist "!systemroot!\SysWOW64\gameux.dll.bak" ( ren "!systemroot!\SysWOW64\gameux.dll.bak" "gameux.dll" >nul 2>&1 )
		if exist "!systemroot!\SysWOW64\GameUXLegacyGDFs.dll.bak" ( ren "!systemroot!\SysWOW64\GameUXLegacyGDFs.dll.bak" "GameUXLegacyGDFs.dll" >nul 2>&1 )
	)
	if not defined _SWITCH_G_OFF ( if exist "!systemroot!\System32\gameux.dll" (call :GUI !_BC_B!!_BC_D! " Failed " /n) else if not exist "!systemroot!\System32\gameux.dll" (call :GUI !_BC_E!!_BC_F! "OK" /n) )
	if defined _SWITCH_G_OFF ( if not exist "!systemroot!\System32\gameux.dll" (call :GUI !_BC_B!!_BC_D! " Failed " /n) else if exist "!systemroot!\System32\gameux.dll" (call :GUI !_BC_E!!_BC_F! "OK" /n) )
	set _flag-g=
	set _BirdRuntimeFlag=
	if defined _BirdRuntimeMultiFlags set "_BirdRuntimeConfig=!_BirdRuntimeConfig:_G =!"
	echo. & goto SwitchFunctionTable
)
rem Disable Runtime Broker -b switch
:subswitch_B
if defined _flag-b (
	if not defined _SWITCH_B_OFF (
		<nul set /p =".!BS!   - Disabling Runtime Broker . . . "
		call sc config TimeBrokerSvc start= disabled >nul 2>&1
		reg add "HKLM\SYSTEM\CurrentControlSet\Services\TimeBrokerSvc" /v "Start" /t REG_DWORD /d "4" /f >nul 2>&1
	)
	if defined _SWITCH_B_OFF (
		<nul set /p =".!BS!   - Enabling Runtime Broker . . . "
		reg add "HKLM\SYSTEM\CurrentControlSet\Services\TimeBrokerSvc" /v "Start" /t REG_DWORD /d "3" /f >nul 2>&1
		call sc config TimeBrokerSvc start= demand >nul 2>&1
	)
	call :GUI !_BC_E!!_BC_F! "OK" /n
	set _flag-b=
	set _BirdRuntimeFlag=
	if defined _BirdRuntimeMultiFlags set "_BirdRuntimeConfig=!_BirdRuntimeConfig:_B =!"
	echo. & goto SwitchFunctionTable
)
rem Enable OneDrive -o switch
:subswitch_O
if defined _flag-o (
	if defined _SWITCH_O_OFF (
		<nul set /p =".!BS!   - Disabling OneDrive . . . "
		call sc config OneSyncSvc start= disabled >nul 2>&1
		reg add HKLM\SYSTEM\CurrentControlSet\Services\OneSyncSvc /v Start /t REG_DWORD /d 4 /f >nul 2>&1
		reg add "HKEY_CLASSES_ROOT\CLSID\{018D5C66-4533-4307-9B53-224DE2ED1FE6}" /v "System.IsPinnedToNameSpaceTree" /t REG_DWORD /d "0" /f >nul 2>&1
		if defined os64bit ( 
			reg add "HKEY_CLASSES_ROOT\Wow6432Node\CLSID\{018D5C66-4533-4307-9B53-224DE2ED1FE6}" /v "System.IsPinnedToNameSpaceTree" /t REG_DWORD /d "0" /f >nul 2>&1
			reg add HKU\!UserSID!_Classes\WOW6432Node\CLSID\{018D5C66-4533-4307-9B53-224DE2ED1FE6} /v "System.IsPinnedToNameSpaceTree" /t REG_DWORD /d "0" /f >nul 2>&1
			reg add HKCU\SOFTWARE\Classes\WOW6432Node\CLSID\{018D5C66-4533-4307-9B53-224DE2ED1FE6} /v "System.IsPinnedToNameSpaceTree" /t REG_DWORD /d "0" /f >nul 2>&1
		)
		reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\OneDrive" /v "DisableFileSyncNGSC" /t REG_DWORD /d "1" /f >nul 2>&1
		reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\OneDrive" /v "DisableFileSync" /t REG_DWORD /d "1" /f >nul 2>&1
		reg delete "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Run" /v "OneDrive" /f >nul 2>&1
		reg delete HKU\%UserSID%\SOFTWARE\Microsoft\Windows\CurrentVersion\Run /v "OneDrive" /f >nul 2>&1
	)
	if not defined _SWITCH_O_OFF (
		set "_Switch_OneDrive_RunPathQuoted=^"!localappdata!\Microsoft\OneDrive\OneDrive.exe /background^""
		<nul set /p =".!BS!   - Enabling OneDrive . . . "
		reg add "HKEY_CLASSES_ROOT\CLSID\{018D5C66-4533-4307-9B53-224DE2ED1FE6}" /v "System.IsPinnedToNameSpaceTree" /t REG_DWORD /d "1" /f >nul 2>&1
		reg add HKCU\SOFTWARE\Classes\WOW6432Node\CLSID\{018D5C66-4533-4307-9B53-224DE2ED1FE6} /v "System.IsPinnedToNameSpaceTree" /t REG_DWORD /d "1" /f >nul 2>&1
		if defined os64bit (
			reg add "HKEY_CLASSES_ROOT\Wow6432Node\CLSID\{018D5C66-4533-4307-9B53-224DE2ED1FE6}" /v "System.IsPinnedToNameSpaceTree" /t REG_DWORD /d "1" /f >nul 2>&1
			reg add HKU\!UserSID!_Classes\WOW6432Node\CLSID\{018D5C66-4533-4307-9B53-224DE2ED1FE6} /v "System.IsPinnedToNameSpaceTree" /t REG_DWORD /d "1" /f >nul 2>&1
			reg add HKCU\SOFTWARE\Classes\WOW6432Node\CLSID\{018D5C66-4533-4307-9B53-224DE2ED1FE6} /v "System.IsPinnedToNameSpaceTree" /t REG_DWORD /d "1" /f >nul 2>&1
		)
		reg delete "HKLM\SOFTWARE\Policies\Microsoft\Windows\OneDrive" /v "DisableFileSyncNGSC" /f >nul 2>&1
		reg delete "HKLM\SOFTWARE\Policies\Microsoft\Windows\OneDrive" /v "DisableFileSync" /f >nul 2>&1
		reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Run" /v "OneDrive" /t REG_SZ /d !_Switch_OneDrive_RunPathQuoted! /f >nul 2>&1
		reg add HKU\!UserSID!\SOFTWARE\Microsoft\Windows\CurrentVersion\Run /v "OneDrive" /t REG_SZ /d !_Switch_OneDrive_RunPathQuoted! /f >nul 2>&1
		reg add HKLM\SYSTEM\CurrentControlSet\Services\OneSyncSvc /v Start /t REG_DWORD /d 2 /f >nul 2>&1
		call sc config OneSyncSvc start= auto >nul 2>&1
	)
	call :GUI !_BC_E!!_BC_F! "OK" /n
	set _flag-o=
	set _BirdRuntimeFlag=
	if defined _BirdRuntimeMultiFlags set "_BirdRuntimeConfig=!_BirdRuntimeConfig:_O =!"
	echo. & goto SwitchFunctionTable
)
rem Remove Network Blocks -n switch
:subswitch_N
if defined _flag-n (
	<nul set /p =".!BS!   - Removing Blackbird host blocks . . . "
	route -f >nul 2>&1
	ipconfig /release >nul 2>&1
	ipconfig /renew >nul 2>&1
	ipconfig /flushdns >nul 2>&1
	call :GUI !_BC_E!!_BC_F! "OK" /n
	set _flag-n=
	set _BirdRuntimeFlag=
	if defined _BirdRuntimeMultiFlags set "_BirdRuntimeConfig=!_BirdRuntimeConfig:_N =!"
	echo. & goto SwitchFunctionTable
)
rem Enable Sensors -t switch
:subswitch_T
if defined _flag-t (
	if not defined _SWITCH_T_OFF (
		<nul set /p =".!BS!   - Disabling sensors . . . "
		reg add HKLM\SYSTEM\CurrentControlSet\Services\TabletInputService /v Start /t REG_DWORD /d 4 /f >nul 2>&1
		reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\LocationAndSensors" /v "DisableSensors" /t REG_DWORD /d "1" /f >nul 2>&1
		call sc config TabletInputService start= disabled >nul 2>&1
	)
	if defined _SWITCH_T_OFF (
		<nul set /p =".!BS!   - Enabling sensors . . . "
		reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\LocationAndSensors" /v "DisableSensors" /t REG_DWORD /d "0" /f >nul 2>&1
		reg add HKLM\SYSTEM\CurrentControlSet\Services\TabletInputService /v Start /t REG_DWORD /d 3 /f >nul 2>&1
		call sc config TabletInputService start= demand >nul 2>&1
	)
	call :GUI !_BC_E!!_BC_F! "OK" /n
	set _flag-t=
	set _BirdRuntimeFlag=
	if defined _BirdRuntimeMultiFlags set "_BirdRuntimeConfig=!_BirdRuntimeConfig:_T =!"
	echo. & goto SwitchFunctionTable
)
rem Disable SmartScreen Application checking -a switch
:subswitch_A
if defined _flag-a (
	if not defined _SWITCH_A_OFF (
		<nul set /p =".!BS!   - Disabling SmartScreen App checking . . . "
		reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer" /v SmartScreenEnabled /t REG_SZ /d "Off" /f >nul 2>&1
	)
	if defined _SWITCH_A_OFF (
		<nul set /p =".!BS!   - Enabling SmartScreen App checking . . . "
		reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer" /v SmartScreenEnabled /t REG_SZ /d "On" /f >nul 2>&1
	)
	call :GUI !_BC_E!!_BC_F! "OK" /n
	set _flag-a=
	set _BirdRuntimeFlag=
	if defined _BirdRuntimeMultiFlags set "_BirdRuntimeConfig=!_BirdRuntimeConfig:_A =!"
	echo. & goto SwitchFunctionTable
)
rem Disable WinAutoUpdate -u switch
:subswitch_U
if defined _flag-u (
	if not defined _SWITCH_U_OFF (
		<nul set /p =".!BS!   - Disabling automatic installation of Windows updates . . . "
		if not defined _flag-w10 (
			echo      Setting to MANUAL download only.
			reg add "HKLM\Software\Policies\Microsoft\Windows\WindowsUpdate\AU" /v "AUOptions" /t REG_DWORD /d "2" /f >nul 2>&1
			reg add "HKLM\Software\Policies\Microsoft\Windows\WindowsUpdate\AU" /v "NoAutoUpdate" /t REG_DWORD /d "1" /f >nul 2>&1
			reg add "HKLM\Software\Microsoft\Windows\CurrentVersion\WindowsUpdate\Auto Update" /v "AUOptions" /t REG_DWORD /d "2" /f >nul 2>&1
			reg delete "HKLM\Software\Microsoft\Windows\CurrentVersion\WindowsUpdate\Auto Update" /v "ScheduledInstallDay" /f >nul 2>&1
			reg delete "HKLM\Software\Microsoft\Windows\CurrentVersion\WindowsUpdate\Auto Update" /v "ScheduledInstallTime" /f >nul 2>&1
		)
		if defined _flag-w10 (
			schtasks /End /TN "\Microsoft\Windows\WindowsUpdate\Scheduled Start" >nul 2>&1
			schtasks /Change /TN "\Microsoft\Windows\WindowsUpdate\Scheduled Start" /Disable >nul 2>&1
			schtasks /End /TN "\Microsoft\Windows\WindowsUpdate\sihpostreboot" >nul 2>&1
			schtasks /Change /TN "\Microsoft\Windows\WindowsUpdate\sihpostreboot" /Disable >nul 2>&1
			call sc config UsoSvc start= disabled >nul 2>&1
			call sc config wuauserv start= disabled >nul 2>&1
			call sc config bits start= disabled >nul 2>&1
			call sc config dosvc start= disabled >nul 2>&1
			call sc config WaaSMedicSvc start= disabled >nul 2>&1
			reg add HKLM\SYSTEM\CurrentControlSet\Services\UsoSvc /v Start /t REG_DWORD /d 4 /f >nul 2>&1
			reg add HKLM\SYSTEM\CurrentControlSet\Services\wuauserv /v Start /t REG_DWORD /d 4 /f >nul 2>&1
			reg add HKLM\SYSTEM\CurrentControlSet\Services\bits /v Start /t REG_DWORD /d 4 /f >nul 2>&1
			reg add HKLM\SYSTEM\CurrentControlSet\Services\dosvc /v Start /t REG_DWORD /d 4 /f >nul 2>&1
			reg add HKLM\SYSTEM\CurrentControlSet\Services\WaaSMedicSvc /v Start /t REG_DWORD /d 4 /f >nul 2>&1
			reg add "HKLM\Software\Microsoft\WindowsUpdate\UX" /v "IsConvergedUpdateStackEnabled" /t REG_DWORD /d "0" /f >nul 2>&1
			reg add "HKLM\Software\Microsoft\WindowsUpdate\UX\Settings" /v "UxOption" /t REG_DWORD /d "0" /f >nul 2>&1
			reg add "HKLM\Software\Policies\Microsoft\Windows\WindowsUpdate\AU" /v "AUOptions" /t REG_DWORD /d "2" /f >nul 2>&1
			reg add "HKLM\Software\Policies\Microsoft\Windows\WindowsUpdate\AU" /v "NoAutoUpdate" /t REG_DWORD /d "1" /f >nul 2>&1
	))
	if defined _SWITCH_U_OFF (
		<nul set /p =".!BS!   - Enabling automatic installation of Windows updates . . . "
		if not defined _flag-w10 (
			reg add "HKLM\Software\Microsoft\Windows\CurrentVersion\WindowsUpdate\Auto Update" /v "AUOptions" /t REG_DWORD /d "3" /f >nul 2>&1
			reg add "HKLM\Software\Policies\Microsoft\Windows\WindowsUpdate\AU" /v "AUOptions" /t REG_DWORD /d "3" /f >nul 2>&1
			reg add "HKLM\Software\Policies\Microsoft\Windows\WindowsUpdate\AU" /v "NoAutoUpdate" /t REG_DWORD /d "0" /f >nul 2>&1
		)
		if defined _flag-w10 (
			schtasks /Change /TN "\Microsoft\Windows\WindowsUpdate\Scheduled Start" /Enable >nul 2>&1
			schtasks /Change /TN "\Microsoft\Windows\WindowsUpdate\sihpostreboot" /Enable >nul 2>&1
			reg add HKLM\SYSTEM\CurrentControlSet\Services\UsoSvc /v Start /t REG_DWORD /d 3 /f >nul 2>&1
			reg add HKLM\SYSTEM\CurrentControlSet\Services\wuauserv /v Start /t REG_DWORD /d 3 /f >nul 2>&1
			reg add HKLM\SYSTEM\CurrentControlSet\Services\bits /v Start /t REG_DWORD /d 2 /f >nul 2>&1
			reg add HKLM\SYSTEM\CurrentControlSet\Services\dosvc /v Start /t REG_DWORD /d 2 /f >nul 2>&1
			reg add HKLM\SYSTEM\CurrentControlSet\Services\WaaSMedicSvc /v Start /t REG_DWORD /d 3 /f >nul 2>&1
			reg add "HKLM\Software\Microsoft\WindowsUpdate\UX" /v "IsConvergedUpdateStackEnabled" /t REG_DWORD /d "1" /f >nul 2>&1
			reg add "HKLM\Software\Microsoft\WindowsUpdate\UX\Settings" /v "UxOption" /t REG_DWORD /d "1" /f >nul 2>&1
			reg add "HKLM\Software\Policies\Microsoft\Windows\WindowsUpdate\AU" /v "AUOptions" /t REG_DWORD /d "3" /f >nul 2>&1
			reg add "HKLM\Software\Policies\Microsoft\Windows\WindowsUpdate\AU" /v "NoAutoUpdate" /t REG_DWORD /d "0" /f >nul 2>&1
			call sc config UsoSvc start= demand >nul 2>&1
			call sc config wuauserv start= demand >nul 2>&1
			call sc config bits start= auto >nul 2>&1
			call sc config dosvc start= auto >nul 2>&1
			call sc config WaaSMedicSvc start= demand >nul 2>&1
	))
	call :GUI !_BC_E!!_BC_F! "OK" /n
	set _flag-u=
	set _BirdRuntimeFlag=
	if defined _BirdRuntimeMultiFlags set "_BirdRuntimeConfig=!_BirdRuntimeConfig:_U =!"
	echo. & goto SwitchFunctionTable
)
rem Disable/enable AppPrivacy -j switch
:subswitch_J
if defined _flag-j (
	set "_Switch_AppPrivacy_KeySet=LetAppsAccessLocation LetAppsAccessCamera LetAppsAccessMicrophone LetAppsAccessNotifications LetAppsAccessAccountInfo LetAppsAccessContacts LetAppsAccessCalendar LetAppsAccessCallHistory LetAppsAccessEmail LetAppsAccessMessaging LetAppsAccessPhone LetAppsAccessRadios LetAppsSyncWithDevices LetAppsAccessTrustedDevices LetAppsRunInBackground LetAppsAccessMotion LetAppsAccessTasks LetAppsGetDiagnosticInfo LetAppsActivateWithVoice LetAppsActivateWithVoiceAboveLock"
	if not defined _SWITCH_J_OFF (
		<nul set /p =".!BS!   - Disabling application access to devices . . . "
		for %%a in (!_Switch_AppPrivacy_KeySet!) do (
			set "_Switch_AppPrivacy_LIVE=%%a"
			reg add HKLM\Software\Policies\Microsoft\Windows\AppPrivacy /v !_Switch_AppPrivacy_LIVE! /t REG_DWORD /d 2 /f >nul 2>&1
	))
	if defined _SWITCH_J_OFF ( 
		<nul set /p =".!BS!   - Enabling application access to devices . . . "
		for %%a in (!_Switch_AppPrivacy_KeySet!) do (
			set "_Switch_AppPrivacy_LIVE=%%a"
			reg delete HKLM\Software\Policies\Microsoft\Windows\AppPrivacy /v !_Switch_AppPrivacy_LIVE! /f >nul 2>&1
	))
	call :GUI !_BC_E!!_BC_F! "OK" /n
	set _flag-j=
	set _BirdRuntimeFlag=
	if defined _BirdRuntimeMultiFlags set "_BirdRuntimeConfig=!_BirdRuntimeConfig:_J =!"
	echo. & goto SwitchFunctionTable
)
rem Disable/enable Task View -w switch
:subswitch_W
if defined _flag-w (
	if not defined _SWITCH_W_OFF (
		<nul set /p =".!BS!   - Disabling Task View / virtual desktops . . . "
		call :GetDSN "CDPUserSvc" _GDNFullName
		call sc config !_GDNFullName! start= disabled >nul 2>&1
		call sc config CDPUserSvc start= disabled >nul 2>&1
		call sc config CDPSvc start= disabled >nul 2>&1
		reg add HKLM\SYSTEM\CurrentControlSet\Services\CDPSvc /v Start /t REG_DWORD /d 4 /f >nul 2>&1
		reg add HKLM\SYSTEM\CurrentControlSet\Services\CDPUserSvc /v Start /t REG_DWORD /d 4 /f >nul 2>&1
		reg add HKLM\SYSTEM\CurrentControlSet\Services\!_GDNFullName! /v Start /t REG_DWORD /d 4 /f >nul 2>&1
	)
	if defined _SWITCH_W_OFF (
		<nul set /p =".!BS!   - Enabling Task View / virtual desktops . . . "
		call :GetDSN "CDPUserSvc" _GDNFullName
		reg add HKLM\SYSTEM\CurrentControlSet\Services\CDPSvc /v Start /t REG_DWORD /d 2 /f >nul 2>&1
		reg add HKLM\SYSTEM\CurrentControlSet\Services\CDPUserSvc /v Start /t REG_DWORD /d 2 /f >nul 2>&1
		reg add HKLM\SYSTEM\CurrentControlSet\Services\!_GDNFullName! /v Start /t REG_DWORD /d 2 /f >nul 2>&1
		call sc config CDPSvc start= auto >nul 2>&1
		call sc config CDPUserSvc start= auto >nul 2>&1
		call sc config !_GDNFullName! start= auto >nul 2>&1
	)
	call :GUI !_BC_E!!_BC_F! "OK" /n
	set _flag-w=
	set _BirdRuntimeFlag=
	if defined _BirdRuntimeMultiFlags set "_BirdRuntimeConfig=!_BirdRuntimeConfig:_W =!"
	echo. & goto SwitchFunctionTable
)
rem Disable/enable all XBox Live services -x switch
:subswitch_X
if defined _flag-x (
	if not defined _SWITCH_X_OFF (
		<nul set /p =".!BS!   - Disabling Xbox / Live ID / notification services . . . "
		schtasks /Change /TN "Microsoft\XblGameSave\XblGameSaveTask" /Disable >nul 2>&1
		schtasks /Change /TN "Microsoft\XblGameSave\XblGameSaveTaskLogon" /Disable >nul 2>&1
		call :GetDSN "WpnUserService" _GDNFullName
		call sc config XblAuthManager start= disabled >nul 2>&1
		call sc config XblGameSave start= disabled >nul 2>&1
		call sc config XboxNetApiSvc start= disabled >nul 2>&1
		call sc config XboxGipSvc start= disabled >nul 2>&1
		call sc config xbgm start= disabled >nul 2>&1
		call sc config !_GDNFullName! start= disabled >nul 2>&1
		call sc config WpnUserService start= disabled >nul 2>&1
		call sc config WpnService start= disabled >nul 2>&1
		call sc config WlidSvc start= disabled >nul 2>&1
		reg add HKLM\SYSTEM\CurrentControlSet\Services\XblAuthManager /v Start /t REG_DWORD /d 4 /f >nul 2>&1
		reg add HKLM\SYSTEM\CurrentControlSet\Services\XblGameSave /v Start /t REG_DWORD /d 4 /f >nul 2>&1
		reg add HKLM\SYSTEM\CurrentControlSet\Services\XboxNetApiSvc /v Start /t REG_DWORD /d 4 /f >nul 2>&1
		reg add HKLM\SYSTEM\CurrentControlSet\Services\XboxGipSvc /v Start /t REG_DWORD /d 4 /f >nul 2>&1
		reg add HKLM\SYSTEM\CurrentControlSet\Services\xbgm /v Start /t REG_DWORD /d 4 /f >nul 2>&1
		reg add HKLM\SYSTEM\CurrentControlSet\Services\WlidSvc /v Start /t REG_DWORD /d 4 /f >nul 2>&1
		reg add HKLM\SYSTEM\CurrentControlSet\Services\WpnService /v Start /t REG_DWORD /d 4 /f >nul 2>&1
		reg add HKLM\SYSTEM\CurrentControlSet\Services\WpnUserService /v Start /t REG_DWORD /d 4 /f >nul 2>&1
		reg add HKLM\SYSTEM\CurrentControlSet\Services\!_GDNFullName! /v Start /t REG_DWORD /d 4 /f >nul 2>&1
	)
	if defined _SWITCH_X_OFF (
		<nul set /p =".!BS!   - Enabling Xbox / Live ID / notification services . . . "
		call :GetDSN "WpnUserService" _GDNFullName
		reg add HKLM\SYSTEM\CurrentControlSet\Services\XblAuthManager /v Start /t REG_DWORD /d 2 /f >nul 2>&1
		reg add HKLM\SYSTEM\CurrentControlSet\Services\XblGameSave /v Start /t REG_DWORD /d 3 /f >nul 2>&1
		reg add HKLM\SYSTEM\CurrentControlSet\Services\XboxNetApiSvc /v Start /t REG_DWORD /d 2 /f >nul 2>&1
		reg add HKLM\SYSTEM\CurrentControlSet\Services\XboxGipSvc /v Start /t REG_DWORD /d 3 /f >nul 2>&1
		reg add HKLM\SYSTEM\CurrentControlSet\Services\xbgm /v Start /t REG_DWORD /d 3 /f >nul 2>&1
		reg add HKLM\SYSTEM\CurrentControlSet\Services\WlidSvc /v Start /t REG_DWORD /d 3 /f >nul 2>&1
		reg add HKLM\SYSTEM\CurrentControlSet\Services\WpnService /v Start /t REG_DWORD /d 2 /f >nul 2>&1
		reg add HKLM\SYSTEM\CurrentControlSet\Services\WpnUserService /v Start /t REG_DWORD /d 2 /f >nul 2>&1
		reg add HKLM\SYSTEM\CurrentControlSet\Services\!_GDNFullName! /v Start /t REG_DWORD /d 2 /f >nul 2>&1
		call sc config XblAuthManager start= auto >nul 2>&1
		call sc config XblGameSave start= demand >nul 2>&1
		call sc config XboxNetApiSvc start= auto >nul 2>&1
		call sc config XboxGipSvc start= demand >nul 2>&1
		call sc config xbgm start= demand >nul 2>&1
		call sc config WpnService start= auto >nul 2>&1
		call sc config WpnUserService start= auto >nul 2>&1
		call sc config !_GDNFullName! start= auto >nul 2>&1
		call sc config WlidSvc start= demand >nul 2>&1
		schtasks /Change /TN "Microsoft\XblGameSave\XblGameSaveTask" /Enable >nul 2>&1
		schtasks /Change /TN "Microsoft\XblGameSave\XblGameSaveTaskLogon" /Enable >nul 2>&1
	)
	call :GUI !_BC_E!!_BC_F! "OK" /n
	set _flag-x=
	set _BirdRuntimeFlag=
	if defined _BirdRuntimeMultiFlags set "_BirdRuntimeConfig=!_BirdRuntimeConfig:_X =!"
	echo. & goto SwitchFunctionTable
)
rem Disable/enable Hibernation -h switch
:subswitch_H
if defined _flag-h (
	if not defined _SWITCH_H_OFF (
		<nul set /p =".!BS!   - Disabling Hibernation . . . "
		powercfg -h off >nul 2>&1
	)
	if defined _SWITCH_H_OFF (
		<nul set /p =".!BS!   - Enabling Hibernation . . . "
		powercfg -h on >nul 2>&1
	)
	call :GUI !_BC_E!!_BC_F! "OK" /n
	set _flag-h=
	set _BirdRuntimeFlag=
	if defined _BirdRuntimeMultiFlags set "_BirdRuntimeConfig=!_BirdRuntimeConfig:_H =!"
	echo. & goto SwitchFunctionTable
)
rem Disable/enable DPS -p switch
:subswitch_P
if defined _flag-p (
	if not defined _SWITCH_P_OFF (
		<nul set /p =".!BS!   - Disabling Diagnostic Policy Service . . . "
		call sc config DPS start= disabled >nul 2>&1
		call sc config diagsvc start= disabled >nul 2>&1
		call sc config WdiSystemHost start= disabled >nul 2>&1
		call sc config WdiServiceHost start= disabled >nul 2>&1
		reg add HKLM\SYSTEM\CurrentControlSet\Services\WdiSystemHost /v Start /t REG_DWORD /d 4 /f >nul 2>&1
		reg add HKLM\SYSTEM\CurrentControlSet\Services\WdiServiceHost /v Start /t REG_DWORD /d 4 /f >nul 2>&1
		reg add HKLM\SYSTEM\CurrentControlSet\Services\diagsvc /v Start /t REG_DWORD /d 4 /f >nul 2>&1
		reg add HKLM\SYSTEM\CurrentControlSet\Services\DPS /v Start /t REG_DWORD /d 4 /f >nul 2>&1
	)
	if defined _SWITCH_P_OFF (
		<nul set /p =".!BS!   - Enabling Diagnostic Policy Service . . . "
		reg add HKLM\SYSTEM\CurrentControlSet\Services\WdiSystemHost /v Start /t REG_DWORD /d 3 /f >nul 2>&1
		reg add HKLM\SYSTEM\CurrentControlSet\Services\WdiServiceHost /v Start /t REG_DWORD /d 3 /f >nul 2>&1
		reg add HKLM\SYSTEM\CurrentControlSet\Services\diagsvc /v Start /t REG_DWORD /d 3 /f >nul 2>&1
		reg add HKLM\SYSTEM\CurrentControlSet\Services\DPS /v Start /t REG_DWORD /d 2 /f >nul 2>&1
		call sc config WdiSystemHost start= demand >nul 2>&1
		call sc config WdiServiceHost start= demand >nul 2>&1
		call sc config diagsvc start= demand >nul 2>&1
		call sc config DPS start= auto >nul 2>&1
	)
	call :GUI !_BC_E!!_BC_F! "OK" /n
	set _flag-p=
	set _BirdRuntimeFlag=
	if defined _BirdRuntimeMultiFlags set "_BirdRuntimeConfig=!_BirdRuntimeConfig:_P =!"
	echo. & goto SwitchFunctionTable
)
rem Disable WinDefender -d switch
:subswitch_D
if defined _flag-d (
	if not defined _SWITCH_D_OFF (
		<nul set /p =".!BS!   - Disabling Windows Defender . . . "
		reg add "HKLM\SOFTWARE\Microsoft\Windows Defender\Features" /v "TamperProtection" /t REG_DWORD /d "0" /f >nul 2>&1
		regsvr32 /u "C:\Program Files\Windows Defender\shellext.dll" /s >nul 2>&1
		schtasks /Change /TN "\Microsoft\Windows\Windows Defender\Windows Defender Cache Maintenance" /Disable >nul 2>&1
		schtasks /Change /TN "\Microsoft\Windows\Windows Defender\Windows Defender Cleanup" /Disable >nul 2>&1
		schtasks /Change /TN "\Microsoft\Windows\Windows Defender\Windows Defender Scheduled Scan" /Disable >nul 2>&1
		schtasks /Change /TN "\Microsoft\Windows\Windows Defender\Windows Defender Verification" /Disable >nul 2>&1
		reg add "HKLM\SOFTWARE\Microsoft\Windows Defender" /v "DisableAntiSpyware" /t REG_DWORD /d "1" /f >nul 2>&1
		reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender" /v "DisableAntiSpyware" /t REG_DWORD /d "1" /f >nul 2>&1
		call sc config SecurityHealthService start= disabled >nul 2>&1
		reg add HKLM\SYSTEM\CurrentControlSet\Services\SecurityHealthService /v Start /t REG_DWORD /d 4 /f >nul 2>&1
		if defined _flag-w10red reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Run" /v "WindowsDefender" /t REG_EXPAND_SZ /d \0 /f >nul 2>&1
	)
	if defined _SWITCH_D_OFF (
		<nul set /p =".!BS!   - Enabling Windows Defender . . . "
		reg add "HKLM\SOFTWARE\Microsoft\Windows Defender\Features" /v "TamperProtection" /t REG_DWORD /d "1" /f >nul 2>&1
		regsvr32 "C:\Program Files\Windows Defender\shellext.dll" /s >nul 2>&1
		schtasks /Change /TN "\Microsoft\Windows\Windows Defender\Windows Defender Cache Maintenance" /Enable >nul 2>&1
		schtasks /Change /TN "\Microsoft\Windows\Windows Defender\Windows Defender Cleanup" /Enable >nul 2>&1
		schtasks /Change /TN "\Microsoft\Windows\Windows Defender\Windows Defender Scheduled Scan" /Enable >nul 2>&1
		schtasks /Change /TN "\Microsoft\Windows\Windows Defender\Windows Defender Verification" /Enable >nul 2>&1
		reg add "HKLM\SOFTWARE\Microsoft\Windows Defender" /v "DisableAntiSpyware" /t REG_DWORD /d "0" /f >nul 2>&1
		reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender" /v "DisableAntiSpyware" /t REG_DWORD /d "0" /f >nul 2>&1
		reg add HKLM\SYSTEM\CurrentControlSet\Services\SecurityHealthService /v Start /t REG_DWORD /d 2 /f >nul 2>&1
		call sc config SecurityHealthService start= auto >nul 2>&1
	)
	call :GUI !_BC_E!!_BC_F! "OK" /n
	set _flag-d=
	set _BirdRuntimeFlag=
	if defined _BirdRuntimeMultiFlags set "_BirdRuntimeConfig=!_BirdRuntimeConfig:_D =!"
	echo. & goto SwitchFunctionTable
)
rem WinMRT update disable -m switch
:subswitch_M
if defined _flag-m (
	if not defined _SWITCH_M_OFF (
		<nul set /p =".!BS!   - Disabling Windows Malicious Software Removal Tool updates . . . "
		reg add "HKLM\SOFTWARE\Policies\Microsoft\MRT" /v DontOfferThroughWUAU /t REG_DWORD /d "1" /f >nul 2>&1
	)
	if defined _SWITCH_M_OFF (
		<nul set /p =".!BS!   - Enabling Windows Malicious Software Removal Tool updates . . . "
		reg add "HKLM\SOFTWARE\Policies\Microsoft\MRT" /v DontOfferThroughWUAU /t REG_DWORD /d "0" /f >nul 2>&1
	)
	call :GUI !_BC_E!!_BC_F! "OK" /n
	set _flag-m=
	set _BirdRuntimeFlag=
	if defined _BirdRuntimeMultiFlags set "_BirdRuntimeConfig=!_BirdRuntimeConfig:_M =!"
	echo. & goto SwitchFunctionTable
)
rem Kill Cortana -kc switch
:subswitch_KC
if defined _flag-kc (
	if defined _SWITCH_KC_OFF (
		<nul set /p =".!BS!   - Reviving Cortana . . . "
		ren "!systemroot!\SystemApps\Microsoft.Windows.Cortana_cw5n1h2txyewy.BlackbirdBackup" Microsoft.Windows.Cortana_cw5n1h2txyewy >nul 2>&1
		icacls "!systemroot!\SystemApps\Microsoft.Windows.Cortana_cw5n1h2txyewy" /grant system:F /T >nul 2>&1
		icacls "!systemroot!\SystemApps\Microsoft.Windows.Cortana_cw5n1h2txyewy" /grant TrustedInstaller:F /T >nul 2>&1
		icacls "!systemroot!\SystemApps\Microsoft.Windows.Cortana_cw5n1h2txyewy" /grant "All Application Packages":F /T >nul 2>&1
		attrib +r +s "!systemroot!\SystemApps\Microsoft.Windows.Cortana_cw5n1h2txyewy" /S /D >nul 2>&1
	)
	if not defined _SWITCH_KC_OFF (
		<nul set /p =".!BS!   - Killing Cortana . . . "
		if exist "!systemroot!\SystemApps\Microsoft.Windows.Cortana_cw5n1h2txyewy.BlackbirdBackup\" rmdir /S /Q "!systemroot!\SystemApps\Microsoft.Windows.Cortana_cw5n1h2txyewy.BlackbirdBackup" >nul 2>&1
		takeown /f "!systemroot!\SystemApps\Microsoft.Windows.Cortana_cw5n1h2txyewy" /r /d y >nul 2>&1
		attrib -r -s "!systemroot!\SystemApps\Microsoft.Windows.Cortana_cw5n1h2txyewy" /S /D >nul 2>&1
		icacls "!systemroot!\SystemApps\Microsoft.Windows.Cortana_cw5n1h2txyewy" /grant administrators:F /T >nul 2>&1
		icacls "!systemroot!\SystemApps\Microsoft.Windows.Cortana_cw5n1h2txyewy" /remove:g system /inheritance:r /deny "SYSTEM:(OI)(CI)F" >nul 2>&1
		icacls "!systemroot!\SystemApps\Microsoft.Windows.Cortana_cw5n1h2txyewy" /remove TrustedInstaller /T >nul 2>&1
		icacls "!systemroot!\SystemApps\Microsoft.Windows.Cortana_cw5n1h2txyewy" /remove "All Application Packages" /T >nul 2>&1
		if not defined osHome (
			taskkill /F /IM searchUI.exe >nul 2>&1
			taskkill /F /IM explorer.exe >nul 2>&1
			taskkill /F /IM RemindersServer.exe >nul 2>&1
			taskkill /F /IM backgroundTaskHost.exe >nul 2>&1
		)
		if defined osHome (
			tskill searchUI /a >nul 2>&1
			tskill explorer /a >nul 2>&1
			tskill RemindersServer /a >nul 2>&1
			tskill backgroundTaskHost /a >nul 2>&1
		)
		if exist "!systemroot!\SystemApps\Microsoft.Windows.Cortana_cw5n1h2txyewy\" ren "!systemroot!\SystemApps\Microsoft.Windows.Cortana_cw5n1h2txyewy" Microsoft.Windows.Cortana_cw5n1h2txyewy.BlackbirdBackup >nul 2>&1
		start explorer >nul 2>&1
	)
	call :GUI !_BC_E!!_BC_F! "OK" /n
	set _flag-kc=
	set _BirdRuntimeFlag=
	if defined _BirdRuntimeMultiFlags set "_BirdRuntimeConfig=!_BirdRuntimeConfig:_KC =!"
	echo. & goto SwitchFunctionTable
)
rem Kill Edge -ke switch
:subswitch_KE
if defined _flag-ke (
	if defined _SWITCH_KE_OFF (
		<nul set /p =".!BS!   - Reviving Edge . . . "
		ren "!systemroot!\SystemApps\Microsoft.MicrosoftEdge_8wekyb3d8bbwe.BlackbirdBackup" Microsoft.MicrosoftEdge_8wekyb3d8bbwe >nul 2>&1
		icacls "!systemroot!\SystemApps\Microsoft.MicrosoftEdge_8wekyb3d8bbwe" /grant system:F /T >nul 2>&1
		icacls "!systemroot!\SystemApps\Microsoft.MicrosoftEdge_8wekyb3d8bbwe" /grant TrustedInstaller:F /T >nul 2>&1
		icacls "!systemroot!\SystemApps\Microsoft.MicrosoftEdge_8wekyb3d8bbwe" /grant "All Application Packages":F /T >nul 2>&1
		attrib +r +s "!systemroot!\SystemApps\Microsoft.MicrosoftEdge_8wekyb3d8bbwe" /S /D >nul 2>&1
	)
	if not defined _SWITCH_KE_OFF (
		<nul set /p =".!BS!   - Killing Edge . . . "
		if exist "!systemroot!\SystemApps\Microsoft.MicrosoftEdge_8wekyb3d8bbwe.BlackbirdBackup\" rmdir /S /Q "!systemroot!\SystemApps\Microsoft.MicrosoftEdge_8wekyb3d8bbwe.BlackbirdBackup" >nul 2>&1
		takeown /f "!systemroot!\SystemApps\Microsoft.MicrosoftEdge_8wekyb3d8bbwe" /r /d y >nul 2>&1
		attrib -r -s "!systemroot!\SystemApps\Microsoft.MicrosoftEdge_8wekyb3d8bbwe" /S /D >nul 2>&1
		icacls "!systemroot!\SystemApps\Microsoft.MicrosoftEdge_8wekyb3d8bbwe" /grant Administrators:F /T >nul 2>&1
		icacls "!systemroot!\SystemApps\Microsoft.MicrosoftEdge_8wekyb3d8bbwe" /remove:g SYSTEM /inheritance:r /deny "SYSTEM:(OI)(CI)F" >nul 2>&1
		icacls "!systemroot!\SystemApps\Microsoft.MicrosoftEdge_8wekyb3d8bbwe" /remove TrustedInstaller /T  >nul 2>&1
		icacls "!systemroot!\SystemApps\Microsoft.MicrosoftEdge_8wekyb3d8bbwe" /remove "All Application Packages" /T >nul 2>&1
		if not defined osHome (
			taskkill /F /IM searchUI.exe >nul 2>&1
			taskkill /F /IM MicrosoftEdge.exe >nul 2>&1
			taskkill /F /IM MicrosoftEdgeCP.exe >nul 2>&1
			taskkill /F /IM RemindersServer.exe >nul 2>&1
			taskkill /F /IM backgroundTaskHost.exe >nul 2>&1
		)
		if defined osHome (
			tskill searchUI /a >nul 2>&1
			tskill MicrosoftEdge /a >nul 2>&1
			tskill MicrosoftEdgeCP /a >nul 2>&1
			tskill RemindersServer /a >nul 2>&1
			tskill backgroundTaskHost /a >nul 2>&1
		)
		if exist "!systemroot!\SystemApps\Microsoft.MicrosoftEdge_8wekyb3d8bbwe\" ren "!systemroot!\SystemApps\Microsoft.MicrosoftEdge_8wekyb3d8bbwe" Microsoft.MicrosoftEdge_8wekyb3d8bbwe.BlackbirdBackup
	)
	call :GUI !_BC_E!!_BC_F! "OK" /n
	set _flag-ke=
	set _BirdRuntimeFlag=
	if defined _BirdRuntimeMultiFlags set "_BirdRuntimeConfig=!_BirdRuntimeConfig:_KE =!"
	echo. & goto SwitchFunctionTable
)
rem Kill Store -ks switch
:subswitch_KS
if defined _flag-ks (
	if defined _SWITCH_KS_OFF (
		<nul set /p =".!BS!   - Reviving Windows Store . . . "
		rem ## ADD LATER ##
	)
	if not defined _SWITCH_KS_OFF (
		<nul set /p =".!BS!   - Killing Windows Store . . . "
		rem ## ADD LATER ##
	)
	call :GUI !_BC_E!!_BC_F! "OK" /n
	set _flag-ks=
	set _BirdRuntimeFlag=
	if defined _BirdRuntimeMultiFlags set "_BirdRuntimeConfig=!_BirdRuntimeConfig:_KS =!"
	echo. & goto SwitchFunctionTable
)
rem Kill Feedback/Contact -kf switch
:subswitch_KF
if defined _flag-kf (
	if defined _SWITCH_KF_OFF (
		<nul set /p =".!BS!   - Reviving Feedback/ContactSupport . . . "
		if exist "!systemroot!\SystemApps\ContactSupport_cw5n1h2txyewy.BlackbirdBackup\" if not exist "!systemroot!\SystemApps\ContactSupport_cw5n1h2txyewy\" (
			ren "!systemroot!\SystemApps\ContactSupport_cw5n1h2txyewy.BlackbirdBackup" ContactSupport_cw5n1h2txyewy >nul 2>&1
			icacls "!systemroot!\SystemApps\ContactSupport_cw5n1h2txyewy" /grant system:F /T >nul 2>&1
			icacls "!systemroot!\SystemApps\ContactSupport_cw5n1h2txyewy" /grant TrustedInstaller:F /T >nul 2>&1
			icacls "!systemroot!\SystemApps\ContactSupport_cw5n1h2txyewy" /grant "All Application Packages":F /T >nul 2>&1
			attrib +r +s "!systemroot!\SystemApps\ContactSupport_cw5n1h2txyewy" /S /D >nul 2>&1
		)
		if exist "!systemroot!\SystemApps\WindowsFeedback_cw5n1h2txyewy.BlackbirdBackup\" if not exist "!systemroot!\SystemApps\WindowsFeedback_cw5n1h2txyewy\" (
			ren "!systemroot!\SystemApps\WindowsFeedback_cw5n1h2txyewy.BlackbirdBackup" WindowsFeedback_cw5n1h2txyewy >nul 2>&1
			icacls "!systemroot!\SystemApps\WindowsFeedback_cw5n1h2txyewy" /grant system:F /T >nul 2>&1
			icacls "!systemroot!\SystemApps\WindowsFeedback_cw5n1h2txyewy" /grant TrustedInstaller:F /T >nul 2>&1
			icacls "!systemroot!\SystemApps\WindowsFeedback_cw5n1h2txyewy" /grant "All Application Packages":F /T >nul 2>&1
			attrib +r +s "!systemroot!\SystemApps\WindowsFeedback_cw5n1h2txyewy" /S /D >nul 2>&1
	))
	if not defined _SWITCH_KF_OFF (
		<nul set /p =".!BS!   - Killing Feedback/ContactSupport . . . "
		if exist "!systemroot!\SystemApps\ContactSupport_cw5n1h2txyewy.BlackbirdBackup\" if exist "!systemroot!\SystemApps\ContactSupport_cw5n1h2txyewy\" ( rmdir /S /Q "!systemroot!\SystemApps\ContactSupport_cw5n1h2txyewy.BlackbirdBackup" >nul 2>&1 )
		if exist "!systemroot!\SystemApps\WindowsFeedback_cw5n1h2txyewy.BlackbirdBackup" if exist "!systemroot!\SystemApps\WindowsFeedback_cw5n1h2txyewy\" ( rmdir /S /Q "!systemroot!\SystemApps\WindowsFeedback_cw5n1h2txyewy.BlackbirdBackup" >nul 2>&1 )
		takeown /f "!systemroot!\SystemApps\ContactSupport_cw5n1h2txyewy" /r /d y >nul 2>&1
		attrib -r -s "!systemroot!\SystemApps\ContactSupport_cw5n1h2txyewy" /S /D >nul 2>&1
		icacls "!systemroot!\SystemApps\ContactSupport_cw5n1h2txyewy" /grant Administrators:F /T >nul 2>&1
		icacls "!systemroot!\SystemApps\ContactSupport_cw5n1h2txyewy" /remove:g SYSTEM /inheritance:r /deny "SYSTEM:(OI)(CI)F" >nul 2>&1
		icacls "!systemroot!\SystemApps\ContactSupport_cw5n1h2txyewy" /remove TrustedInstaller /T>nul
		icacls "!systemroot!\SystemApps\ContactSupport_cw5n1h2txyewy" /remove "All Application Packages" /T >nul 2>&1
		takeown /f "!systemroot!\SystemApps\WindowsFeedback_cw5n1h2txyewy" /r /d y >nul 2>&1
		attrib -r -s "!systemroot!\SystemApps\WindowsFeedback_cw5n1h2txyewy" /S /D >nul 2>&1
		icacls "!systemroot!\SystemApps\WindowsFeedback_cw5n1h2txyewy" /grant Administrators:F /T >nul 2>&1
		icacls "!systemroot!\SystemApps\WindowsFeedback_cw5n1h2txyewy" /remove:g SYSTEM /inheritance:r /deny "SYSTEM:(OI)(CI)F" >nul 2>&1
		icacls "!systemroot!\SystemApps\WindowsFeedback_cw5n1h2txyewy" /remove TrustedInstaller /T>nul 2>&1
		icacls "!systemroot!\SystemApps\WindowsFeedback_cw5n1h2txyewy" /remove "All Application Packages" /T >nul 2>&1
		if not defined osHome (
			taskkill /F /IM ContactSupport.exe >nul 2>&1
			taskkill /F /IM FeedbackApp.Windows.exe >nul 2>&1
			taskkill /F /IM backgroundTaskHost.exe >nul 2>&1
		)
		if defined osHome (
			tskill ContactSupport /a >nul 2>&1
			tskill FeedbackApp.Windows /a >nul 2>&1
			tskill backgroundTaskHost /a >nul 2>&1
		)
		if exist "!systemroot!\SystemApps\ContactSupport_cw5n1h2txyewy\" ren "!systemroot!\SystemApps\ContactSupport_cw5n1h2txyewy" ContactSupport_cw5n1h2txyewy.BlackbirdBackup >nul 2>&1

		if exist "!systemroot!\SystemApps\WindowsFeedback_cw5n1h2txyewy\" ren "!systemroot!\SystemApps\WindowsFeedback_cw5n1h2txyewy" WindowsFeedback_cw5n1h2txyewy.BlackbirdBackup >nul 2>&1
	)
	call :GUI !_BC_E!!_BC_F! "OK" /n
	set _flag-kf=
	set _BirdRuntimeFlag=
	if defined _BirdRuntimeMultiFlags set "_BirdRuntimeConfig=!_BirdRuntimeConfig:_KF =!"
	echo. & goto SwitchFunctionTable
)
rem Kill Lockscreen -kl switch
:subswitch_KL
if defined _flag-kl (
	if defined _SWITCH_KL_OFF (
		<nul set /p =".!BS!   - Reviving Lockscreen . . . "
		ren "!systemroot!\SystemApps\Microsoft.LockApp_cw5n1h2txyewy.BlackbirdBackup" Microsoft.LockApp_cw5n1h2txyewy >nul 2>&1
		icacls "!systemroot!\SystemApps\Microsoft.LockApp_cw5n1h2txyewy" /grant system:F /T >nul 2>&1
		icacls "!systemroot!\SystemApps\Microsoft.LockApp_cw5n1h2txyewy" /grant TrustedInstaller:F /T >nul 2>&1
		icacls "!systemroot!\SystemApps\Microsoft.LockApp_cw5n1h2txyewy" /grant "All Application Packages":F /T >nul 2>&1
		attrib +r +s "!systemroot!\SystemApps\Microsoft.LockApp_cw5n1h2txyewy" /S /D >nul 2>&1
	)
	if not defined _SWITCH_KL_OFF (
		<nul set /p =".!BS!   - Killing Lockscreen . . . "
		if exist "!systemroot!\SystemApps\Microsoft.LockApp_cw5n1h2txyewy.BlackbirdBackup\" rmdir /S /Q "!systemroot!\SystemApps\Microsoft.LockApp_cw5n1h2txyewy.BlackbirdBackup" >nul 2>&1
		takeown /f "!systemroot!\SystemApps\Microsoft.LockApp_cw5n1h2txyewy" /r /d y >nul 2>&1
		attrib -r -s "!systemroot!\SystemApps\Microsoft.LockApp_cw5n1h2txyewy" /S /D >nul 2>&1
		icacls "!systemroot!\SystemApps\Microsoft.LockApp_cw5n1h2txyewy" /grant administrators:F /T >nul 2>&1
		icacls "!systemroot!\SystemApps\Microsoft.LockApp_cw5n1h2txyewy" /remove:g system /inheritance:r /deny "SYSTEM:(OI)(CI)F" >nul 2>&1
		icacls "!systemroot!\SystemApps\Microsoft.LockApp_cw5n1h2txyewy" /remove TrustedInstaller /T>nul
		icacls "!systemroot!\SystemApps\Microsoft.LockApp_cw5n1h2txyewy" /remove "All Application Packages" /T >nul 2>&1
		if not defined osHome (
			taskkill /F /IM lockapp.exe >nul 2>&1
			taskkill /F /IM explorer.exe >nul 2>&1
			taskkill /F /IM backgroundTaskHost.exe >nul 2>&1
		)
		if defined osHome (
			tskill lockapp /a >nul 2>&1
			tskill explorer /a >nul 2>&1
			tskill backgroundTaskHost /a >nul 2>&1
		)
		if exist "!systemroot!\SystemApps\Microsoft.LockApp_cw5n1h2txyewy\" ren "!systemroot!\SystemApps\Microsoft.LockApp_cw5n1h2txyewy" Microsoft.LockApp_cw5n1h2txyewy.BlackbirdBackup >nul 2>&1
		start explorer >nul 2>&1
	)
	call :GUI !_BC_E!!_BC_F! "OK" /n
	set _flag-kl=
	set _BirdRuntimeFlag=
	if defined _BirdRuntimeMultiFlags set "_BirdRuntimeConfig=!_BirdRuntimeConfig:_KL =!"
	echo. & goto SwitchFunctionTable
)
:subswitch_MainFlow
if not defined _FEED (set "_BirdNote_MainFlowSwitchStart=Press any key to run Blackbird") else (set "_BirdNote_MainFlowSwitchStart=Press any other key to run Blackbird")
if defined _flag-v (
	if defined _BirdRuntimeMultiFlags ( set "_BirdRuntimeConfig=!_BirdRuntimeConfig:_V =!" &set "_SwitchSlave_Config=!_BirdRuntimeConfig!" )
	set "_VerboseEdition="
	if not defined _OS-UNKNOWN (
		wmic os get Caption /value | findstr "Home" >nul && ( set "_VerboseEdition=Home " )
		wmic os get Caption /value | findstr "Pro" >nul && ( set "_VerboseEdition=Pro " )
		wmic os get Caption /value | findstr "Ultimate" >nul && ( set "_VerboseEdition=Ultimate " )
		wmic os get Caption /value | findstr "Enterprise" >nul && ( set "_VerboseEdition=Enterprise " )
		wmic os get Caption /value | findstr "Education" >nul && ( set "_VerboseEdition=Education " )
	)
	call :DrawBird 1 _Bird_MainFlowFill
	<nul set /p =".!BS!!_Bird_MainFlowFill!"&echo.
	call :DrawBird 2 _Bird_MainFlowFill
	<nul set /p =".!BS!!_Bird_MainFlowFill!"
	if not defined _OS-UNKNOWN ( call :GUI 0f "OS: " & <nul set /p ="!_VerboseOS! !_VerboseEdition!!osbit!bit" &echo. ) else ( call :GUI !_BC_B!!_BC_D! " WARNING "&call :GUI 0f " Unknown OS version detected" & <nul set /p ="^!" &echo. )
	call :DrawBird 3 _Bird_MainFlowFill
	<nul set /p =".!BS!!_Bird_MainFlowFill!"
	if /i not [!username!]==[!_blackname!] ( call :GUI 0f "User (Non-admin): " )
	if /i [!username!]==[!_blackname!] ( call :GUI 0f "User (Admin): " )
	<nul set /p ="!_blackname!"&echo.
	call :DrawBird 4 _Bird_MainFlowFill
	<nul set /p =".!BS!!_Bird_MainFlowFill!"&call :GUI 0f "SID: "
	<nul set /p ="!UserSID!"&echo.
	call :DrawBird 5 _Bird_MainFlowFill
	<nul set /p =".!BS!!_Bird_MainFlowFill!"&call :GUI 0f "Blackbird version: "
	<nul set /p ="!blackbird_ver!, V6 engine"&echo.
	call :DrawBird 6 _Bird_MainFlowFill
	<nul set /p =".!BS!!_Bird_MainFlowFill!"
	if defined _flag-exthost (
		call :GUI 0f "External hosts file: "&call :GUI !_BC_E!!_BC_F! "Ready" /n
		call :DrawBird 7 _Bird_MainFlowFill
		<nul set /p =".!BS!!_Bird_MainFlowFill!"
		if defined _flag-extupdate ( call :GUI 0f "External updates file: "&call :GUI !_BC_E!!_BC_F! "Ready" /n ) else ( echo. )
	) else (
		if defined _flag-extupdate ( call :GUI 0f "External updates file: "&call :GUI !_BC_E!!_BC_F! "Ready" /n ) else ( echo. )
		call :DrawBird 7 _Bird_MainFlowFill
		<nul set /p =".!BS!!_Bird_MainFlowFill!"&echo.
	)
	call :DrawBird 8 _Bird_MainFlowFill
	<nul set /p =".!BS!!_Bird_MainFlowFill!"&echo.
	call :DrawBird 9 _Bird_MainFlowFill
	<nul set /p =".!BS!!_Bird_MainFlowFill!"&call :GUI 0f "[ Active Switches ]" /n
	call :DrawBird 10 _Bird_MainFlowFill
	<nul set /p =".!BS!!_Bird_MainFlowFill!- "&call :GUI 06 "Verbose Mode" /n
	if defined _BirdRuntimeMultiFlags (
		if not defined _FEED (set "_BirdNote_MainFlowSwitchStart=Press any key to run selected switches") else (set "_BirdNote_MainFlowSwitchStart=Press any other key to run selected switches")
		call :SwitchSlave "!_SwitchSlave_Config!" -SHOW_VERBOSE
	)
	echo. &echo.
	if not defined _flag-s (
		if not defined _FEED (
			call :GUI 0f "   !_BirdNote_MainFlowSwitchStart! > "
			pause>nul
		) else (
			set "_BirdInput="
			<nul set /p =".!BS!   ["&call :GUI 0f " > "
			<nul set /p ="] Press"&call :GUI 0f " Q "
			if defined _BirdRuntimeNoDeepSwitch (
				<nul set /p ="to cancel and return to the main window." &echo.
			) else (
				<nul set /p ="to cancel and quit."&echo.
			)
			echo.&echo.
			call :GUI 0f "   !_BirdNote_MainFlowSwitchStart! > "
			for /F "delims=" %%B in ('xcopy /L /w "!_FEED!" "!_FEED!" 2^>NUL') do ( if not defined _BirdInput set "_BirdInput=%%B" )
			set "_BirdInput=!_BirdInput:~-1!"
			if /i [!_BirdInput!]==[q] if defined _BirdRuntimeNoDeepSwitch (
				cls & goto Birdboot
			) else if not defined _BirdRuntimeNoDeepSwitch (
				echo. & goto :eof
	)))
	echo. &echo.
	set "_BirdTakeoffTime=!time: =!"
	call :GetISODate _ISO_DATE
	<nul set /p =".!BS! [ Blackbird started: !_ISO_DATE! at !_BirdTakeoffTime! ]"&echo.
)
if not defined _flag-v (
	call :initProgressBar "|" " "
	call :drawProgressBar 0 "Initializing"
	for /l %%f in (0 1 3) do ( call :drawProgressBar %%f )
)
if defined _flag-updates goto GreenDog
if defined _flag-tasks goto BlueDog_Tasks
if defined _flag-services goto BlueDog_Services
if defined _flag-reg goto BlueDog_Registry
if defined _flag-hostblock goto RedPanda

:GreenDog
if defined _flag-v ( echo. &call :GUI 0f " [" &call :GUI !_BC_G!!_BC_I! " Removing spyware (this may take several minutes) " &call :GUI 0f "]" /n )
if not defined _flag-w10 goto GreenDogSkipAppBlock
if defined _flag-v echo  -- Building local system applications index . . .
if not defined _flag-v (
	call :drawProgressBar 2 "Checking applications"
	for /l %%f in (3 1 5) do ( call :drawProgressBar %%f ) 
)
rem ---
if not defined _flag-w10red5 goto GreenDog_SkipUPFC
rem ---
set "_GreenDog_AppUPFC_DisableFAILED=" &set "_GreenDog_AppsUPFC_IAI="
icacls "!systemroot!\system32\upfc.exe" | findstr /irc:".*System.*(RX)" >nul && (
	set _GreenDog_AppsUPFC_IAI=true
	if defined _flag-v (
		echo. &<nul set /p =".!BS! " &call :GUI !_BC_B!!_BC_D! " > "
		<nul set /p =".!BS! Detected active application: " &call :GUI 0E "Upfc.exe" /n
	)
	takeown /f "!systemroot!\system32\upfc.exe" /a >nul 2>&1
	icacls "!systemroot!\system32\upfc.exe" /grant:r system:r /C /Q >nul 2>&1
	icacls "!systemroot!\system32\upfc.exe" /grant:r "nt service\trustedinstaller:r" /C /Q >nul 2>&1
	icacls "!systemroot!\system32\upfc.exe" /grant:r *S-1-5-32-544:f /C /Q >nul 2>&1
	icacls "!systemroot!\system32\upfc.exe" /setowner "nt service\trustedinstaller" /C /Q >nul 2>&1
	icacls "!systemroot!\system32\upfc.exe" /grant:r *S-1-5-32-544:r /C /Q >nul 2>&1
	if defined _flag-v (
		icacls "!systemroot!\system32\upfc.exe" | findstr /irc:".*System.*(RX)" >nul && (set "_GreenDog_AppUPFC_DisableFAILED=true")
		if not defined _GreenDog_AppUPFC_DisableFAILED (<nul set /p =".!BS! " &call :GUI !_BC_A!!_BC_C! " - " &call :GUI 0f " Successfully disabled." /n)
		if defined _GreenDog_AppUPFC_DisableFAILED (<nul set /p =".!BS! " &call :GUI !_BC_B!!_BC_D! " X " &call :GUI 0f " Failed to disable." /n)
))
if not defined _flag-v (
	call :drawProgressBar 6 "Checking applications"
	for /l %%f in (6 1 11) do ( call :drawProgressBar %%f ) 
)
:GreenDog_SkipUPFC
set "_GreenDog_AppsIAI=" &set "_GreenDog_LocalAppsROOT=!LOCALAPPDATA!"
set "_GreenDog_AppDisable_FAILED=" &set "_GreenDog_PermSearchConfig=!computername!.*!username!.*(F)"
attrib -s -h -r /S /D "!programfiles!\WindowsApps" >nul 2>&1
attrib -s -h -r /S /D "!_GreenDog_LocalAppsROOT!\Packages" >nul 2>&1
icacls "!programfiles!\WindowsApps" | findstr /irc:"!_GreenDog_PermSearchConfig!" >nul || call :GetOwnership "!programfiles!\WindowsApps"
icacls "!_GreenDog_LocalAppsROOT!\Packages" | findstr /irc:"!_GreenDog_PermSearchConfig!" >nul || call :GetOwnership "!_GreenDog_LocalAppsROOT!\Packages"
for /f "usebackq tokens=* delims=" %%B in (`dir /a:d /b "!_GreenDog_LocalAppsROOT!\Packages" ^| findstr /i ".*Advertising.*" ^| findstr /iv ".*BlackbirdBackup"`) do (
	set "_GreenDog_LocalApps_Partial="
	set "_GreenDog_LocalApps_Partial=%%B"
	if defined _GreenDog_LocalApps_Partial (
		if defined _flag-v if not defined _GreenDog_AppsIAI (
			echo.
			<nul set /p =".!BS! "&call :GUI !_BC_B!!_BC_D! " > "
			<nul set /p =".!BS! Detected active application: "
			call :GUI 0E "Advertising" /n
		)
		set _GreenDog_AppsIAI=true
		call :GetDeepOwnership "!_GreenDog_LocalAppsROOT!\Packages\!_GreenDog_LocalApps_Partial!" -MAKE_BACKUP
		if not exist "!_GreenDog_LocalAppsROOT!\Packages\!_GreenDog_LocalApps_Partial!.!_BakString!\" set "_GreenDog_AppDisable_FAILED=!_GreenDog_LocalAppsROOT!\Packages\!_GreenDog_LocalApps_Partial!"
))
for /f "usebackq tokens=* delims=" %%A in (`dir /a:d /b "!programfiles!\WindowsApps" ^| findstr /i ".*Advertising.*" ^| findstr /iv ".*BlackbirdBackup"`) do (
	set "_GreenDog_WinApps_Partial="
	set "_GreenDog_WinApps_Partial=%%A"
	if defined _GreenDog_WinApps_Partial (
		if defined _flag-v if not defined _GreenDog_AppsIAI (
			echo.
			<nul set /p =".!BS! "&call :GUI !_BC_B!!_BC_D! " > "
			<nul set /p =".!BS! Detected active application: "
			call :GUI 0E "Advertising" /n
		)
		set _GreenDog_AppsIAI=true
		call :GetDeepOwnership "!programfiles!\WindowsApps\!_GreenDog_WinApps_Partial!" -MAKE_BACKUP
		if not exist "!programfiles!\WindowsApps\!_GreenDog_WinApps_Partial!.!_BakString!\" set "_GreenDog_AppDisable_FAILED=!programfiles!\WindowsApps\!_GreenDog_WinApps_Partial!"
))
if defined _flag-v (
	if defined _GreenDog_AppsIAI if defined _GreenDog_AppDisable_FAILED (
		<nul set /p =".!BS! "&call :GUI !_BC_B!!_BC_D! " X "&call :GUI 0f " Failed to disable." /n
		call :ERROR_FileOpsFail "!_GreenDog_AppDisable_FAILED!"
	)
	if defined _GreenDog_AppsIAI if not defined _GreenDog_AppDisable_FAILED (
		<nul set /p =".!BS! "&call :GUI !_BC_A!!_BC_C! " - "&call :GUI 0f " Successfully disabled." /n
	)
	if not defined _GreenDog_AppsIAI if not defined _GreenDog_AppsUPFC_IAI (
		<nul set /p =".!BS! "&call :GUI !_BC_A!!_BC_C! " -"
		call :GUI 0f " Applications are clean. " /n &echo.
))
:GreenDogSkipAppBlock
if defined _flag-w10 (goto GreenDogSkipUpdates) else if defined _flag-noupdate (goto GreenDogSkipUpdates)
set "UPDATES_IAI=" &set "GD_KBIndex="
if not defined _flag-extupdate goto GreenDogKB_Blacklist
if not exist "!_ExtUpdatesPath!" (
	if defined _flag-v (
		call :ERROR_KbNoExternalUpdates "!_ExtUpdatesPath!"
		echo. &echo  -- Skipping update removal . . . &echo.
	)
	goto GreenDogSkipUpdates
)
if not defined _flag-v (
  call :drawProgressBar 3 "Removing external updates"
  for /l %%f in (3 1 5) do ( call :drawProgressBar %%f ) 
) else (
	call :GUI 0f " -- Update file found at: "
	<nul set /p ="!_ExtUpdatesPath!"&echo.
)
For /F "eol=; usebackq tokens=* delims=" %%K in ("!_ExtUpdatesPath!") do (
	set _extkbs=%%K
	set "_GD_KBDbg=" &set "UPDATES_IAItmp="
	set "_extkbsNum=!_extkbs:KB=!"
	if defined _flag-v (
		set "__INPUT-LengthCalcValue=!_extkbsNum!"
		call :StringCalc __INPUT-LengthCalcValue __OUTPUT-LengthCalcResult
		if !__OUTPUT-LengthCalcResult! lss 7 set "_GD_KBDbg=.!BS!!_GD_KBDbg!."
		if !__OUTPUT-LengthCalcResult! lss 6 set "_GD_KBDbg=.!BS!!_GD_KBDbg!."
		if !__OUTPUT-LengthCalcResult! lss 5 set "_GD_KBDbg=.!BS!!_GD_KBDbg!."
		if !__OUTPUT-LengthCalcResult! lss 4 set "_GD_KBDbg=.!BS!!_GD_KBDbg!."
		if !__OUTPUT-LengthCalcResult! lss 3 set "_GD_KBDbg=.!BS!!_GD_KBDbg!."
		if !__OUTPUT-LengthCalcResult! lss 2 set "_GD_KBDbg=.!BS!!_GD_KBDbg!."
		if !__OUTPUT-LengthCalcResult! lss 1 set "_GD_KBDbg=.!BS!!_GD_KBDbg!."
		set "_GreenDog_ExtKB_VerboseName=!_extkbsNum!!_GD_KBDbg!"
		if !__OUTPUT-LengthCalcResult! GTR 7 set "_GreenDog_ExtKB_VerboseName=!_GreenDog_ExtKB_VerboseName:~0,7!"
		<nul set /p =".!BS!  - Searching for update KB!_GreenDog_ExtKB_VerboseName!..."
	)
	REG QUERY "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Component Based Servicing\Packages" | findstr "KB!_extkbsNum!" >nul && (
		if defined _flag-v ( <nul set /p ="["&call :GUI !_BC_B!!_BC_D! " Found " )
		if defined _flag-v ( <nul set /p ="]"&echo. )
		set "UPDATES_IAItmp=true" &set "UPDATES_IAI=true"
		if defined _flag-v call :GUI 0f "  -- Removing KB!_extkbsNum!!_GD_KBDbg!..."
		if defined GD_KBIndex set "GD_KBIndex=!GD_KBIndex! !_extkbsNum!"
		if not defined GD_KBIndex set "GD_KBIndex=!_extkbsNum!"
		start "blackbird_wusa" /b /wait wusa /kb:!_extkbsNum! /uninstall /quiet /norestart
		if defined _flag-v ( <nul set /p ="["&call :GUI !_BC_A!!_BC_C! " OK " )
		if defined _flag-v ( <nul set /p ="]"&echo. )
	)
	if defined _flag-v if not defined UPDATES_IAItmp (
		<nul set /p ="["&call :GUI !_BC_A!!_BC_C! " Not found "
		<nul set /p ="]"&echo.
))	
if not defined _flag-v (
	call :drawProgressBar 6 "Removing external updates"
	for /l %%f in (6 1 10) do ( call :drawProgressBar %%f ) 
)
if defined UPDATES_IAI if "!blackbird_bit!"=="64" goto GreenDogKB_Hide
if not defined UPDATES_IAI if defined _flag-v (
	<nul set /p =".!BS! "&call :GUI !_BC_A!!_BC_C! " -" &call :GUI 0f " Updates are clean." /n &echo.
)
goto GreenDogSkipUpdates
:GreenDogKB_Blacklist
if defined _flag-v echo  -- Building local updates index . . .
set "KB_Blacklist=!_Bird_BigKBPool!"
if not defined _flag-v goto GreenDogKB_GUIRemove
for %%K in (!KB_Blacklist!) do (
	Set _KBRemove=%%K
	REG QUERY "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Component Based Servicing\Packages" | findstr "!_KBRemove!" >nul && (
		set UPDATES_IAI=true
		set "_KBNum=!_KBRemove:KB=!"
		set "__INPUT-LengthCalcValue=!_KBNum!"
		call :StringCalc __INPUT-LengthCalcValue __OUTPUT-LengthCalcResult
		if !__OUTPUT-LengthCalcResult! LSS 7 set "_GD_KBDbg=.!BS! "
		<nul set /p =".!BS!  - Removing update: KB!_KBNum! !_GD_KBDbg!. . . "
		start "blackbird_wusa" /b /wait wusa /kb:!_KBNum! /uninstall /quiet /norestart
		<nul set /p ="["&call :GUI !_BC_A!!_BC_C! " OK "
		<nul set /p ="]"&echo.
))
if defined UPDATES_IAI if "!blackbird_bit!"=="64" goto GreenDogKB_Hide
if not defined UPDATES_IAI (
	<nul set /p =".!BS! "&call :GUI !_BC_A!!_BC_C! " -" &call :GUI 0f " Updates are clean." /n
)
echo. &goto GreenDogSkipUpdates
:GreenDogKB_GUIRemove
set GDogKBGUICount=0
call :drawProgressBar 3 "Checking updates"
for /l %%f in (3 1 5) do ( call :drawProgressBar %%f ) 
for %%K in (!KB_Blacklist!) do (
	Set _KBRemove=%%K
	set "_KBNum=!_KBRemove:KB=!"
	SET /A GDogKBGUICount=!GDogKBGUICount!+1
	REG QUERY "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Component Based Servicing\Packages" | findstr "KB!_KBNum!" >nul && (
		set UPDATES_IAI=true
		if !GDogKBGUICount! leq 25 (
			call :drawProgressBar 5 "Removing KB!_KBNum!"
			for /l %%f in (5 1 6) do ( call :drawProgressBar %%f )
		)
		if !GDogKBGUICount! geq 45 (
			call :drawProgressBar 9 "Removing KB!_KBNum!"
			for /l %%f in (9 1 10) do ( call :drawProgressBar %%f )
		)
		start "blackbird_wusa" /b /wait wusa /kb:!_KBNum! /uninstall /quiet /norestart
	)
	if !GDogKBGUICount! equ 10 (
		call :drawProgressBar 5 "Checking updates"
		for /l %%f in (5 1 7) do ( call :drawProgressBar %%f )
		) else if !GDogKBGUICount! equ 30 (
			call :drawProgressBar 7 "Checking updates"
			for /l %%f in (7 1 9) do ( call :drawProgressBar %%f ) 
			) else if !GDogKBGUICount! equ 50 (
				call :drawProgressBar 9 "Checking updates"
				for /l %%f in (9 1 11) do ( call :drawProgressBar %%f ) 
))
rem ############# x32_flag ###############
if not "!blackbird_bit!"=="64" goto GreenDogSkipUpdates
if not defined UPDATES_IAI goto GreenDogSkipUpdates
if not defined _flag-v (
	call :drawProgressBar 11 "Hiding offending updates"
	for /l %%f in (11 1 12) do ( call :drawProgressBar %%f ) 
)
:GreenDogKB_Hide
if defined _flag-v <nul set /p =".!BS! -- Hiding offending updates . . . "
set "_obfn=1"
set /A "_obfn=!_obfn! + 7"
set "_birdstr=b!bird:~9!"
set "_obfstr=hs.v!_birdstr!"
if not exist "!BlackTemp!\nest\" MD "!BlackTemp!\nest" >nul 2>&1
if exist "!BlackTemp!\nest\blackbird.kbhs*" del /F /Q /S "!BlackTemp!\nest\blackbird.kbhs*" >nul 2>&1
if exist "!BlackTemp!\nest\brd.kbe*" del /F /Q /S "!BlackTemp!\nest\brd.kbe*" >nul 2>&1
>>"!BlackTemp!\nest\blackbird.kbhs.tmp" echo If Wscript.Arguments.Count = 0 Then
>>"!BlackTemp!\nest\blackbird.kbhs.tmp" echo     WScript.Quit 1
>>"!BlackTemp!\nest\blackbird.kbhs.tmp" echo End If
echo.>>"!BlackTemp!\nest\blackbird.kbhs.tmp"
>>"!BlackTemp!\nest\blackbird.kbhs.tmp" echo Dim hotfixId
>>"!BlackTemp!\nest\blackbird.kbhs.tmp" echo hotfixId = WScript.Arguments(0)
echo.>>"!BlackTemp!\nest\blackbird.kbhs.tmp"
>>"!BlackTemp!\nest\blackbird.kbhs.tmp" echo Dim updateSession, updateSearcher
>>"!BlackTemp!\nest\blackbird.kbhs.tmp" echo Set updateSession = CreateObject("Microsoft.Update.Session")
>>"!BlackTemp!\nest\blackbird.kbhs.tmp" echo Set updateSearcher = updateSession.CreateUpdateSearcher()
echo.>>"!BlackTemp!\nest\blackbird.kbhs.tmp"
>>"!BlackTemp!\nest\blackbird.kbhs.tmp" echo Wscript.Echo "--[Preventing re-installation of updates. . .]" 
>>"!BlackTemp!\nest\blackbird.kbhs.tmp" echo Dim searchResult
>>"!BlackTemp!\nest\blackbird.kbhs.tmp" echo Set searchResult = updateSearcher.Search("IsInstalled=0")
echo.>>"!BlackTemp!\nest\blackbird.kbhs.tmp"
>>"!BlackTemp!\nest\blackbird.kbhs.tmp" echo Dim update, kbArticleId, index, index2
>>"!BlackTemp!\nest\blackbird.kbhs.tmp" echo WScript.Echo CStr(searchResult.Updates.Count) ^& " found."
>>"!BlackTemp!\nest\blackbird.kbhs.tmp" echo For index = 0 To searchResult.Updates.Count - 1
>>"!BlackTemp!\nest\blackbird.kbhs.tmp" echo     Set update = searchResult.Updates.Item(index)
>>"!BlackTemp!\nest\blackbird.kbhs.tmp" echo     For index2 = 0 To update.KBArticleIDs.Count - 1
>>"!BlackTemp!\nest\blackbird.kbhs.tmp" echo         kbArticleId = update.KBArticleIDs(index2)
>>"!BlackTemp!\nest\blackbird.kbhs.tmp" echo         If kbArticleId = hotfixId Then
>>"!BlackTemp!\nest\blackbird.kbhs.tmp" echo             WScript.Echo "Hiding update: " ^& update.Title
>>"!BlackTemp!\nest\blackbird.kbhs.tmp" echo             update.IsHidden = True
>>"!BlackTemp!\nest\blackbird.kbhs.tmp" echo         End If
>>"!BlackTemp!\nest\blackbird.kbhs.tmp" echo     Next
>>"!BlackTemp!\nest\blackbird.kbhs.tmp" echo Next
>>"!BlackTemp!\nest\blackbird.kbhs.tmp" echo WScript.Quit 1
if exist "!BlackTemp!\nest\blackbird.kbhs.tmp" ren "!BlackTemp!\nest\blackbird.kbhs.tmp" brd.kbe!_obfn!t!_obfstr!
if not exist "!BlackTemp!\nest\brd.kbe!_obfn!t!_obfstr!" (
	if defined _flag-v (
		<nul set /p ="["&call :GUI !_BC_B!!_BC_D! " Failed "
		<nul set /p ="]"&echo.
		call :ERROR_KbNoHideScript
		echo. &echo  -- Skipping update hiding . . . &echo.
	)
	goto GreenDogSkipUpdates
)
if not defined _flag-v (
	call :drawProgressBar 12 "Hiding offending updates"
	for /l %%f in (12 1 13) do ( call :drawProgressBar %%f ) 
)
pushd "!BlackTemp!\nest"
if defined GD_KBIndex (
	start "Blackbird_UpdateGuard" /b /wait cscript //B //nologo brd.kbe8ths.vbs !GD_KBIndex!
) else (
	start "Blackbird_UpdateGuard" /b /wait cscript //B //nologo brd.kbe8ths.vbs 971033 2876229 2882822 2902907 2922324 2952664 2976978 2976987 2977759 2990214 3012973 3014460 3015249 3021917 3022345 3035583 3044374 3046480 3050265 3050267 3064683 3065987 3065988 3068707 3068708 3072318 3074677 3075249 3075851 3075853 3080149 3080351 3081427 3081437 3081451 3081454 3081954 3083324 3083325 3083710 3083711 3090045 3095675 3112336 3112343 3123862 3124275 3134814 3135445 3138612 3138615 3139929 3140166 3140185 3146449 3150513 3173040 4493132
)
popd
if defined _flag-v (
	<nul set /p ="["&call :GUI !_BC_A!!_BC_C! " OK "
	<nul set /p ="]"&echo. &echo.
)
rem ############# x32_flag ###############
:GreenDogSkipUpdates
if defined _flag-v echo.
if exist "!BlackTemp!\nest\brd.kbe*" del /F /Q /S "!BlackTemp!\nest\brd.kbe*" >nul 2>&1
if exist "!BlackTemp!\nest\blackbird.kbhs.tmp" del /F /Q /S "!BlackTemp!\nest\blackbird.kbhs.tmp" >nul 2>&1
if defined _flag-updates (
	set "_flag-updates=" &set "_BirdRuntimeFlag="
	if defined _BirdRuntimeMultiFlags set "_BirdRuntimeConfig=!_BirdRuntimeConfig:_UPDATES =!"
	goto SwitchFunctionTable
)
if not defined _flag-v (
	call :drawProgressBar 14 "Checking scheduled tasks"
	for /l %%f in (14 1 16) do ( call :drawProgressBar %%f ) 
)
:BlueDog_Tasks
if defined _DEBUG_MODE ( set _flag-v=true )
if defined _flag-v call :GUI 0f " ["&call :GUI !_BC_G!!_BC_I! " Securing scheduled tasks "&call :GUI 0f "]" /n
if defined _flag-v echo  -- Building local tasks index . . .
if defined _DEBUG_MODE ( echo on )
set "TASKS_IAI=" &set "_BlueDog_TaskML_DISABLED=Disabled"
if defined _BirdLangString if defined _Bird_ExtPS call :GetMLSET _BlueDog_TaskML_DISABLED -SCHTASKS -DISABLED
if exist "!BlackTemp!\blackbird.tempsch_raw.tmp" del /F /Q /S "!BlackTemp!\blackbird.tempsch_raw.tmp" >nul 2>&1
if not exist "!BlackTemp!\blackbird.tempsch_raw.tmp" (schtasks /query /fo list>>"!BlackTemp!\blackbird.tempsch_raw.tmp")
if not exist "!BlackTemp!\blackbird.tempsch_raw.tmp" (
	if defined _flag-v (
		set "ERROR_NOTEMP_VALUE=!BlackTemp!\blackbird.tempsch_raw.tmp" & call :ERROR_NOTEMP _Soft
		echo. &echo  -- Skipping scheduled tasks . . . &echo.
	)
	goto BlueDog_Services
)
if defined _flag-v (
	for %%A in (!_Bird_BigTaskPool!) do (
		set "_BlueDog_LiveQueryPath=%%A"
		set "_BlueDog_LiveQueryPath=!_BlueDog_LiveQueryPath:[=(!" &set "_BlueDog_LiveQueryPath=!_BlueDog_LiveQueryPath:]=)!"
		set "_BlueDog_LiveQueryPath=!_BlueDog_LiveQueryPath:$= !" &set "_BlueDog_LiveQueryPath=!_BlueDog_LiveQueryPath:\=\\!"
		findstr /irc:".*\:.*  !_BlueDog_LiveQueryPath!$" "!BlackTemp!\blackbird.tempsch_raw.tmp" >nul && (
			set "_BlueDog_LiveQueryPath=!_BlueDog_LiveQueryPath:\\=\!" &set "_BlueDog_LiveQueryPathQuoted=^"!_BlueDog_LiveQueryPath!^""
			schtasks /query /TN !_BlueDog_LiveQueryPathQuoted! | findstr /irc:" !_BlueDog_TaskML_DISABLED! .*$" >nul && (
				set "_BlueDog_LiveQueryPath=!_BlueDog_LiveQueryPathQuoted:"=!"
				set "_BlueDog_LiveQueryPath=!_BlueDog_LiveQueryPath:-%UserSID%=!"
				call :GetLastString "!_BlueDog_LiveQueryPath!" __GLS_Result
				if "!__GLS_Result!" equ "!UserSID!" if /i "!_BlueDog_LiveQueryPath!" equ "\Agent Activation Runtime\!UserSID!" ( set "__GLS_Result=Agent Activation Runtime" )
				call :GUI 0f "  - !__GLS_Result! "
				<nul set /p ="already disabled."&echo.
))))
for %%A in (!_Bird_BigTaskPool!) do (
	set "_BlueDog_LiveQueryPath=%%A"
	set "_BlueDog_LiveQueryPath=!_BlueDog_LiveQueryPath:[=(!" &set "_BlueDog_LiveQueryPath=!_BlueDog_LiveQueryPath:]=)!"
	set "_BlueDog_LiveQueryPath=!_BlueDog_LiveQueryPath:$= !" &set "_BlueDog_LiveQueryPath=!_BlueDog_LiveQueryPath:\=\\!"
	findstr /irc:".*\:.*  !_BlueDog_LiveQueryPath!$" "!BlackTemp!\blackbird.tempsch_raw.tmp" >nul && (
		set "_BlueDog_LiveQueryPath=!_BlueDog_LiveQueryPath:\\=\!" &set "_BlueDog_LiveQueryPathQuoted=^"!_BlueDog_LiveQueryPath!^""
		schtasks /query /TN !_BlueDog_LiveQueryPathQuoted! | findstr /irc:" !_BlueDog_TaskML_DISABLED! .*$" >nul || (
			set "_BlueDog_LiveQueryPath=!_BlueDog_LiveQueryPathQuoted:"=!" 
			set "_BlueDog_LiveDisplayPath=!_BlueDog_LiveQueryPath:-%UserSID%=!"
			if defined _flag-v (
				if not defined TASKS_IAI echo.
				call :GetLastString "!_BlueDog_LiveDisplayPath!" __GLS_Result
				if "!__GLS_Result!" equ "!UserSID!" if /i "!_BlueDog_LiveDisplayPath!" equ "\Agent Activation Runtime\!UserSID!" ( set "__GLS_Result=Agent Activation Runtime" )
				<nul set /p =".!BS! "&call :GUI !_BC_B!!_BC_D! " > "
				<nul set /p =".!BS! Detected enabled task: "&call :GUI 0E "!__GLS_Result! "
				<nul set /p ="[!_BlueDog_LiveQueryPath!]"&echo.
			)
			schtasks /End /TN !_BlueDog_LiveQueryPathQuoted! >nul 2>&1
			schtasks /Change /TN !_BlueDog_LiveQueryPathQuoted! /Disable >nul 2>&1
			if defined _Bird_ExtPS (
				call :GetLastString "!_BlueDog_LiveQueryPath!" __GLS_Result
				set "_BlueDog_ExtTaskName=!__GLS_Result!" &set "_BlueDog_ExtTaskPath=!_BlueDog_LiveQueryPath!"
				for %%a in ("!_BlueDog_ExtTaskName!") do set "_BlueDog_ExtLiveTaskPath=!_BlueDog_ExtTaskPath:%%~a=!"
				powershell "Disable-ScheduledTask -TaskName '!_BlueDog_ExtTaskName!' -TaskPath '!_BlueDog_ExtLiveTaskPath!'" >nul 2>&1
			)
			if defined _flag-v (
				set _BlueDog_TaskNotDisabled=
				schtasks /query /TN !_BlueDog_LiveQueryPathQuoted! | findstr /irc:" !_BlueDog_TaskML_DISABLED! .*$" >nul || set _BlueDog_TaskNotDisabled=true
				if defined _BlueDog_TaskNotDisabled (
					<nul set /p =".!BS! "&call :GUI !_BC_B!!_BC_D! " X "&call :GUI 0f " Failed to disable. Use /STD switch to force removal." /n
				)
				if not defined _BlueDog_TaskNotDisabled (
					<nul set /p =".!BS! "&call :GUI !_BC_A!!_BC_C! " - "&call :GUI 0f " Successfully disabled." /n
			))
			set TASKS_IAI=true
			if defined _flag-v echo.
		)
		set __GLS_Result=
))
if defined TASKS_IAI goto BlueDog_Services
if defined _flag-v ( <nul set /p =".!BS! "&call :GUI !_BC_A!!_BC_C! " -" &call :GUI 0f " Scheduled tasks are clean. " /n &echo. )
if defined _DEBUG_MODE ( echo off &echo. &goto BDShell )
:BlueDog_Services
if defined _flag-tasks (
	set "_flag-tasks=" &set "_BirdRuntimeFlag="
	if defined _BirdRuntimeMultiFlags set "_BirdRuntimeConfig=!_BirdRuntimeConfig:_TASKS =!"
	goto SwitchFunctionTable
)
if not defined _flag-v (
	call :drawProgressBar 17 "Checking services"
	for /l %%f in (17 1 20) do ( call :drawProgressBar %%f )
)
if defined _DEBUG_MODE ( echo on &set _flag-v=true )
if defined _flag-v (
	echo. &call :GUI 0f " [" &call :GUI !_BC_G!!_BC_I! " Securing system services " &call :GUI 0f "]" /n
	echo  -- Building local services index . . .
)
set "SERVICES_IAI=" &set "_BlueDog_ServicePool=!_Bird_BigServicePool!"
if defined _flag-w10 set "_BlueDog_DynamicServicePool=!_Bird_DynamicServicePool!"
if defined _flag-p if defined _SWITCH_P_OFF (
	set "_BlueDog_ServicePool=!_BlueDog_ServicePool:WdiSystemHost =!"
	set "_BlueDog_ServicePool=!_BlueDog_ServicePool:WdiServiceHost =!"
	set "_BlueDog_ServicePool=!_BlueDog_ServicePool:DPS =!"
	reg add HKLM\SYSTEM\CurrentControlSet\Services\WdiSystemHost /v Start /t REG_DWORD /d 3 /f >nul 2>&1
	reg add HKLM\SYSTEM\CurrentControlSet\Services\WdiServiceHost /v Start /t REG_DWORD /d 3 /f >nul 2>&1
	reg add HKLM\SYSTEM\CurrentControlSet\Services\DPS /v Start /t REG_DWORD /d 2 /f >nul 2>&1
)
if defined _flag-o if not defined _SWITCH_O_OFF (
	set "_BlueDog_ServicePool=!_BlueDog_ServicePool:OneSyncSvc =!"
	reg add HKLM\SYSTEM\CurrentControlSet\Services\OneSyncSvc /v Start /t REG_DWORD /d 2 /f >nul 2>&1
)
if defined _flag-e if defined _SWITCH_E_OFF (
	reg add HKLM\SYSTEM\CurrentControlSet\Services\lanmanserver /v Start /t REG_DWORD /d 2 /f >nul 2>&1
)
if defined _flag-t if defined _SWITCH_T_OFF (
	set "_BlueDog_ServicePool=!_BlueDog_ServicePool:TabletInputService =!"
	reg add HKLM\SYSTEM\CurrentControlSet\Services\TabletInputService /v Start /t REG_DWORD /d 3 /f >nul 2>&1
)
if defined _flag-u if defined _BOOT_AutoUpdatesOFF (
	if defined _flag-w10 (
		set "_BlueDog_ServicePool=!_BlueDog_ServicePool:BITS =!"
		set "_BlueDog_ServicePool=!_BlueDog_ServicePool:DoSvc =!"
		reg add HKLM\SYSTEM\CurrentControlSet\Services\UsoSvc /v Start /t REG_DWORD /d 3 /f >nul 2>&1
		reg add HKLM\SYSTEM\CurrentControlSet\Services\wuauserv /v Start /t REG_DWORD /d 3 /f >nul 2>&1
		reg add HKLM\SYSTEM\CurrentControlSet\Services\bits /v Start /t REG_DWORD /d 2 /f >nul 2>&1
		reg add HKLM\SYSTEM\CurrentControlSet\Services\dosvc /v Start /t REG_DWORD /d 2 /f >nul 2>&1
))
if defined _flag-x if defined _SWITCH_X_OFF (
	set "_BlueDog_ServicePool=!_BlueDog_ServicePool:XblAuthManager =!"
	set "_BlueDog_ServicePool=!_BlueDog_ServicePool:XblGameSave =!"
	set "_BlueDog_ServicePool=!_BlueDog_ServicePool:XboxNetApiSvc=!"
	set "_BlueDog_ServicePool=!_BlueDog_ServicePool:xbgm =!"
	set "_BlueDog_ServicePool=!_BlueDog_ServicePool:WpnUserService =!"
	set "_BlueDog_ServicePool=!_BlueDog_ServicePool:WpnService =!"
	set "_BlueDog_DynamicServicePool=!_BlueDog_DynamicServicePool:WpnUserService=!"
	reg add HKLM\SYSTEM\CurrentControlSet\Services\XblAuthManager /v Start /t REG_DWORD /d 2 /f >nul 2>&1
	reg add HKLM\SYSTEM\CurrentControlSet\Services\XblGameSave /v Start /t REG_DWORD /d 3 /f >nul 2>&1
	reg add HKLM\SYSTEM\CurrentControlSet\Services\XboxNetApiSvc /v Start /t REG_DWORD /d 2 /f >nul 2>&1
	reg add HKLM\SYSTEM\CurrentControlSet\Services\xbgm /v Start /t REG_DWORD /d 3 /f >nul 2>&1
	reg add HKLM\SYSTEM\CurrentControlSet\Services\WpnService /v Start /t REG_DWORD /d 2 /f >nul 2>&1
	reg add HKLM\SYSTEM\CurrentControlSet\Services\WpnUserService /v Start /t REG_DWORD /d 2 /f >nul 2>&1
	call :GetDSN "WpnUserService" _GDNFullName
	if defined _GDNFullName (
		reg add HKLM\SYSTEM\CurrentControlSet\Services\!_GDNFullName! /v Start /t REG_DWORD /d 2 /f >nul 2>&1
))
if defined _flag-i (
	set "_BlueDog_ServicePool=!_BlueDog_ServicePool:SSDPSRV =!"
	set "_BlueDog_ServicePool=!_BlueDog_ServicePool:upnphost =!"
	set "_BlueDog_ServicePool=!_BlueDog_ServicePool:DeviceAssociationService =!"
	reg add HKLM\SYSTEM\CurrentControlSet\Services\SSDPSRV /v Start /t REG_DWORD /d 3 /f >nul 2>&1
	reg add HKLM\SYSTEM\CurrentControlSet\Services\UPNPHOST /v Start /t REG_DWORD /d 3 /f >nul 2>&1
	reg add HKLM\SYSTEM\CurrentControlSet\Services\DeviceAssociationService /v Start /t REG_DWORD /d 3 /f >nul 2>&1
	if defined _flag-w10 (
		set "_BlueDog_ServicePool=!_BlueDog_ServicePool:WpnUserService =!"
		set "_BlueDog_ServicePool=!_BlueDog_ServicePool:BluetoothUserService =!"
		set "_BlueDog_ServicePool=!_BlueDog_ServicePool:DevicePickerUserSvc =!"
		set "_BlueDog_ServicePool=!_BlueDog_ServicePool:DeviceAssociationBrokerSvc =!"
		set "_BlueDog_DynamicServicePool=!_BlueDog_DynamicServicePool:WpnUserService=!"
		reg add HKLM\SYSTEM\CurrentControlSet\Services\WpnUserService /v Start /t REG_DWORD /d 2 /f >nul 2>&1
		call :GetDSN "WpnUserService" _GDNFullName
		if defined _GDNFullName (
			reg add HKLM\SYSTEM\CurrentControlSet\Services\!_GDNFullName! /v Start /t REG_DWORD /d 2 /f >nul 2>&1
)))
if defined _flag-l (
	reg add HKLM\SYSTEM\CurrentControlSet\Services\WdiServiceHost /v Start /t REG_DWORD /d 3 /f >nul 2>&1
	reg add HKLM\SYSTEM\CurrentControlSet\Services\WdiSystemHost /v Start /t REG_DWORD /d 3 /f >nul 2>&1
	reg add HKLM\SYSTEM\CurrentControlSet\Services\DPS /v Start /t REG_DWORD /d 2 /f >nul 2>&1
	reg add HKLM\SYSTEM\CurrentControlSet\Services\iphlpsvc /v Start /t REG_DWORD /d 2 /f >nul 2>&1
	if defined _flag-w10 reg add HKLM\SYSTEM\CurrentControlSet\Services\lmhosts /v Start /t REG_DWORD /d 3 /f >nul 2>&1
	if not defined _flag-w10 reg add HKLM\SYSTEM\CurrentControlSet\Services\lmhosts /v Start /t REG_DWORD /d 2 /f >nul 2>&1
	rem reg add HKLM\SYSTEM\CurrentControlSet\Services\MRxSMB10 /v Start /t REG_DWORD /d 3 /f >nul 2>&1
	reg add HKLM\SYSTEM\CurrentControlSet\Services\RemoteAccess /v Start /t REG_DWORD /d 3 /f >nul 2>&1
	reg add HKLM\SYSTEM\CurrentControlSet\Services\EapHost /v Start /t REG_DWORD /d 3 /f >nul 2>&1
	reg add HKLM\SYSTEM\CurrentControlSet\Services\srv /v Start /t REG_DWORD /d 3 /f >nul 2>&1
	reg add HKLM\SYSTEM\CurrentControlSet\Services\SSDPSRV /v Start /t REG_DWORD /d 3 /f >nul 2>&1
	reg add HKLM\SYSTEM\CurrentControlSet\Services\TrkWks /v Start /t REG_DWORD /d 2 /f >nul 2>&1
	reg add HKLM\SYSTEM\CurrentControlSet\Services\tunnel /v Start /t REG_DWORD /d 3 /f >nul 2>&1
	reg add HKLM\SYSTEM\CurrentControlSet\Services\WinHttpAutoProxySvc /v Start /t REG_DWORD /d 3 /f >nul 2>&1
	reg add HKLM\SYSTEM\CurrentControlSet\Services\NetBT /v Start /t REG_DWORD /d 1 /f >nul 2>&1
	reg add HKLM\SYSTEM\CurrentControlSet\Services\MRxDAV /v Start /t REG_DWORD /d 3 /f >nul 2>&1
	reg add HKLM\SYSTEM\CurrentControlSet\Services\WebClient /v Start /t REG_DWORD /d 3 /f >nul 2>&1
	reg add HKLM\SYSTEM\CurrentControlSet\Services\WMPNetworkSvc /v Start /t REG_DWORD /d 3 /f >nul 2>&1
	reg add HKLM\SYSTEM\CurrentControlSet\Services\upnphost /v Start /t REG_DWORD /d 2 /f >nul 2>&1
	reg add HKLM\SYSTEM\CurrentControlSet\Services\lanmanserver /v Start /t REG_DWORD /d 2 /f >nul 2>&1
	set "_BlueDog_ServicePool=!_BlueDog_ServicePool:NetBT =!"
	set "_BlueDog_ServicePool=!_BlueDog_ServicePool:MRxDAV =!"
	set "_BlueDog_ServicePool=!_BlueDog_ServicePool:WebClient =!"
	set "_BlueDog_ServicePool=!_BlueDog_ServicePool:WMPNetworkSvc =!"
	set "_BlueDog_ServicePool=!_BlueDog_ServicePool:upnphost =!"
	set "_BlueDog_ServicePool=!_BlueDog_ServicePool:lmhosts =!"
	set "_BlueDog_ServicePool=!_BlueDog_ServicePool:DPS =!"
	set "_BlueDog_ServicePool=!_BlueDog_ServicePool:WdiServiceHost =!"
	set "_BlueDog_ServicePool=!_BlueDog_ServicePool:WdiSystemHost =!"
	set "_BlueDog_ServicePool=!_BlueDog_ServicePool:iphlpsvc =!"
	set "_BlueDog_ServicePool=!_BlueDog_ServicePool:tunnel =!"
	set "_BlueDog_ServicePool=!_BlueDog_ServicePool:REMOTEACCESS =!"
	set "_BlueDog_ServicePool=!_BlueDog_ServicePool:TrkWks =!"
	set "_BlueDog_ServicePool=!_BlueDog_ServicePool:WinHttpAutoProxySvc =!"
	set "_BlueDog_ServicePool=!_BlueDog_ServicePool:SSDPSRV =!"
	set "_BlueDog_ServicePool=!_BlueDog_ServicePool: srv = !"
	set "_BlueDog_ServicePool=!_BlueDog_ServicePool: DsSvc = !"
)
if defined _flag-w10 (
	for %%A in (!_Bird_BigServicePool!) do (
		set _BlueDog_ServiceSubjectDSN=%%A
		reg query HKLM\SYSTEM\CurrentControlSet\Services | findstr /irc:".*\\services\\!_BlueDog_ServiceSubjectDSN!$" >nul && (
			echo !_BlueDog_ServiceSubjectDSN! | findstr /i "!_BlueDog_DynamicServicePool!">nul && (
				call :GetDSN "!_BlueDog_ServiceSubjectDSN!" _GDNFullName
				if defined _GDNFullName (
					set __DSN_FullFactorValue=
					set "__DSN_FullFactorValue=!_GDNFullName:~-7!"
					set "_BlueDog_ServicePool=!_BlueDog_ServicePool! !_GDNFullName!"
)))))
if defined _flag-v (
	for %%A in (!_BlueDog_ServicePool!) do (
		set _BlueDog_SRVDisable_Name=%%A
		set "_BlueDog_SRVDisable_isDisabled="
		reg query HKLM\SYSTEM\CurrentControlSet\Services | findstr /irc:".*\\services\\!_BlueDog_SRVDisable_Name!$" >nul && (
			reg query HKLM\SYSTEM\CurrentControlSet\Services\!_BlueDog_SRVDisable_Name! | findstr /irc:" start .*REG_DWORD .*0x4$" >nul && ( set "_BlueDog_SRVDisable_isDisabled=true" )
		)
		if defined _BlueDog_SRVDisable_isDisabled ( call :GUI 0f "  - !_BlueDog_SRVDisable_Name!"&call :GUI 07 " already disabled." /n )
))
for %%A in (!_BlueDog_ServicePool!) do (
	set _BlueDog_ServiceQuery=%%A
	set "_BlueDog_SrvStartType=" &set "_BlueDog_SRVExists="
	reg query HKLM\SYSTEM\CurrentControlSet\Services | findstr /irc:".*\\services\\!_BlueDog_ServiceQuery!$" >nul && ( set "_BlueDog_SRVExists=true" )
	if defined _BlueDog_SRVExists (
		reg query HKLM\SYSTEM\CurrentControlSet\Services\!_BlueDog_ServiceQuery! | findstr /irc:" start .*REG_DWORD .*0x3$" >nul && ( set "_BlueDog_SrvStartType=manual" )
		reg query HKLM\SYSTEM\CurrentControlSet\Services\!_BlueDog_ServiceQuery! | findstr /irc:" start .*REG_DWORD .*0x[1-2]$" >nul && ( set "_BlueDog_SrvStartType=auto" )
		reg query HKLM\SYSTEM\CurrentControlSet\Services\!_BlueDog_ServiceQuery! | findstr /irc:" start .*REG_DWORD .*0x0$" >nul && ( set "_BlueDog_SrvStartType=boot" )
	)
	if defined _BlueDog_SrvStartType (
		set SERVICES_IAI=true
		if defined _flag-v (
			set _BlueDog_SrvVerboseName=
			if defined _flag-w10 (
				set "__DSN_CheckName=!_BlueDog_ServiceQuery:~-7!"
				if not [!__DSN_CheckName!]==[!__DSN_FullFactorValue!] call :GetServiceName "!_BlueDog_ServiceQuery!" _BlueDog_SrvVerboseName
			)
			if not defined _flag-w10 call :GetServiceName "!_BlueDog_ServiceQuery!" _BlueDog_SrvVerboseName
			echo.
			<nul set /p =".!BS! "&call :GUI !_BC_B!!_BC_D! " > "
			<nul set /p =".!BS! Detected service set to !_BlueDog_SrvStartType! start: "&call :GUI 0E "!_BlueDog_ServiceQuery! "
			if defined _BlueDog_SrvVerboseName ( <nul set /p ="[!_BlueDog_SrvVerboseName!]" )
			echo.
		)
		if /i "!_BlueDog_ServiceQuery!"=="mrxsmb10" ( call sc config lanmanworkstation depend= bowser/mrxsmb20/nsi >nul 2>&1 )
		call sc stop !_BlueDog_ServiceQuery! >nul 2>&1
		call sc pause !_BlueDog_ServiceQuery! >nul 2>&1
		call sc stop !_BlueDog_ServiceQuery! >nul 2>&1
		call sc config !_BlueDog_ServiceQuery! start= disabled >nul 2>&1
		reg add HKLM\SYSTEM\CurrentControlSet\Services\!_BlueDog_ServiceQuery! /v Start /t REG_DWORD /d 4 /f >nul 2>&1
		rem ############# x32_flag ###############
		reg query HKLM\SYSTEM\CurrentControlSet\Services\!_BlueDog_ServiceQuery! | findstr /irc:" start .*REG_DWORD .*0x[0-3]$" >nul && (
			call :GetRegAddForce "HKLM\SYSTEM\CurrentControlSet\Services\!_BlueDog_ServiceQuery!" "Start" "REG_DWORD" "4"
		)
		rem ############# x32_flag ###############
		echo !_BlueDog_ServiceQuery! | findstr /r "!_Bird_ServiceDeadPool!">nul && set _BlueDog_SRVKILL=true
		if defined _flag-v (
			reg query HKLM\SYSTEM\CurrentControlSet\Services\!_BlueDog_ServiceQuery! | findstr /irc:" start .*REG_DWORD .*0x4$" >nul && ( call :GUI 07 " "&call :GUI !_BC_A!!_BC_C! " - "&call :GUI 0f " Successfully disabled." /n )
			reg query HKLM\SYSTEM\CurrentControlSet\Services\!_BlueDog_ServiceQuery! | findstr /irc:" start .*REG_DWORD .*0x[0-3]$" >nul && ( call :GUI 07 " "&call :GUI !_BC_B!!_BC_D! " X "&call :GUI 0f " Failed to disable." /n )
		)
		set _BlueDog_SrvVerboseName=
		if defined _BlueDog_SRVKILL ( call sc delete !_BlueDog_ServiceQuery! >nul 2>&1 )
		set _BlueDog_SRVKILL=
))
if defined _flag-v if defined SERVICES_IAI echo.
if defined SERVICES_IAI goto BlueDog_Registry
if defined _flag-v ( <nul set /p =".!BS! "&call :GUI !_BC_A!!_BC_C! " -"&call :GUI 0f " Services are clean." /n &echo. )
if defined _DEBUG_MODE ( echo off &echo. &goto BDShell )

:BlueDog_Registry
if defined _flag-services (
	set "_flag-services=" &set "_BirdRuntimeFlag="
	if defined _BirdRuntimeMultiFlags set "_BirdRuntimeConfig=!_BirdRuntimeConfig:_SERVICES =!"
	goto SwitchFunctionTable
)
if not defined _flag-v (
	call :drawProgressBar 21 "Checking registry"
	for /l %%f in (21 1 24) do ( call :drawProgressBar %%f )
)
if defined _DEBUG_MODE ( set _flag-v=true )
if defined _flag-v echo.
if defined _flag-v call :GUI 0f " ["&call :GUI !_BC_G!!_BC_I! " Securing Windows registry "&call :GUI 0f "]" /n
if defined _DEBUG_MODE ( echo on )
set "_BDog_KillAgentsRoot=HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Diagnostics\DiagTrack"
set "_HKLM_Software=HKEY_LOCAL_MACHINE\Software"
set "_HKLM_System=HKEY_LOCAL_MACHINE\SYSTEM"
set "__HKLMSys_CCSet=!_HKLM_System!\CurrentControlSet"
set "__HKLMSys_CCSControl=!__HKLMSys_CCSet!\Control"
set "__HKLMSys_CCSServices=!__HKLMSys_CCSet!\Services"
set "__HKLMSoftware_Ms=!_HKLM_Software!\Microsoft"
set "__HKLMSoftware_MsWin=!_HKLM_Software!\Microsoft\Windows"
set "__HKLMSoftwareMsWin_CurrentVer=!_HKLM_Software!\Microsoft\Windows\CurrentVersion"
set "__HKLMSoftwareMsWinNT_CurrentVer=!_HKLM_Software!\Microsoft\Windows NT\CurrentVersion"
set "__Policy_MS=!_HKLM_Software!\Policies\Microsoft"
set "__Policy_MSWin=!_HKLM_Software!\Policies\Microsoft\Windows"
set "__Policy_MSWinNT=!_HKLM_Software!\Policies\Microsoft\Windows NT"
set "_HKCU_Software=HKEY_CURRENT_USER\Software"
set "__HKUSID_Software=HKEY_USERS\!UserSID!\Software"
set "__HKUSID_Classes=HKEY_USERS\!UserSID!_Classes"
set "__HKCUSoftware_Ms=!_HKCU_Software!\Microsoft"
set "__HKCUSoftware_MsWin=!_HKCU_Software!\Microsoft\Windows"
set "__HKCUSoftwareMsWin_CurrentVer=!_HKCU_Software!\Microsoft\Windows\CurrentVersion"
set "__HKUSIDSoftware_MsWin=!__HKUSID_Software!\Microsoft\Windows"
set "__HKUSIDSoftwareMsWin_CurrentVer=!__HKUSID_Software!\Microsoft\Windows\CurrentVersion"
if not defined _flag-w10 (
	if defined _flag-v echo  -- Disabling Application Compatibility telemetry
	reg add "HKLM\Software\Microsoft\Windows NT\CurrentVersion\AppCompatFlags\AIT" /v "AITEnable" /t REG_DWORD /d "0" /f >nul 2>&1
	reg add "HKLM\Software\Microsoft\Windows NT\CurrentVersion\AppCompatFlags\ClientTelemetry" /v "TaskEnableRun" /t REG_DWORD /d "0" /f >nul 2>&1
	if defined _flag-v echo  -- Disabling CEIP
	reg add "HKLM\SOFTWARE\Policies\Microsoft\SQMClient\Windows" /v "CEIPEnable" /t REG_DWORD /d "0" /f >nul 2>&1
	if defined _flag-v echo  -- Disabling remote Scripted Diagnostics Provider query
	rem ############# x32_flag ###############
	call :GetRegAddForce "HKLM\Software\Microsoft\Windows\ScriptedDiagnosticsProvider\Policy" "EnableQueryRemoteServer" "REG_DWORD" "0"
	rem ############# x32_flag ###############
	rem reg add "HKLM\Software\Microsoft\Windows\ScriptedDiagnosticsProvider\Policy" /v "EnableQueryRemoteServer" /t REG_DWORD /d "0" /f >nul 2>&1
	reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\ScriptedDiagnosticsProvider\Policy" /v "DisableQueryRemoteServer" /t REG_DWORD /d "1" /f >nul 2>&1
	if defined _flag-v echo  -- Disabling remote Scheduled Diagnostics execution
	reg add "HKLM\SOFTWARE\Microsoft\Windows\ScheduledDiagnostics" /v "EnabledExecution" /t REG_DWORD /d "0" /f >nul 2>&1
	if defined _flag-v echo  -- Disabling auto-Recommended-Updates install
	reg add "HKLM\Software\Microsoft\Windows\CurrentVersion\WindowsUpdate" /v "IncludeRecommendedUpdates" /t REG_DWORD /d "0" /f >nul 2>&1
	if defined _flag-v echo  -- Disabling auto-reboot after update install
	reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate\AU" /v "NoAutoRebootWithLoggedOnUsers" /t REG_DWORD /d "1" /f >nul 2>&1
	if defined _flag-v echo  -- Disabling Peernet
	reg add "HKLM\Software\Policies\Microsoft\Peernet" /v "Disabled" /t REG_DWORD /d "1" /f >nul 2>&1
	reg add "HKLM\Software\Policies\Microsoft\Windows\BITS" /v "EnablePeercaching" /t REG_DWORD /d "0" /f >nul 2>&1
	reg add "HKLM\Software\Policies\Microsoft\Windows\BITS" /v "DisablePeerCachingClient" /t REG_DWORD /d "1" /f >nul 2>&1
	reg add "HKLM\Software\Policies\Microsoft\Windows\BITS" /v "DisablePeerCachingServer" /t REG_DWORD /d "1" /f >nul 2>&1
	if defined _flag-v echo  -- Disabling telemetry uploading
	reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\DataCollection" /v "AllowTelemetry" /t REG_DWORD /d "0" /f >nul 2>&1
	if defined os64bit reg add "HKLM\SOFTWARE\WOW6432Node\Microsoft\Windows\CurrentVersion\Policies\DataCollection" /v "AllowTelemetry" /t REG_DWORD /d "0" /f >nul 2>&1
	reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\DataCollection" /v "DisableEnterpriseAuthProxy" /t REG_DWORD /d "1" /f >nul 2>&1
	if defined _flag-v echo  -- Changing default telemetry proxy to localhost
	reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\DataCollection" /v "TelemetryProxy" /t REG_SZ /d "localhost:0" /f >nul 2>&1
	if defined _flag-v echo  -- Checking Error Reporting privacy settings
	reg add "HKLM\SOFTWARE\Microsoft\Windows\Windows Error Reporting" /v "Disabled" /t REG_SZ /d "1" /f >nul 2>&1
	reg add "HKLM\SOFTWARE\Microsoft\Windows\Windows Error Reporting" /v "MachineID" /t REG_SZ /d "0" /f >nul 2>&1
	reg add "HKLM\SOFTWARE\Microsoft\Windows\Windows Error Reporting\WMR" /v "Disable" /t REG_DWORD /d "1" /f >nul 2>&1
	reg add "HKLM\SOFTWARE\Microsoft\Windows\Windows Error Reporting\Consent" /v "DefaultConsent" /t REG_DWORD /d "0" /f >nul 2>&1
	reg add "HKLM\SOFTWARE\Microsoft\Windows\Windows Error Reporting\Consent" /v "NewUserDefaultConsent" /t REG_DWORD /d "0" /f >nul 2>&1
)
if defined _flag-v echo  -- Disabling Removable drive indexing
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Search" /v "DisableRemovableDriveIndexing" /t REG_DWORD /d "1" /f >nul 2>&1
if defined _flag-v echo  -- Disabling Remote Assistance
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Remote Assistance" /v "fAllowToGetHelp" /t REG_DWORD /d "0" /f >nul 2>&1
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Remote Assistance" /v "fAllowFullControl" /t REG_DWORD /d "0" /f >nul 2>&1
if defined _flag-v echo  -- Disabling Teredo/IPv6 tunneling 
netsh int teredo set state disabled >nul 2>&1
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\TCPIP\v6Transition" /v "Teredo_State" /t REG_SZ /d "Disabled" /f >nul 2>&1
if defined _flag-v echo  -- Preventing device meta-data collection
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Device Metadata" /v "DeviceMetadataServiceURL" /t REG_SZ /d "0" /f >nul 2>&1
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Device Metadata" /v "PreventDeviceMetadataFromNetwork" /t REG_DWORD /d "1" /f >nul 2>&1
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Device Metadata" /v "PreventDeviceMetadataFromNetwork" /t REG_DWORD /d "1" /f >nul 2>&1
if defined _flag-v echo  -- Disabling WDigest credential revealing
reg add "HKLM\SYSTEM\CurrentControlSet\Control\SecurityProviders\Wdigest" /v "UseLogonCredential" /t REG_DWORD /d "0" /f >nul 2>&1
rem SMB/NetBIOS_shares
if defined _flag-v echo  -- Disabling SMB/NetBT shares
reg add "HKLM\SYSTEM\CurrentControlSet\Services\NetBT\Parameters" /v "SMBDeviceEnabled" /t REG_DWORD /d "0" /f >nul 2>&1
reg add "HKLM\SYSTEM\CurrentControlSet\Services\LanmanServer\Parameters" /v "AutoShareServer" /t REG_DWORD /d "0" /f >nul 2>&1
reg add "HKLM\SYSTEM\CurrentControlSet\Services\LanmanServer\Parameters" /v "AutoShareWks" /t REG_DWORD /d "0" /f >nul 2>&1
rem IGMP_disable
if defined _flag-v echo  -- Patching IGMP
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "IGMPLevel" /t REG_DWORD /d "0" /f >nul 2>&1
rem WDAP
if defined _flag-v echo  -- Patching Web Proxy Auto Discovery
netsh winhttp reset proxy >nul 2>&1
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Internet Settings\Wpad" /v "WpadOverride" /t REG_DWORD /d "1" /f >nul 2>&1
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Internet Settings\Wpad" /v "WpadOverride" /t REG_DWORD /d "1" /f >nul 2>&1
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "UseDomainNameDevolution" /t REG_DWORD /d "0" /f >nul 2>&1
rem SmartNameResolution
if defined _flag-v echo  -- Patching DNS Smart Name Resolution
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows NT\DNSClient" /v "DisableSmartNameResolution" /t REG_DWORD /d "1" /f >nul 2>&1
rem LLMNR
if defined _flag-v echo  -- Patching Link-local Multicast Name Resolution
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows NT\DNSClient" /v "EnableMulticast" /t REG_DWORD /d "0" /f >nul 2>&1
if defined _flag-w10 reg add "HKLM\SYSTEM\CurrentControlSet\Services\Dnscache\Parameters" /v "DisableParallelAandAAAA" /t REG_DWORD /d "1" /f >nul 2>&1
if defined _flag-l goto BlueDog_Reg_SkipLANPatch
rem WindowsCred_leaks
if defined _flag-v echo  -- Patching Windows SMB data leaks
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Lsa\MSV1_0" /v "RestrictReceivingNTLMTraffic" /t REG_DWORD /d "2" /f >nul 2>&1
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Lsa\MSV1_0" /v "RestrictSendingNTLMTraffic" /t REG_DWORD /d "2" /f >nul 2>&1
reg add "HKLM\SYSTEM\CurrentControlSet\Services\LanmanServer\Parameters" /v "SMB1" /t REG_DWORD /d "0" /f >nul 2>&1
:BlueDog_Reg_SkipLANPatch
rem NVIDIA_OptOutExp
reg query "HKCU\Software" | findstr /i "NVIDIA" >nul && (
	if defined _flag-v echo  -- Patching NVIDIA telemetry leaks
	reg add "HKCU\Software\NVIDIA Corporation\NVControlPanel2\Client" /v "OptInOrOutPreference" /t REG_DWORD /d "0" /f >nul 2>&1
)
rem IE/EDGE_leaks
if defined _flag-v echo  -- Patching Internet Explorer/Edge data leaks
reg add "HKLM\Software\Policies\Microsoft\Internet Explorer\SQM" /v "DisableCustomerImprovementProgram" /t REG_DWORD /d "1" /f >nul 2>&1
if not defined _flag-w10 (
	reg add "HKLM\Software\Policies\Microsoft\Internet Explorer\Privacy" /v "EnableInPrivateBrowsing" /t REG_DWORD /d "0" /f >nul 2>&1
	reg add "HKLM\Software\Policies\Microsoft\Internet Explorer\Safety\PrivacIE" /v "DisableLogging" /t REG_DWORD /d "1" /f >nul 2>&1
)
rem WindowsDefender_leak
if defined _flag-v echo  -- Patching Windows Defender data leaks
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows Defender\Signature Updates" /v "FallbackOrder" /t REG_SZ /d "FileShares" /f >nul 2>&1
rem reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows Defender\Signature Updates" /v "DefinitionUpdateFileSharesSources"

reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender\Spynet" /v "SpyNetReporting" /t REG_DWORD /d "0" /f >nul 2>&1
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender\Spynet" /v "SpyNetReportingLocation" /t REG_MULTI_SZ /d "0" /f >nul 2>&1
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender\Spynet" /v "SubmitSamplesConsent" /t REG_DWORD /d "2" /f >nul 2>&1
rem ############# x32_flag ###############
call :GetRegAddForce "HKLM\SOFTWARE\Microsoft\Windows Defender\Spynet" "SpyNetReporting" "REG_DWORD" "0"
call :GetRegAddForce "HKLM\SOFTWARE\Microsoft\Windows Defender\Spynet" "SpyNetReportingLocation" "REG_MULTI_SZ" "0"
call :GetRegAddForce "HKLM\SOFTWARE\Microsoft\Windows Defender\Spynet" "SubmitSamplesConsent" "REG_DWORD" "2"
rem ############# x32_flag ###############
rem WindowsMRT_leak
if defined _flag-v echo  -- Patching Windows MRT data leaks
reg add "HKLM\Software\Policies\Microsoft\MRT" /v "DontReportInfectionInformation" /t REG_DWORD /d "1" /f >nul 2>&1
reg add "HKLM\SOFTWARE\Microsoft\RemovalTools\MpGears" /v "HeartbeatTrackingIndex" /t REG_DWORD /d "0" /f >nul 2>&1
reg add "HKLM\SOFTWARE\Microsoft\RemovalTools\MpGears" /v "SpyNetReportingLocation" /t REG_SZ /d "0" /f >nul 2>&1
if not defined _flag-v (
	call :drawProgressBar 25 "Checking registry"
	for /l %%f in (25 1 27) do ( call :drawProgressBar %%f )
)
if not defined _flag-w10 goto BlueDog_Reg_SkipWIN10
rem Maps_SystemSettings_leak
if defined _flag-v echo  -- Patching Maps/SystemSettings leaks
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Maps" /v "AutoDownloadAndUpdateMapData" /t REG_DWORD /d "0" /f >nul 2>&1
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Maps" /v "AllowUntriggeredNetworkTrafficOnSettingsPage" /t REG_DWORD /d "0" /f >nul 2>&1
rem Explorer_leak
if defined _flag-v echo  -- Patching Explorer leaks
if defined _flag-w10red3 (
	reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v "AllowOnlineTips" /t REG_DWORD /d "0" /f >nul 2>&1
)
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "Start_TrackProgs" /t REG_DWORD /d "0" /f >nul 2>&1
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "Start_TrackDocs" /t REG_DWORD /d "0" /f >nul 2>&1
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "Start_TrackProgs" /t REG_DWORD /d "0" /f >nul 2>&1
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "Start_TrackDocs" /t REG_DWORD /d "0" /f >nul 2>&1
rem Ad_ID_token
if defined _flag-v echo  -- Clearing unique ad-tracking ID token
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\AdvertisingInfo" /v "Enabled" /t REG_DWORD /d "0" /f >nul 2>&1
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AdvertisingInfo" /v "Enabled" /t REG_DWORD /d "0" /f >nul 2>&1
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AdvertisingInfo" /v "Id" /t REG_SZ /d "null" /f >nul 2>&1
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\AdvertisingInfo" /v "DisabledByGroupPolicy" /t REG_DWORD /d "1" /f >nul 2>&1
if defined _flag-w10red (
	reg add HKU\!UserSID!\SOFTWARE\Microsoft\Windows\CurrentVersion\AdvertisingInfo /v "Enabled" /t REG_DWORD /d "0" /f >nul 2>&1
	reg add HKU\!UserSID!\SOFTWARE\Microsoft\Windows\CurrentVersion\AdvertisingInfo /v "Id" /t REG_SZ /d "null" /f >nul 2>&1
)
rem SmartScreen_installPerms
if defined _flag-v echo  -- Configuring SmartScreen control permissions
reg add "HKLM\Software\Policies\Microsoft\Windows\System" /v "EnableSmartScreen" /t REG_DWORD /d "0" /f >nul 2>&1
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender\SmartScreen" /v "ConfigureAppInstallControl" /t REG_SZ /d "Anywhere" /f >nul 2>&1
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender\SmartScreen" /v "ConfigureAppInstallControlEnabled" /t REG_DWORD /d "1" /f >nul 2>&1
rem Hiberboot_faststartup
if defined _flag-v echo  -- Disabling Hiberboot/FastStartup
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Power" /v "HiberbootEnabled" /t REG_DWORD /d "0" /f >nul 2>&1
rem Ads_misc.
set _FruitBasket=
if defined _flag-v echo  -- Disabling Explorer/IE/LockScreen/StartMenu/PushNotification ads
set "_BlueDog_ContentDelivery_HKCUroot=HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\ContentDeliveryManager"
set "_BlueDog_ContentDelivery_HKCUroot_Quoted=^"!_BlueDog_ContentDelivery_HKCUroot!^""
set "_BlueDog_ContentDelivery_HKUSIDroot=HKEY_USERS\!UserSID!\SOFTWARE\Microsoft\Windows\CurrentVersion\ContentDeliveryManager"
set "_BlueDog_ContentDelivery_HKUSIDroot_Quoted=^"!_BlueDog_ContentDelivery_HKUSIDroot!^""
call :GetFruit "!_BlueDog_ContentDelivery_HKCUroot!" "SubscribedContent" _FruitBasket _PickFruit
if not "!_FruitBasket!"=="NO_FRUIT" (
	for %%A in (!_FruitBasket!) do (
		reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v %%A /t REG_DWORD /d "0" /f >nul 2>&1
		if defined _flag-w10red reg add !_BlueDog_ContentDelivery_HKUSIDroot_Quoted! /v %%A /t REG_DWORD /d "0" /f >nul 2>&1
))
if defined _flag-w10red (
	reg add !_BlueDog_ContentDelivery_HKUSIDroot_Quoted! /v "IdentityProvider" /t REG_SZ /d "0" /f >nul 2>&1
	reg add !_BlueDog_ContentDelivery_HKUSIDroot_Quoted! /v "SystemPaneSuggestionsEnabled" /t REG_DWORD /d "0" /f >nul 2>&1
	reg add !_BlueDog_ContentDelivery_HKUSIDroot_Quoted! /v "SoftLandingEnabled" /t REG_DWORD /d "0" /f >nul 2>&1
	reg add !_BlueDog_ContentDelivery_HKUSIDroot_Quoted! /v "OemPreInstalledAppsEnabled" /t REG_DWORD /d "0" /f >nul 2>&1
	reg add !_BlueDog_ContentDelivery_HKUSIDroot_Quoted! /v "PreInstalledAppsEnabled" /t REG_DWORD /d "0" /f >nul 2>&1
	reg add !_BlueDog_ContentDelivery_HKUSIDroot_Quoted! /v "SilentInstalledAppsEnabled" /t REG_DWORD /d "0" /f >nul 2>&1
	reg add !_BlueDog_ContentDelivery_HKUSIDroot_Quoted! /v "ContentDeliveryAllowed" /t REG_DWORD /d "0" /f >nul 2>&1
	reg add !_BlueDog_ContentDelivery_HKUSIDroot_Quoted! /v "NoTileApplicationNotification" /t REG_DWORD /d "1" /f >nul 2>&1
	reg add HKU\!UserSID!\SOFTWARE\Microsoft\Windows\CurrentVersion\PushNotifications /v "NoTileApplicationNotification" /t REG_DWORD /d "1" /f >nul 2>&1
	rem ############# x32_flag ###############
	call :GetRegAddForce "HKU\!UserSID!\Software\Microsoft\Windows\CurrentVersion\PushNotifications\Applications\Windows.SystemToast.Suggested" "ApplicationType" "REG_DWORD" "0"
	call :GetRegAddForce "HKU\!UserSID!\Software\Microsoft\Windows\CurrentVersion\PushNotifications\Applications\Windows.SystemToast.Suggested" "Capabilities" "REG_DWORD" "0"
	call :GetRegAddForce "HKU\!UserSID!\Software\Microsoft\Windows\CurrentVersion\PushNotifications\Applications\Windows.SystemToast.WindowsTip" "ApplicationType" "REG_DWORD" "0"
	call :GetRegAddForce "HKU\!UserSID!\Software\Microsoft\Windows\CurrentVersion\PushNotifications\Applications\Windows.SystemToast.WindowsTip" "Capabilities" "REG_DWORD" "0"
	rem ############# x32_flag ###############
)
reg add !_BlueDog_ContentDelivery_HKCUroot_Quoted! /v "IdentityProvider" /t REG_SZ /d "0" /f >nul 2>&1
reg add !_BlueDog_ContentDelivery_HKCUroot_Quoted! /v "SystemPaneSuggestionsEnabled" /t REG_DWORD /d "0" /f >nul 2>&1
reg add !_BlueDog_ContentDelivery_HKCUroot_Quoted! /v "SoftLandingEnabled" /t REG_DWORD /d "0" /f >nul 2>&1
reg add !_BlueDog_ContentDelivery_HKCUroot_Quoted! /v "OemPreInstalledAppsEnabled" /t REG_DWORD /d "0" /f >nul 2>&1
reg add !_BlueDog_ContentDelivery_HKCUroot_Quoted! /v "PreInstalledAppsEnabled" /t REG_DWORD /d "0" /f >nul 2>&1
reg add !_BlueDog_ContentDelivery_HKCUroot_Quoted! /v "SilentInstalledAppsEnabled" /t REG_DWORD /d "0" /f >nul 2>&1
reg add !_BlueDog_ContentDelivery_HKCUroot_Quoted! /v "ContentDeliveryAllowed" /t REG_DWORD /d "0" /f >nul 2>&1
reg add !_BlueDog_ContentDelivery_HKCUroot_Quoted! /v "RotatingLockScreenEnabled" /t REG_DWORD /d "0" /f >nul 2>&1
reg add !_BlueDog_ContentDelivery_HKCUroot_Quoted! /v "RotatingLockScreenOverlayEnabled" /t REG_DWORD /d "0" /f >nul 2>&1
reg add HKCU\SOFTWARE\Policies\Microsoft\Windows\CurrentVersion\PushNotifications /v "NoTileApplicationNotification" /t REG_DWORD /d "1" /f >nul 2>&1
reg add HKCU\SOFTWARE\Policies\Microsoft\Windows\CurrentVersion\PushNotifications /v "NoToastApplicationNotification" /t REG_DWORD /d "1" /f >nul 2>&1
reg add HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\PushNotifications /v "NoTileApplicationNotification" /t REG_DWORD /d "1" /f >nul 2>&1
reg add HKLM\SOFTWARE\Policies\Microsoft\Windows\CurrentVersion\PushNotifications /v "NoCloudApplicationNotification" /t REG_DWORD /d "1" /f >nul 2>&1
rem ############# x32_flag ###############
call :GetRegAddForce "HKLM\Software\Microsoft\Windows\CurrentVersion\Lock Screen\FeedManager" "(Default)" "REG_SZ" "0"
rem ############# x32_flag ###############
reg add "HKLM\Software\Microsoft\Windows\CurrentVersion\Lock Screen\FeedManager" /v "(Default)" /t REG_SZ /d "0" /f >nul 2>&1
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Lock Screen\Creative" /v "LockImageFlags" /t REG_DWORD /d "0" /f >nul 2>&1
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Lock Screen\Creative" /v "CreativeId" /t REG_SZ /d "0" /f >nul 2>&1
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Lock Screen\Creative" /v "PortraitAssetPath" /t REG_SZ /d "0" /f >nul 2>&1
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Lock Screen\Creative" /v "LandscapeAssetPath" /t REG_SZ /d "0" /f >nul 2>&1
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Lock Screen\Creative" /v "PlacementId" /t REG_SZ /d "0" /f >nul 2>&1
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Lock Screen\Creative" /v "ImpressionToken" /t REG_SZ /d "0" /f >nul 2>&1
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Lock Screen\Creative" /v "HotspotImageFolderPath" /t REG_SZ /d "0" /f >nul 2>&1
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Lock Screen\Creative" /v "CreativeJson" /t REG_SZ /d "0" /f >nul 2>&1
REM -------------
if defined _flag-v echo  -- Disabling MS Troubleshooter
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\ScriptedDiagnostics" /v "EnableDiagnostics" /t REG_DWORD /d "0" /f >nul 2>&1
if defined _flag-v echo  -- Disabling MSDT-URL protocol
reg delete "HKEY_CLASSES_ROOT\ms-msdt" /f >nul 2>&1
if defined _flag-v echo  -- Disabling EDGE/Chrome browser notifications
reg add "HKCU\SOFTWARE\Policies\Microsoft\Edge" /v "DefaultNotificationsSetting" /t REG_DWORD /d "2" /f >nul 2>&1
reg add "HKCU\SOFTWARE\Policies\Google\Chrome" /v "DefaultNotificationsSetting" /t REG_DWORD /d "2" /f >nul 2>&1
if defined _flag-v echo  -- Disabling Shared Experience
reg add "HKLM\Software\Policies\Microsoft\Windows\System" /v "EnableCdp" /t REG_DWORD /d "0" /f >nul 2>&1

reg add "HKLM\SOFTWARE\Microsoft\CloudManagedUpdate\exp\settings" /v "EXP.ENABLED" /t REG_EXPAND_SZ /d "0" /f >nul 2>&1
rem reg add "HKLM\SOFTWARE\Microsoft\COM3" /v "RemoteAccessEnabled" /t REG_DWORD /d "0" /f >nul 2>&1

reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\PushNotifications" /v "ToastEnabled" /t REG_DWORD /d "0" /f >nul 2>&1
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v "AllowOnlineTips" /t REG_DWORD /d "0" /f >nul 2>&1
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\CurrentVersion\Explorer\AutoComplete" /v "AutoSuggest" /t REG_SZ /d "no" /f >nul 2>&1
reg add "HKLM\SOFTWARE\Policies\Microsoft\Internet Explorer" /v "AllowServicePoweredQSA" /t REG_DWORD /d "0" /f >nul 2>&1
reg add "HKLM\SOFTWARE\Policies\Microsoft\Internet Explorer\Suggested Sites" /v "Enabled" /t REG_DWORD /d "0" /f >nul 2>&1
reg add "HKLM\SOFTWARE\Policies\Microsoft\Internet Explorer\Geolocation" /v "PolicyDisableGeolocation" /t REG_DWORD /d "1" /f >nul 2>&1
reg add "HKLM\SOFTWARE\Policies\Microsoft\Internet Explorer\PhishingFilter" /v "EnabledV9" /t REG_DWORD /d "0" /f >nul 2>&1
reg add "HKLM\SOFTWARE\Policies\Microsoft\Internet Explorer\Feeds" /v "BackgroundSyncStatus" /t REG_DWORD /d "0" /f >nul 2>&1
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\AdvertisingInfo" /v "DisabledByGroupPolicy" /t REG_DWORD /d "1" /f >nul 2>&1
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "Start_TrackProgs" /t REG_DWORD /d "0" /f >nul 2>&1
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "ShowSyncProviderNotifications" /t REG_DWORD /d "0" /f >nul 2>&1
reg add "HKCU\SOFTWARE\Policies\Microsoft\Windows\Explorer" /v "DisableSearchBoxSuggestions" /t REG_DWORD /d "1" /f >nul 2>&1
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Explorer" /v "DisableSearchBoxSuggestions" /t REG_DWORD /d "1" /f >nul 2>&1
rem reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\AppPrivacy" /v "LetAppsAccessLocation" /t REG_DWORD /d "2" /f >nul 2>&1
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\System" /v "EnableActivityFeed" /t REG_DWORD /d "0" /f >nul 2>&1
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Feeds" /v "IsFeedsAvailable" /t REG_DWORD /d "0" /f >nul 2>&1
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Feeds" /v "ShellFeedsTaskbarViewMode" /t REG_DWORD /d "2" /f >nul 2>&1
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Feeds\FeedRepositoryState" /v "FeedEnabled" /t REG_DWORD /d "0" /f >nul 2>&1

REM -------------
rem SuggestedApps
rem ---
rem reg add "HKLM\Software\Policies\Microsoft\WindowsInkWorkspace" /v "AllowSuggestedAppsInWindowsInkWorkspace" /t REG_DWORD /d "0" /f >nul 2>&1
rem ---
reg query HKCU\Software\Microsoft\Windows\CurrentVersion | findstr /irc:".*\\CurrentVersion\\ContentDeliveryManager$" >nul && (
	reg query HKCU\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager | findstr /irc:".*\\ContentDeliveryManager\\SuggestedApps$" >nul && (
		if defined _flag-v echo  -- Disabling all Suggested Apps
		for /F "tokens=1 usebackq delims= " %%a in (`reg query HKCU\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager\SuggestedApps ^| findstr /i "REG_DWORD"`) do (
			set _BlueDog_SAppsSet_LIVE=%%a
			if defined _BlueDog_SAppsSet_LIVE (
				reg delete HKCU\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager\SuggestedApps /v !_BlueDog_SAppsSet_LIVE! /f >nul 2>&1
				if defined _flag-w10red reg delete HKU\!UserSID!\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager\SuggestedApps /v !_BlueDog_SAppsSet_LIVE! /f >nul 2>&1
))))
rem AppPrivacy
if defined _flag-v echo  -- Checking application access . . .
set "_BlueDog_AppPrivacy_KeySet=LetAppsAccessLocation LetAppsAccessCamera LetAppsAccessMicrophone LetAppsAccessNotifications LetAppsAccessAccountInfo LetAppsAccessContacts LetAppsAccessCalendar LetAppsAccessCallHistory LetAppsAccessEmail LetAppsAccessMessaging LetAppsAccessPhone LetAppsAccessRadios LetAppsSyncWithDevices LetAppsAccessTrustedDevices LetAppsRunInBackground LetAppsAccessMotion LetAppsAccessTasks LetAppsGetDiagnosticInfo LetAppsActivateWithVoice LetAppsActivateWithVoiceAboveLock"
for %%A in (!_BlueDog_AppPrivacy_KeySet!) do (
	set "_BlueDog_AppPrivacy_LIVE=%%A"
	reg query HKLM\Software\Policies\Microsoft\Windows\AppPrivacy | findstr /ir ".*!_BlueDog_AppPrivacy_LIVE!.*REG_DWORD.*2" >nul || (
		if defined _flag-v (
			set "_BlueDog_AppPrivacy_LIVE_ShowName=!_BlueDog_AppPrivacy_LIVE:LetApps=!"
			set "_BlueDog_AppPrivacy_LIVE_ShowName=!_BlueDog_AppPrivacy_LIVE_ShowName:Access=!"
			<nul set /p =".!BS!  - Preventing !_BlueDog_AppPrivacy_LIVE_ShowName!"&echo.
		)
		reg add HKLM\Software\Policies\Microsoft\Windows\AppPrivacy /v !_BlueDog_AppPrivacy_LIVE! /t REG_DWORD /d 2 /f >nul 2>&1
))
rem Telemetry_experimental
if defined _flag-v echo  -- Disabling system telemetry
rem ---
rem reg add "HKLM\Software\Policies\Microsoft\Windows\DataCollection" /v "DoNotShowFeedbackNotifications" /t REG_DWORD /d "1" /f >nul 2>&1
reg add "HKLM\Software\Policies\Microsoft\Windows\DataCollection" /v "DisableOneSettingsDownloads" /t REG_DWORD /d "1" /f >nul 2>&1
REG add "HKLM\SOFTWARE\Policies\Microsoft\Windows\DataCollection" /v "AllowCommercialDataPipeline" /t REG_DWORD /d "0" /f >nul 2>&1
REG add "HKLM\SOFTWARE\Policies\Microsoft\Windows\DataCollection" /v "AllowDesktopAnalyticsProcessing" /t REG_DWORD /d "0" /f >nul 2>&1
reg add "HKLM\Software\Policies\Microsoft\Windows\DataCollection" /v "AllowWUfBCloudProcessing" /t REG_DWORD /d "0" /f >nul 2>&1
reg add "HKLM\Software\Policies\Microsoft\Windows\DataCollection" /v "AllowDeviceNameInTelemetry" /t REG_DWORD /d "0" /f >nul 2>&1
reg add "HKLM\Software\Policies\Microsoft\Windows\DataCollection" /v "CommercialId" /t REG_DWORD /d "0" /f >nul 2>&1
reg add "HKLM\Software\Policies\Microsoft\Windows\DataCollection" /v "DisableEnterpriseAuthProxy" /t REG_DWORD /d "1" /f >nul 2>&1
reg add "HKLM\Software\Policies\Microsoft\Windows\DataCollection" /v "TelemetryProxyServer" /t REG_DWORD /d "0" /f >nul 2>&1
rem ---
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\DataCollection" /v "AllowTelemetry" /t REG_DWORD /d "0" /f >nul 2>&1
if defined os64bit reg add "HKLM\SOFTWARE\WOW6432Node\Microsoft\Windows\CurrentVersion\Policies\DataCollection" /v "AllowTelemetry" /t REG_DWORD /d "0" /f >nul 2>&1
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\DataCollection" /v "MaxTelemetryAllowed" /t REG_DWORD /d "0" /f >nul 2>&1
if defined os64bit reg add "HKLM\SOFTWARE\WOW6432Node\Microsoft\Windows\CurrentVersion\Policies\DataCollection" /v "MaxTelemetryAllowed" /t REG_DWORD /d "0" /f >nul 2>&1
if defined _flag-w10red reg add HKU\!UserSID!\Software\Microsoft\Windows\CurrentVersion\Privacy /v "TailoredExperiencesWithDiagnosticDataEnabled" /t REG_DWORD /d "0" /f >nul 2>&1
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Privacy" /v "TailoredExperiencesWithDiagnosticDataEnabled" /t REG_DWORD /d "0" /f >nul 2>&1
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Privacy" /v "TailoredExperiencesWithDiagnosticDataEnabled" /t REG_DWORD /d "0" /f >nul 2>&1
rem Clipboard_Sharing
if defined _flag-v echo  -- Preventing clipboard history sharing
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\System" /v "AllowClipboardHistory" /t REG_DWORD /d "0" /f >nul 2>&1
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\System" /v "AllowCrossDeviceClipboard" /t REG_DWORD /d "0" /f >nul 2>&1
rem GlobalDeviceAccess Disable
if not defined _flag-w10red5 (
	if defined _flag-v echo  -- Preventing global device application access
	call :GetTreeBranch "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\DeviceAccess\Global" __GTB_FullBranch
	set "__GTB_FullBranch=%__GTB_FullBranch:##=!LineBreak!%"
	for /F "delims=##" %%A in ("!__GTB_FullBranch!") do (
		set _BlueDog_RegCUDeviceAccess_WildPath=%%A
		set "_BlueDog_RegSIDDeviceAccess_WildPath=!_BlueDog_RegCUDeviceAccess_WildPath:CURRENT_USER\=USERS\%UserSID%\!"
		reg add !_BlueDog_RegSIDDeviceAccess_WildPath! /v "Value" /t REG_SZ /d "Deny" /f >nul 2>&1
		reg add !_BlueDog_RegCUDeviceAccess_WildPath! /v "Value" /t REG_SZ /d "Deny" /f >nul 2>&1
))
rem SettingSync Disable
if defined _flag-v echo  -- Checking SettingSync Groups . . .
reg add "HKLM\Software\Policies\Microsoft\Windows\SettingSync" /v "DisableSettingSync" /t REG_DWORD /d "2" /f >nul 2>&1
reg add "HKLM\Software\Policies\Microsoft\Windows\SettingSync" /v "DisableSettingSyncUserOverride" /t REG_DWORD /d "1" /f >nul 2>&1
reg add !__HKCUSoftwareMsWin_CurrentVer!\SettingSync /v "DeviceMetadataUploaded" /t REG_DWORD /d "0" /f >nul 2>&1
reg add !__HKUSIDSoftwareMsWin_CurrentVer!\SettingSync /v "DeviceMetadataUploaded" /t REG_DWORD /d "0" /f >nul 2>&1
call :GetTreeBranch "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\SettingSync\Groups" __GTB_FullBranch
set "__GTB_FullBranch=%__GTB_FullBranch:##=!LineBreak!%"
for /F "delims=##" %%A in ("!__GTB_FullBranch!") do (
	set _BlueDog_RegCUSettingSync_WildPath=%%A
	set "_BlueDog_RegSIDSettingSync_WildPath=!_BlueDog_RegCUSettingSync_WildPath:CURRENT_USER\=USERS\%UserSID%\!"
	if defined _flag-v (
		call :GetLastString "!_BlueDog_RegCUSettingSync_WildPath!" __GLS_SettingSyncResult
		<nul set /p =".!BS!  - Disabling !__GLS_SettingSyncResult!"&echo.
		set __GLS_SettingSyncResult=
	)
	reg add !_BlueDog_RegSIDSettingSync_WildPath! /v "Enabled" /t REG_DWORD /d "0" /f >nul 2>&1
	reg add !_BlueDog_RegCUSettingSync_WildPath! /v "Enabled" /t REG_DWORD /d "0" /f >nul 2>&1
)
rem BackgroundAccessApps_experimental
if defined _flag-v echo  -- Checking Background Access Applications . . .
for /F "tokens=* usebackq delims=" %%a in (`reg query "HKCU\Software\Microsoft\Windows\CurrentVersion\BackgroundAccessApplications" ^| findstr /irc:".*\\CurrentVersion\\BackgroundAccessApplications\\.*"`) do (
	set _BlueDog_RegBAA_FullPath=%%a
	set "_BlueDog_RegBAA_CutPath=!_BlueDog_RegBAA_FullPath:HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\BackgroundAccessApplications\=!"
	reg query HKCU\Software\Microsoft\Windows\CurrentVersion\BackgroundAccessApplications\!_BlueDog_RegBAA_CutPath! | findstr /i ".*disabled.*0x1" >nul || (
		if defined _flag-v (
			<nul set /p =".!BS!  - Disabling !_BlueDog_RegBAA_CutPath!"&echo.
		)
		reg add HKCU\Software\Microsoft\Windows\CurrentVersion\BackgroundAccessApplications\!_BlueDog_RegBAA_CutPath! /v "Disabled" /t REG_DWORD /d "1" /f >nul 2>&1
		reg add HKU\!UserSID!\Software\Microsoft\Windows\CurrentVersion\BackgroundAccessApplications\!_BlueDog_RegBAA_CutPath! /v "Disabled" /t REG_DWORD /d "1" /f >nul 2>&1
))
rem WaasPlugins_experimental
reg query "HKLM\SYSTEM" | findstr /ir ".*\\SYSTEM\\WaaS$" >nul && (
	if defined _flag-v echo  -- Disabling Update Medic Service Plugins . . .
	rem ############# x32_flag ###############
	reg query "HKLM\SYSTEM\WaaS" | findstr /ir ".*\\WaaS\\Upfc$" >nul && ( call :GetRegAddForce "HKLM\SYSTEM\WaaS\Upfc" "NextHealthCheckTime" "REG_SZ" "0" )
	rem ############# x32_flag ###############
	reg query "HKLM\SYSTEM\WaaS" | findstr /ir ".*\\WaaS\\WaasMedic$" >nul && (
		reg query "HKLM\SYSTEM\WaaS\WaasMedic" | findstr /ir ".*\\WaasMedic\\Configuration$" >nul && (
			for /F "tokens=* usebackq delims=" %%a in (`reg query "HKLM\SYSTEM\WaaS\WaasMedic\Configuration" ^| findstr /ir ".*\\WaasMedic\\Configuration\\.*"`) do (
				set _BlueDog_RegWAAS_FullPath=%%a
				set "_BlueDog_RegWAAS_CutPath=!_BlueDog_RegWAAS_FullPath:HKEY_LOCAL_MACHINE\SYSTEM\WaaS\WaasMedic\Configuration\=!"
				set "_BlueDog_RegWAAS_QuotedPath=^"HKLM\SYSTEM\WaaS\WaasMedic\Configuration\!_BlueDog_RegWAAS_CutPath!^""
				reg query !_BlueDog_RegWAAS_QuotedPath! | findstr /i ".*enabled.*0x0" >nul || (
					if defined _flag-v ( <nul set /p =".!BS!  - Disabling !_BlueDog_RegWAAS_CutPath!"&echo. )
					rem ############# x32_flag ###############
					call :GetRegAddForce "!_BlueDog_RegWAAS_FullPath!" "ENABLED" "REG_DWORD" "0"
					rem ############# x32_flag ###############
				)
))))
rem Cortana Disable/Reset
if defined _flag-v echo  -- Disabling Cortana
if defined _flag-w10red reg add HKU\!UserSID!\Software\Microsoft\Windows\CurrentVersion\Search /v "CortanaEnabled" /t REG_DWORD /d "0" /f >nul 2>&1
if defined _flag-w10red8 reg add "HKCR\Local Settings\Software\Microsoft\Windows\CurrentVersion\AppModel\SystemAppData\Microsoft.549981C3F5F10_8wekyb3d8bbwe\CortanaStartupId" /v "State" /t REG_DWORD /d "1" /f >nul 2>&1
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Search" /v "CortanaEnabled" /t REG_DWORD /d "0" /f >nul 2>&1
reg add "HKLM\SOFTWARE\Microsoft\Windows Search" /v "AllowCortana" /t REG_DWORD /d "0" /f >nul 2>&1
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Search" /v "AllowCortana" /t REG_DWORD /d "0" /f >nul 2>&1
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Search" /v "DisableWebSearch" /t REG_DWORD /d "1" /f >nul 2>&1
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Search" /v "AllowSearchToUseLocation" /t REG_DWORD /d "0" /f >nul 2>&1
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Search" /v "ConnectedSearchPrivacy" /t REG_DWORD /d "3" /f >nul 2>&1
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Search" /v "ConnectedSearchSafeSearch" /t REG_DWORD /d "3" /f >nul 2>&1
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Search" /v "ConnectedSearchUseWeb" /t REG_DWORD /d "0" /f >nul 2>&1
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Search" /v "ConnectedSearchUseWebOverMeteredConnections" /t REG_DWORD /d "0" /f >nul 2>&1
rem reg add "HKLM\SOFTWARE\Policies\Microsoft\WindowsFirewall\FirewallRules" /v "{0DE40C8E-C126-4A27-9371-A27DAB1039F7}" /t REG_SZ /d "v2.25^|Action=Block^|Active=TRUE^|Dir=Out^|Protocol=6^|App=%windir%\SystemApps\Microsoft.Windows.Cortana_cw5n1h2txyewy\searchUI.exe|Name=Block outbound Cortana|" /f >nul 2>&1
rem Search Privacy
if defined _flag-v echo  -- Checking Search privacy settings
if defined _flag-w10red (
	reg add HKU\!UserSID!\Software\Microsoft\Windows\CurrentVersion\Search /v "AnyAboveLockAppsActive" /t REG_DWORD /d "0" /f >nul 2>&1
	reg add HKU\!UserSID!\Software\Microsoft\Windows\CurrentVersion\Search /v "BingSearchEnabled" /t REG_DWORD /d "0" /f >nul 2>&1
	reg add HKU\!UserSID!\Software\Microsoft\Windows\CurrentVersion\Search /v "CortanaCapabilities" /t REG_SZ /d "0" /f >nul 2>&1
	reg add HKU\!UserSID!\Software\Microsoft\Windows\CurrentVersion\Search /v "CortanaCapabilityFlags" /t REG_DWORD /d "0" /f >nul 2>&1
	reg add HKU\!UserSID!\Software\Microsoft\Windows\CurrentVersion\Search /v "CortanaConsent" /t REG_DWORD /d "0" /f >nul 2>&1
	reg add HKU\!UserSID!\Software\Microsoft\Windows\CurrentVersion\Search /v "CortanaInAmbientMode" /t REG_DWORD /d "0" /f >nul 2>&1
	reg add HKU\!UserSID!\Software\Microsoft\Windows\CurrentVersion\Search /v "CortanaMUID" /t REG_SZ /d "0" /f >nul 2>&1
	reg add HKU\!UserSID!\Software\Microsoft\Windows\CurrentVersion\Search /v "DeviceHistoryEnabled" /t REG_DWORD /d "0" /f >nul 2>&1
	reg add HKU\!UserSID!\Software\Microsoft\Windows\CurrentVersion\Search /v "HasAboveLockTips" /t REG_DWORD /d "0" /f >nul 2>&1
	reg add HKU\!UserSID!\Software\Microsoft\Windows\CurrentVersion\Search /v "IsAssignedAccess" /t REG_DWORD /d "0" /f >nul 2>&1
	reg add HKU\!UserSID!\Software\Microsoft\Windows\CurrentVersion\Search /v "IsMicrophoneAvailable" /t REG_DWORD /d "0" /f >nul 2>&1
	reg add HKU\!UserSID!\Software\Microsoft\Windows\CurrentVersion\Search /v "IsWindowsHelloActive" /t REG_DWORD /d "0" /f >nul 2>&1
)
rem ############# x32_flag ###############
call :GetRegAddForce "HKLM\Software\Microsoft\Windows\CurrentVersion\ConnectedSearch" "ConnectedSearchUseWeb" "REG_DWORD" "0"
rem ############# x32_flag ###############
rem reg add "HKLM\Software\Microsoft\Windows\CurrentVersion\ConnectedSearch" /v "ConnectedSearchUseWeb" /t REG_DWORD /d "0" /f >nul 2>&1
reg add "HKLM\SOFTWARE\Policies\Microsoft\SearchCompanion" /v "DisableContentFileUpdates" /t REG_DWORD /d "1" /f >nul 2>&1
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Search" /v "AnyAboveLockAppsActive" /t REG_DWORD /d "0" /f >nul 2>&1
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Search" /v "AllowSearchToUseLocation" /t REG_DWORD /d "0" /f >nul 2>&1
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Search" /v "BingSearchEnabled" /t REG_DWORD /d "0" /f >nul 2>&1
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Search" /v "CortanaCapabilities" /t REG_SZ /d "0" /f >nul 2>&1
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Search" /v "CortanaCapabilityFlags" /t REG_DWORD /d "0" /f >nul 2>&1
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Search" /v "CortanaConsent" /t REG_DWORD /d "0" /f >nul 2>&1
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Search" /v "CortanaInAmbientMode" /t REG_DWORD /d "0" /f >nul 2>&1
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Search" /v "CortanaMUID" /t REG_SZ /d "0" /f >nul 2>&1
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Search" /v "DeviceHistoryEnabled" /t REG_DWORD /d "0" /f >nul 2>&1
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Search" /v "HasAboveLockTips" /t REG_DWORD /d "0" /f >nul 2>&1
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Search" /v "IsAssignedAccess" /t REG_DWORD /d "0" /f >nul 2>&1
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Search" /v "IsMicrophoneAvailable" /t REG_DWORD /d "0" /f >nul 2>&1
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Search" /v "IsWindowsHelloActive" /t REG_DWORD /d "0" /f >nul 2>&1
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Search" /v "EnableDynamicContentInWSB" /t REG_DWORD /d "0" /f >nul 2>&1
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\SearchSettings" /v "IsDynamicSearchBoxEnabled" /t REG_DWORD /d "0" /f >nul 2>&1
rem ---------
reg add HKU\!UserSID!\Software\Microsoft\Windows\CurrentVersion\SearchSettings /v "IsAADCloudSearchEnabled" /t REG_DWORD /d "0" /f >nul 2>&1
reg add HKU\!UserSID!\Software\Microsoft\Windows\CurrentVersion\SearchSettings /v "IsDeviceSearchHistoryEnabled" /t REG_DWORD /d "0" /f >nul 2>&1
reg add HKU\!UserSID!\Software\Microsoft\Windows\CurrentVersion\SearchSettings /v "IsMSACloudSearchEnabled" /t REG_DWORD /d "0" /f >nul 2>&1
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\SearchSettings" /v "IsAADCloudSearchEnabled" /t REG_DWORD /d "0" /f >nul 2>&1
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\SearchSettings" /v "IsDeviceSearchHistoryEnabled" /t REG_DWORD /d "0" /f >nul 2>&1
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\SearchSettings" /v "IsMSACloudSearchEnabled" /t REG_DWORD /d "0" /f >nul 2>&1
rem Error_Reporting
if defined _flag-v echo  -- Checking Error Reporting privacy settings
reg add "HKLM\SOFTWARE\Policies\Microsoft\PCHealth\ErrorReporting" /v "DoReport" /t REG_DWORD /d "0" /f >nul 2>&1
reg add "HKLM\SOFTWARE\Policies\Microsoft\PCHealth\ErrorReporting" /v "ForceQueueMode" /t REG_DWORD /d "0" /f >nul 2>&1
reg add "HKLM\SOFTWARE\Policies\Microsoft\PCHealth\ErrorReporting\DW" /v "DWFileTreeRoot" /t REG_SZ /d "0" /f >nul 2>&1
reg add "HKLM\SOFTWARE\Policies\Microsoft\PCHealth\ErrorReporting\DW" /v "DWNoExternalURL" /t REG_DWORD /d "1" /f >nul 2>&1
reg add "HKLM\SOFTWARE\Policies\Microsoft\PCHealth\ErrorReporting\DW" /v "DWNoFileCollection" /t REG_DWORD /d "1" /f >nul 2>&1
reg add "HKLM\SOFTWARE\Policies\Microsoft\PCHealth\ErrorReporting\DW" /v "DWNoSecondLevelCollection" /t REG_DWORD /d "1" /f >nul 2>&1
reg add "HKLM\SOFTWARE\Policies\Microsoft\PCHealth\ErrorReporting\DW" /v "DWReporteeName" /t REG_SZ /d "0" /f >nul 2>&1
reg add "HKLM\SOFTWARE\Microsoft\Windows\Windows Error Reporting\Consent" /v "DefaultConsent" /t REG_DWORD /d "0" /f >nul 2>&1
reg add "HKLM\SOFTWARE\Microsoft\Windows\Windows Error Reporting\Consent" /v "NewUserDefaultConsent" /t REG_DWORD /d "0" /f >nul 2>&1
reg add "HKLM\SOFTWARE\Microsoft\Windows\Windows Error Reporting\WMR" /v "Disable" /t REG_DWORD /d "1" /f >nul 2>&1
reg add "HKLM\SOFTWARE\Microsoft\Windows\Windows Error Reporting" /v "MachineID" /t REG_SZ /d "0" /f >nul 2>&1
reg add "HKCU\SOFTWARE\Microsoft\Windows\Windows Error Reporting" /v "AutoApproveOSDumps" /t REG_DWORD /d "0" /f >nul 2>&1
reg add "HKCU\SOFTWARE\Microsoft\Windows\Windows Error Reporting" /v "ConfigureArchive" /t REG_DWORD /d "0" /f >nul 2>&1
reg add "HKCU\SOFTWARE\Microsoft\Windows\Windows Error Reporting" /v "DisableArchive" /t REG_DWORD /d "1" /f >nul 2>&1
reg add "HKCU\SOFTWARE\Microsoft\Windows\Windows Error Reporting" /v "Disabled" /t REG_DWORD /d "1" /f >nul 2>&1
reg add "HKCU\SOFTWARE\Microsoft\Windows\Windows Error Reporting" /v "DontSendAdditionalData" /t REG_DWORD /d "1" /f >nul 2>&1
reg add "HKCU\SOFTWARE\Microsoft\Windows\Windows Error Reporting" /v "LoggingDisabled" /t REG_DWORD /d "1" /f >nul 2>&1
if defined _flag-w10red (
	set "_BlueDog_RegEReport_QuotedPath=^"HKU\!UserSID!\Software\Microsoft\Windows\Windows Error Reporting^""
	reg add !_BlueDog_RegEReport_QuotedPath! /v "AutoApproveOSDumps" /t REG_DWORD /d "0" /f >nul 2>&1
	reg add !_BlueDog_RegEReport_QuotedPath! /v "ConfigureArchive" /t REG_DWORD /d "0" /f >nul 2>&1
	reg add !_BlueDog_RegEReport_QuotedPath! /v "DisableArchive" /t REG_DWORD /d "1" /f >nul 2>&1
	reg add !_BlueDog_RegEReport_QuotedPath! /v "Disabled" /t REG_DWORD /d "1" /f >nul 2>&1
	reg add !_BlueDog_RegEReport_QuotedPath! /v "DontSendAdditionalData" /t REG_DWORD /d "1" /f >nul 2>&1
	reg add !_BlueDog_RegEReport_QuotedPath! /v "LoggingDisabled" /t REG_DWORD /d "1" /f >nul 2>&1
)	
rem App_Telemetry
if defined _flag-v echo  -- Disabling CEIP, SQMClient, UEV, AppCompat agents
reg add "HKLM\Software\Microsoft\Windows NT\CurrentVersion\AppCompatFlags\TelemetryController" /v "RunsBlocked" /t REG_DWORD /d "1" /f >nul 2>&1
reg add "HKLM\SOFTWARE\Policies\Microsoft\SQMClient\Windows" /v "CEIPEnable" /t REG_DWORD /d "0" /f >nul 2>&1
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\AppCompat" /v "AITEnable" /t REG_DWORD /d "0" /f >nul 2>&1
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\AppCompat" /v "DisableInventory" /t REG_DWORD /d "1" /f >nul 2>&1
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\AppCompat" /v "DisableUAR" /t REG_DWORD /d "1" /f >nul 2>&1
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\AppCompat" /v "DisablePCA" /t REG_DWORD /d "1" /f >nul 2>&1
reg add "HKLM\SOFTWARE\Microsoft\UEV\Agent" /v "Enabled" /t REG_DWORD /d "0" /f >nul 2>&1
reg add "HKLM\SOFTWARE\Microsoft\UEV\Agent\Configuration" /v "CustomerExperienceImprovementProgram" /t REG_DWORD /d "0" /f >nul 2>&1
reg add "HKLM\SOFTWARE\Microsoft\UEV\Agent\Configuration" /v "SyncEnabled" /t REG_DWORD /d "0" /f >nul 2>&1
reg add "HKLM\SOFTWARE\Policies\Microsoft\SQMClient\Windows" /v "CEIPEnable" /t REG_DWORD /d "0" /f >nul 2>&1
reg add HKLM\SOFTWARE\Microsoft\SQMClient /v "MachineID" /t REG_SZ /d "0" /f >nul 2>&1
if defined _flag-w10red (
	reg add HKU\!UserSID!\Software\Microsoft\Windows\SQMClient /v "UserId" /t REG_SZ /d "0" /f >nul 2>&1
	reg add HKU\!UserSID!\Software\Microsoft\SQMClient /v "UserId" /t REG_SZ /d "0" /f >nul 2>&1
)
rem PublishUserActivity
if defined _flag-v echo  -- Disabling user activity uploading
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\System" /v "PublishUserActivities" /t REG_DWORD /d "0" /f >nul 2>&1
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\System" /v "UploadUserActivities " /t REG_DWORD /d "0" /f >nul 2>&1
rem OneSpeech
if defined _flag-w10red4 (
	if defined _flag-v echo  -- Disabling OneSpeech background runtime
	reg add "HKCU\Software\Microsoft\Speech_OneCore\Settings\OnlineSpeechPrivacy" /v "HasAccepted" /t REG_DWORD /d "0" /f >nul 2>&1
	reg add "HKLM\Software\Policies\Microsoft\Speech" /v "AllowSpeechModelUpdate" /t REG_DWORD /d "0" /f >nul 2>&1
)
rem InputPredictionAI
if defined _flag-v echo  -- Disabling Insights/SwiftKey input text prediction
if defined _flag-w10red5 reg add "HKCU\Software\Microsoft\Input\Settings" /v "InsightsEnabled" /t REG_DWORD /d "0" /f >nul 2>&1
if defined _flag-w10red5 reg add "HKLM\Software\Microsoft\Input\Settings" /v "InsightsEnabled" /t REG_DWORD /d "0" /f >nul 2>&1
reg add "HKLM\Software\Microsoft\Input\Settings" /v "HarvestContacts" /t REG_DWORD /d "0" /f >nul 2>&1
reg add "HKLM\Software\Microsoft\Input\Settings" /v "LMDataLoggerEnabled" /t REG_DWORD /d "0" /f >nul 2>&1
if defined _flag-w10red5 (
	for /F "tokens=* usebackq delims=" %%a in (`reg query "HKLM\Software\Microsoft\Input\Locales" ^| findstr /ir ".*\\Locales\\loc.*"`) do (
		set _BlueDog_RegHKLM_IAT_FullPath=%%a
		set _BlueDog_RegHKLM_IAT_AddPathQuoted=
		if defined _BlueDog_RegHKLM_IAT_FullPath set "_BlueDog_RegHKLM_IAT_AddPathQuoted=^"!_BlueDog_RegHKLM_IAT_FullPath!^""
		if defined _BlueDog_RegHKLM_IAT_AddPathQuoted ( reg add !_BlueDog_RegHKLM_IAT_AddPathQuoted! /v "UseFluency" /t REG_DWORD /d "514" /f >nul 2>&1 )
	)
	for /F "tokens=* usebackq delims=" %%b in (`reg query "HKCU\Software\Microsoft\Input\Locales" ^| findstr /ir ".*\\Locales\\loc.*"`) do (
		set _BlueDog_RegHKCU_IAT_FullPath=%%b
		set _BlueDog_RegHKCU_IAT_AddPathQuoted=
		if defined _BlueDog_RegHKCU_IAT_FullPath set "_BlueDog_RegHKCU_IAT_AddPathQuoted=^"!_BlueDog_RegHKCU_IAT_FullPath!^""
		if defined _BlueDog_RegHKCU_IAT_AddPathQuoted ( reg add !_BlueDog_RegHKCU_IAT_AddPathQuoted! /v "UseFluency" /t REG_DWORD /d "514" /f >nul 2>&1 )
))
rem Office_Telemetry
if defined _flag-v echo  -- Disabling Office 15/16 logging/telemetry
reg add "HKCU\Software\Policies\Microsoft\Office\common\clienttelemetry" /v "sendtelemetry" /t REG_DWORD /d "3" /f >nul 2>&1
reg add "HKCU\Software\Policies\Microsoft\Office\15.0\osm" /v "enablelogging" /t REG_DWORD /d "0" /f >nul 2>&1
reg add "HKCU\Software\Policies\Microsoft\Office\15.0\osm" /v "enablefileobfuscation" /t REG_DWORD /d "1" /f >nul 2>&1
reg add "HKCU\Software\Policies\Microsoft\Office\15.0\osm" /v "enableupload" /t REG_DWORD /d "0" /f >nul 2>&1
reg add "HKCU\Software\Policies\Microsoft\Office\15.0\common\privacy" "downloadcontentdisabled" /t REG_DWORD /d "1" /f >nul 2>&1
reg add "HKCU\Software\Policies\Microsoft\Office\15.0\common\privacy" "controllerconnectedservicesenabled" /t REG_DWORD /d "2" /f >nul 2>&1
reg add "HKCU\Software\Policies\Microsoft\Office\15.0\common" "qmenable" /t REG_DWORD /d "0" /f >nul 2>&1
reg add "HKCU\Software\Policies\Microsoft\Office\15.0\common" "sendcustomerdata" /t REG_DWORD /d "0" /f >nul 2>&1
reg add "HKCU\Software\Policies\Microsoft\Office\16.0\osm" /v "enablelogging" /t REG_DWORD /d "0" /f >nul 2>&1
reg add "HKCU\Software\Policies\Microsoft\Office\16.0\osm" /v "enablefileobfuscation" /t REG_DWORD /d "1" /f >nul 2>&1
reg add "HKCU\Software\Policies\Microsoft\Office\16.0\osm" /v "enableupload" /t REG_DWORD /d "0" /f >nul 2>&1
reg add "HKCU\Software\Policies\Microsoft\Office\16.0\common\privacy" "downloadcontentdisabled" /t REG_DWORD /d "1" /f >nul 2>&1
reg add "HKCU\Software\Policies\Microsoft\Office\16.0\common\privacy" "controllerconnectedservicesenabled" /t REG_DWORD /d "2" /f >nul 2>&1
reg add "HKCU\Software\Policies\Microsoft\Office\16.0\common" "qmenable" /t REG_DWORD /d "0" /f >nul 2>&1
reg add "HKCU\Software\Policies\Microsoft\Office\16.0\common" "sendcustomerdata" /t REG_DWORD /d "0" /f >nul 2>&1
rem License_Check ----------------
rem if defined _flag-v echo  -- Preventing license check on startup
rem reg add "HKLM\Software\Policies\Microsoft\Windows NT\CurrentVersion\Software Protection Platform" /v "NoGenTicket" /t REG_DWORD /d "1" /f >nul 2>&1
rem ------------------------------
rem Personal_info
if defined _flag-v echo  -- Preventing personal information sharing
reg add "HKCU\SOFTWARE\Microsoft\Personalization\Settings" /v "AcceptedPrivacyPolicy" /t REG_DWORD /d "0" /f >nul 2>&1
rem Disable_Password_Reveal
if defined _flag-v echo  -- Preventing password sharing
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\CredUI" /v "DisablePasswordReveal" /t REG_DWORD /d "1" /f >nul 2>&1
rem Handwritting_Data_Sharing
if defined _flag-v echo  -- Preventing handwritting data collection
reg add "HKCU\SOFTWARE\Microsoft\InputPersonalization" /v "RestrictImplicitTextCollection" /t REG_DWORD /d "1" /f >nul 2>&1
reg add "HKLM\SOFTWARE\Microsoft\InputPersonalization" /v "RestrictImplicitTextCollection" /t REG_DWORD /d "1" /f >nul 2>&1
reg add "HKCU\SOFTWARE\Microsoft\InputPersonalization" /v "RestrictImplicitInkCollection" /t REG_DWORD /d "1" /f >nul 2>&1
reg add "HKLM\SOFTWARE\Microsoft\InputPersonalization" /v "RestrictImplicitInkCollection" /t REG_DWORD /d "1" /f >nul 2>&1
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\TabletPC" /v "PreventHandwritingDataSharing" /t REG_DWORD /d "1" /f >nul 2>&1
reg add "HKLM\SOFTWARE\Microsoft\Input\TIPC" /v "Enabled" /t REG_DWORD /d "0" /f >nul 2>&1
if defined _flag-w10red reg add HKU\!UserSID!\SOFTWARE\Microsoft\Input\TIPC /v "Enabled" /t REG_DWORD /d "0" /f >nul 2>&1
rem CloudServiceSync_disable
if defined _flag-v echo  -- Preventing Messaging Cloud-Syncing
reg add "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Messaging" /v "CloudServiceSyncEnabled" /t REG_DWORD /d "0" /f >nul 2>&1
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Messaging" /v "AllowMessageSync" /t REG_DWORD /d "0" /f >nul 2>&1
rem CloudConsumerFeatures
if defined _flag-v echo  -- Disabling Cloud Consumer/Experience Features
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\CloudContent" /v "DisableWindowsConsumerFeatures" /t REG_DWORD /d "1" /f >nul 2>&1
reg add "HKCU\SOFTWARE\Policies\Microsoft\Windows\CloudContent" /v "DisableWindowsConsumerFeatures" /t REG_DWORD /d "1" /f >nul 2>&1
reg add HKU\!UserSID!\SOFTWARE\Policies\Microsoft\Windows\CloudContent /v "DisableWindowsConsumerFeatures" /t REG_DWORD /d "1" /f >nul 2>&1
reg add "HKLM\Software\Policies\Microsoft\Windows\CloudContent" /v "DisableTailoredExperiencesWithDiagnosticData" /t REG_DWORD /d 1 /f >nul 2>&1
reg add "HKCU\Software\Policies\Microsoft\Windows\CloudContent" /v "DisableTailoredExperiencesWithDiagnosticData" /t REG_DWORD /d 1 /f >nul 2>&1
reg add HKU\!UserSID!\Software\Policies\Microsoft\Windows\CloudContent /v "DisableTailoredExperiencesWithDiagnosticData" /t REG_DWORD /d 1 /f >nul 2>&1
reg add "HKLM\Software\Policies\Microsoft\Windows\CloudContent" /v "DisableWindowsSpotlightFeatures" /t REG_DWORD /d 1 /f >nul 2>&1
reg add "HKCU\Software\Policies\Microsoft\Windows\CloudContent" /v "DisableWindowsSpotlightFeatures" /t REG_DWORD /d 1 /f >nul 2>&1
reg add HKU\!UserSID!\Software\Policies\Microsoft\Windows\CloudContent /v "DisableWindowsSpotlightFeatures" /t REG_DWORD /d 1 /f >nul 2>&1
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\CloudExperienceHost" /v "ETWLoggingEnabled" /t REG_DWORD /d "0" /f >nul 2>&1
reg add "HKLM\Software\Policies\Microsoft\Windows\CloudContent" /v "DisableCloudOptimizedContent" /t REG_DWORD /d 1 /f >nul 2>&1
reg add "HKCU\Software\Policies\Microsoft\Windows\CloudContent" /v "DisableCloudOptimizedContent" /t REG_DWORD /d 1 /f >nul 2>&1
reg add HKU\!UserSID!\Software\Policies\Microsoft\Windows\CloudContent /v "DisableCloudOptimizedContent" /t REG_DWORD /d 1 /f >nul 2>&1
rem Contacts_Sharing
if defined _flag-v echo  -- Preventing Contacts sharing
reg add "HKCU\SOFTWARE\Microsoft\InputPersonalization\TrainedDataStore" /v "HarvestContacts" /t REG_DWORD /d "0" /f >nul 2>&1
rem Location_Sensors
if defined _flag-v echo  -- Disabling geolocation / FindMyDevice syncing
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\LocationAndSensors" /v "DisableLocation" /t REG_DWORD /d "1" /f >nul 2>&1
if not defined _flag-t reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\LocationAndSensors" /v "DisableSensors" /t REG_DWORD /d "1" /f >nul 2>&1
reg add "HKLM\SOFTWARE\Microsoft\Settings\FindMyDevice" /v "LocationSyncEnabled" /t REG_DWORD /d "0" /f >nul 2>&1
reg add "HKLM\SYSTEM\ControlSet001\Control\Storage\EnabledDenyGP" /v "DenyAllGPState" /t REG_DWORD /d "1" /f >nul 2>&1
reg add "HKCU\Control Panel\International\User Profile" /v "HttpAcceptLanguageOptOut" /t REG_DWORD /d "1" /f >nul 2>&1
rem if defined _flag-w10red reg add HKU\%UserSID%\Control Panel\International\User Profile" /v "HttpAcceptLanguageOptOut" /t REG_DWORD /d "1" /f >nul 2>&1
rem ScriptedDiag_Provider
if defined _flag-v echo  -- Disabling Scheduled Diagnostics / remote Scripted Diagnostics Provider query
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\ScriptedDiagnosticsProvider\Policy" /v "DisableQueryRemoteServer" /t REG_DWORD /d "1" /f >nul 2>&1
rem ############# x32_flag ###############
call :GetRegAddForce "HKLM\Software\Microsoft\Windows\ScriptedDiagnosticsProvider\Policy" "EnableQueryRemoteServer" "REG_DWORD" "0"
rem ############# x32_flag ###############
rem reg add "HKLM\Software\Microsoft\Windows\ScriptedDiagnosticsProvider\Policy" /v "EnableQueryRemoteServer" /t REG_DWORD /d "0" /f >nul 2>&1
reg add "HKLM\SOFTWARE\Microsoft\Windows\ScheduledDiagnostics" /v "EnabledExecution" /t REG_DWORD /d "0" /f >nul 2>&1
rem reg add "HKLM\Software\Policies\Microsoft\Windows\ScriptedDiagnosticsProvider" /v "RemoteServer" /t REG_SZ /d \0 /f >nul 2>&1
rem OneDrive
if defined _flag-o (
	if defined _flag-v echo  - Skipping OneDrive Registry . . .
	goto BlueDog_Reg_SkipONEDRIVE
)
if defined _flag-v echo  -- Disabling OneDrive
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\OneDrive" /v "DisableFileSync" /t REG_DWORD /d "1" /f >nul 2>&1
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\OneDrive" /v "DisableFileSyncNGSC" /t REG_DWORD /d "1" /f >nul 2>&1
reg add "HKLM\SOFTWARE\Microsoft\OneDrive" /v "PreventNetworkTrafficPreUserSignIn" /t REG_DWORD /d "1" /f >nul 2>&1
reg delete "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Run" /v "OneDrive" /f >nul 2>&1
if defined _flag-w10red reg delete HKU\!UserSID!\SOFTWARE\Microsoft\Windows\CurrentVersion\Run /v "OneDrive" /f >nul 2>&1
if defined _flag-w10red reg add HKCU\SOFTWARE\Classes\CLSID\{018D5C66-4533-4307-9B53-224DE2ED1FE6} /v "System.IsPinnedToNameSpaceTree" /t REG_DWORD /d "0" /f >nul 2>&1
if defined _flag-w10red reg add HKU\!UserSID!_Classes\CLSID\{018D5C66-4533-4307-9B53-224DE2ED1FE6} /v "System.IsPinnedToNameSpaceTree" /t REG_DWORD /d "0" /f >nul 2>&1
reg add "HKEY_CLASSES_ROOT\CLSID\{018D5C66-4533-4307-9B53-224DE2ED1FE6}" /v "System.IsPinnedToNameSpaceTree" /t REG_DWORD /d "0" /f >nul 2>&1
if defined os64bit (
	reg add "HKEY_CLASSES_ROOT\Wow6432Node\CLSID\{018D5C66-4533-4307-9B53-224DE2ED1FE6}" /v "System.IsPinnedToNameSpaceTree" /t REG_DWORD /d "0" /f >nul 2>&1
	reg add HKCU\SOFTWARE\Classes\WOW6432Node\CLSID\{018D5C66-4533-4307-9B53-224DE2ED1FE6} /v "System.IsPinnedToNameSpaceTree" /t REG_DWORD /d "0" /f >nul 2>&1
	reg add HKU\!UserSID!_Classes\WOW6432Node\CLSID\{018D5C66-4533-4307-9B53-224DE2ED1FE6} /v "System.IsPinnedToNameSpaceTree" /t REG_DWORD /d "0" /f >nul 2>&1
)
:BlueDog_Reg_SkipONEDRIVE
rem Printer_location
if defined _flag-v echo  -- Clearing printer physical location data
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows NT\Printers" /v "PhysicalLocation" /t REG_SZ /d "anonymous" /f >nul 2>&1
rem Disable_Edge_Preload_Assistant
if defined _flag-v echo  -- Disabling EDGE browser preloading / ShoppingAssistant
reg add "HKLM\SOFTWARE\Policies\Microsoft\MicrosoftEdge\Main" /v "AllowPrelaunch" /t REG_DWORD /d "0" /f >nul 2>&1
reg add "HKLM\SOFTWARE\Policies\Microsoft\MicrosoftEdge\TabPreloader" /v "AllowTabPreloading" /t REG_DWORD /d "0" /f >nul 2>&1
reg add "HKLM\SOFTWARE\Policies\Microsoft\Edge" /v "EdgeShoppingAssistantEnabled" /t REG_DWORD /d "0" /f >nul 2>&1
rem Disable_Web_Content_Evaluation
if defined _flag-v echo  -- Disabling Web Content Evaluation (SmartScreen)
reg add "HKLM\Software\Microsoft\Windows\CurrentVersion\AppHost" /v "EnableWebContentEvaluation" /t REG_DWORD /d "0" /f >nul 2>&1
reg add "HKLM\Software\Microsoft\Windows\CurrentVersion\AppHost\Download" /v "CheckExeSignatures" /t REG_SZ /d "no" /f >nul 2>&1
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\AppHost" /v "EnableWebContentEvaluation" /t REG_DWORD /d "0" /f >nul 2>&1
if defined _flag-w10red reg add HKU\!UserSID!\SOFTWARE\Microsoft\Windows\CurrentVersion\AppHost /v "EnableWebContentEvaluation" /t REG_DWORD /d "0" /f >nul 2>&1
rem Sync_with_Devices
if defined _flag-v echo  -- Disabling cross-device synchronization
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\DeviceAccess\Global\LooselyCoupled" /v "Value" /t REG_SZ /d "Deny" /f >nul 2>&1
reg add HKU\!UserSID!\SOFTWARE\Microsoft\Windows\CurrentVersion\DeviceAccess\Global\LooselyCoupled /v "Value" /t REG_SZ /d "Deny" /f >nul 2>&1
rem GameDVR
if defined _flag-v echo  -- Disabling GameDVR
reg add "HKCU\System\GameConfigStore" /v "GameDVR_Enabled" /t REG_DWORD /d "0" /f >nul 2>&1
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\GameDVR" /v "AllowGameDVR" /t REG_DWORD /d "0" /f >nul 2>&1
rem WebSearch
if defined _flag-v echo  -- Disabling Bing WebSearch
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Search" /v "BingSearchEnabled" /t REG_DWORD /d "0" /f >nul 2>&1
reg add HKU\!UserSID!\SOFTWARE\Microsoft\Windows\CurrentVersion\Search /v "BingSearchEnabled" /t REG_DWORD /d "0" /f >nul 2>&1
rem WiFi_Sense
if defined _flag-v echo  -- Disabling Wi-Fi Sense
if defined _flag-w10red reg add "HKLM\SOFTWARE\Microsoft\DataCollection\Default\WifiAutoConnectConfig" /v "AutoConnectEnabled" /t REG_DWORD /d "0" /f >nul 2>&1
if defined _flag-w10red reg add "HKLM\SOFTWARE\Microsoft\WcmSvc\wifinetworkmanager\features" /v "WiFiSenseOpen" /t REG_DWORD /d "0" /f >nul 2>&1
if defined _flag-w10red reg add "HKLM\SOFTWARE\Microsoft\Wcmsvc\wifinetworkmanager" /v "WiFiSenseCredShared" /t REG_DWORD /d "0" /f >nul 2>&1
if defined _flag-w10red reg add "HKLM\SOFTWARE\Microsoft\WcmSvc\wifinetworkmanager\SocialNetworks\ABCH" /v "OptInStatus" /t REG_DWORD /d "0" /f >nul 2>&1
if defined _flag-w10red reg add "HKLM\SOFTWARE\Microsoft\WcmSvc\wifinetworkmanager\SocialNetworks\ABCH-SKYPE" /v "OptInStatus" /t REG_DWORD /d "0" /f >nul 2>&1
if defined _flag-w10red reg add "HKLM\SOFTWARE\Microsoft\WcmSvc\wifinetworkmanager\SocialNetworks\FACEBOOK" /v "OptInStatus" /t REG_DWORD /d "0" /f >nul 2>&1
if not defined _flag-w10red reg add "HKLM\SOFTWARE\Microsoft\Wcmsvc\wifinetworkmanager" /v "WiFiSenseCredShared" /t REG_DWORD /d "0" /f >nul 2>&1
if not defined _flag-w10red reg add "HKLM\SOFTWARE\Microsoft\Wcmsvc\wifinetworkmanager" /v "WiFiSenseOpen" /t REG_DWORD /d "0" /f >nul 2>&1
if not defined _flag-w10red reg add "HKLM\SOFTWARE\Microsoft\WcmSvc\wifinetworkmanager\config" /v "AutoConnectAllowedOEM" /t REG_DWORD /d "0" /f >nul 2>&1
if defined os64bit reg add HKLM\SOFTWARE\Wow6432Node\Microsoft\WcmSvc\wifinetworkmanager\features\!UserSID! /v "FeatureStates" /t REG_DWORD /d "828" /f >nul 2>&1
if not defined _flag-w10red reg add HKLM\SOFTWARE\Microsoft\WcmSvc\wifinetworkmanager\features\!UserSID!\SocialNetworks\ABCH /v "OptInStatus" /t REG_DWORD /d "0" /f >nul 2>&1
if not defined _flag-w10red reg add HKLM\SOFTWARE\Microsoft\WcmSvc\wifinetworkmanager\features\!UserSID!\SocialNetworks\ABCH-SKYPE /v "OptInStatus" /t REG_DWORD /d "0" /f >nul 2>&1
if not defined _flag-w10red reg add HKLM\SOFTWARE\Microsoft\WcmSvc\wifinetworkmanager\features\!UserSID!\SocialNetworks\FACEBOOK /v "OptInStatus" /t REG_DWORD /d "0" /f >nul 2>&1
reg add "HKCU\SOFTWARE\Microsoft\Siuf\Rules" /v "NumberOfSIUFInPeriod" /t REG_DWORD /d "0" /f >nul 2>&1
reg add "HKCU\SOFTWARE\Microsoft\Siuf\Rules" /v "PeriodInNanoSeconds" /t REG_DWORD /d "0" /f >nul 2>&1
if defined _flag-w10red reg add HKU\!UserSID!\SOFTWARE\Microsoft\Siuf\Rules /v "NumberOfSIUFInPeriod" /t REG_DWORD /d "0" /f >nul 2>&1
reg add "HKLM\SOFTWARE\Microsoft\PolicyManager\default\WiFi\AllowAutoConnectToWiFiSenseHotspots" /v "Value" /t REG_DWORD /d "0" /f >nul 2>&1
rem Media_DRM_Internet_Access
if defined _flag-v echo  -- Disabling Windows Media Online DRM
reg add "HKLM\SOFTWARE\Policies\Microsoft\WMDRM" /v "DisableOnline" /t REG_DWORD /d "1" /f >nul 2>&1
rem WindowsUpdate_P2P_Sharing
if defined _flag-v echo  -- Disabling P2P Windows Update sharing
if defined os64bit (
	reg add "HKLM\SOFTWARE\Wow6432Node\Microsoft\Windows\CurrentVersion\WindowsUpdate\Services\7971f918-a847-4430-9279-4a52d1efe18d" /v "RegisteredWithAU" /t REG_DWORD /d "0" /f >nul 2>&1
	reg add "HKLM\SOFTWARE\Wow6432Node\Microsoft\Windows\CurrentVersion\DeliveryOptimization\Config" /v "DODownloadMode" /t REG_DWORD /d "99" /f >nul 2>&1
	rem reg add "HKLM\SOFTWARE\Wow6432Node\Microsoft\Windows\CurrentVersion\DeliveryOptimization\Config" /v "DODownloadMode" /t REG_DWORD /d "0" /f >nul 2>&1
)
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\DeliveryOptimization\Config" /v "DODownloadMode" /t REG_DWORD /d "99" /f >nul 2>&1
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\DeliveryOptimization" /v "DODownloadMode" /t REG_DWORD /d "99" /f >nul 2>&1
if not defined _flag-w10red reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\DeliveryOptimization" /v "SystemSettingsDownloadMode" /t REG_DWORD /d "0" /f >nul 2>&1
if defined _flag-w10red reg add HKU\!UserSID!\SOFTWARE\Microsoft\Windows\CurrentVersion\DeliveryOptimization /v "SystemSettingsDownloadMode" /t REG_DWORD /d "0" /f >nul 2>&1
if defined _flag-w10red reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\DeliveryOptimization" /v "ClientTelId" /t REG_DWORD /d "0" /f >nul 2>&1
if defined _flag-w10red reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\DeliveryOptimization\Config" /v "UserOptedInOOBE" /t REG_DWORD /d "0" /f >nul 2>&1
rem WindowsUpdate_11
if defined _flag-w10 (
	if defined _flag-v echo  -- Disabling Windows 11 Upgrade
	reg add "HKLM\SOFTWARE\Microsoft\WindowsUpdate\UX\Settings" /v "SvDismissedState" /t REG_DWORD /d "1" /f >nul 2>&1
	reg add "HKLM\SOFTWARE\Microsoft\WindowsUpdate\UX\Settings" /v "SvOfferDeclined" /t REG_DWORD /d "1" /f >nul 2>&1
	reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate" /v "DisableOSUpgrade" /t REG_DWORD /d "1" /f >nul 2>&1
	reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate" /v "ProductVersion" /t REG_DWORD /d "10" /f >nul 2>&1
)
rem Peernet
if defined _flag-v echo  -- Disabling Peernet
reg add "HKLM\Software\Policies\Microsoft\Peernet" /v "Disabled" /t REG_DWORD /d "1" /f >nul 2>&1
reg add "HKLM\Software\Policies\Microsoft\Windows\BITS" /v "EnablePeercaching" /t REG_DWORD /d "0" /f >nul 2>&1
reg add "HKLM\Software\Policies\Microsoft\Windows\BITS" /v "DisablePeerCachingClient" /t REG_DWORD /d "1" /f >nul 2>&1
reg add "HKLM\Software\Policies\Microsoft\Windows\BITS" /v "DisablePeerCachingServer" /t REG_DWORD /d "1" /f >nul 2>&1
rem UnattendedSettings
if defined _flag-v echo  -- Disabling Unattended Settings - Error Reporting/CEIP
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\UnattendSettings\SQMClient" /v "CEIPEnabled" /t REG_DWORD /d "0" /f >nul 2>&1
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\UnattendSettings\Windows Error Reporting" /v "DisableWER" /t REG_DWORD /d "1" /f >nul 2>&1
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\UnattendSettings\Windows Error Reporting\Consent" /v "DefaultConsent" /t REG_DWORD /d "0" /f >nul 2>&1
rem Aria_Seville
if defined _flag-v echo  -- Disabling diagnostic tracking Tenants / Heartbeats
reg query !_BDog_KillAgentsRoot! | findstr /ir ".*\\DiagTrack\\Tenants.*" >nul && (
	reg query "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Diagnostics\DiagTrack\Tenants" | findstr /ir ".*\\DiagTrack\\Tenants\\P-ARIA.*" >nul && (
		for /F "tokens=* usebackq delims=" %%a in (`reg query "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Diagnostics\DiagTrack\Tenants\P-ARIA" ^| findstr /ir ".*\\DiagTrack\\Tenants\\P-ARIA\\.*"`) do (
			set "_BlueDog_RegARIATenants_FullPath=%%a"
			set "_BlueDog_RegARIATenants_CutPath=!_BlueDog_RegARIATenants_FullPath:HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Diagnostics\DiagTrack\Tenants\P-ARIA\=!"
			reg query !_BlueDog_RegARIATenants_FullPath! | findstr /i ".*enabled.*0x0" >nul || (
				if defined _flag-v ( <nul set /p =".!BS!  - Disabling !_BlueDog_RegARIATenants_CutPath!"&echo. )
				reg add HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Diagnostics\DiagTrack\Tenants\P-ARIA\!_BlueDog_RegARIATenants_CutPath! /v "Enabled" /t REG_DWORD /d "0" /f >nul 2>&1
			)
			reg query !_BDog_KillAgentsRoot!\TelemetryNamespaces | findstr /i ".*!_BlueDog_RegARIATenants_CutPath!.*">nul && (
				reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Diagnostics\DiagTrack\TelemetryNamespaces" /v !_BlueDog_RegARIATenants_CutPath! /f >nul 2>&1
))))
reg add !_BDog_KillAgentsRoot! /v "UploadEtlFileConsent" /t REG_DWORD /d "0" /f >nul 2>&1
reg add !_BDog_KillAgentsRoot! /v "DiagTrackAuthorization" /t REG_DWORD /d "0" /f >nul 2>&1
reg add !_BDog_KillAgentsRoot! /v "ConnectivityNoNetworkTime" /t REG_DWORD /d "1" /f >nul 2>&1
reg query !_BDog_KillAgentsRoot! | findstr /i ".*UploadPermissionReceived.*" >nul && (
	reg add !_BDog_KillAgentsRoot! /v "UploadPermissionReceived" /t REG_DWORD /d "0" /f >nul 2>&1
)
reg add !_BDog_KillAgentsRoot!\HeartBeats\Aria /v "EventDroppedUploader" /t REG_DWORD /d "0" /f >nul 2>&1
reg add !_BDog_KillAgentsRoot!\HeartBeats\Aria /v "SettingsHttpAttempts" /t REG_DWORD /d "0" /f >nul 2>&1
reg add !_BDog_KillAgentsRoot!\HeartBeats\Aria /v "VortexHttpAttempts" /t REG_DWORD /d "0" /f >nul 2>&1
reg add !_BDog_KillAgentsRoot!\HeartBeats\Aria /v "EventsUploaded" /t REG_DWORD /d "0" /f >nul 2>&1
reg add !_BDog_KillAgentsRoot!\HeartBeats\Default /v "EventDroppedConsumer" /t REG_BINARY /d "0" /f >nul 2>&1
reg add !_BDog_KillAgentsRoot!\HeartBeats\Default /v "EventDroppedUploader" /t REG_DWORD /d "0" /f >nul 2>&1
reg add !_BDog_KillAgentsRoot!\HeartBeats\Default /v "SettingsHttpAttempts" /t REG_DWORD /d "0" /f >nul 2>&1
reg add !_BDog_KillAgentsRoot!\HeartBeats\Default /v "VortexHttpAttempts" /t REG_DWORD /d "0" /f >nul 2>&1
reg add !_BDog_KillAgentsRoot!\HeartBeats\Default /v "EventsUploaded" /t REG_DWORD /d "0" /f >nul 2>&1
reg add !_BDog_KillAgentsRoot!\HeartBeats\Default /v "MaxActiveAgentConnections" /t REG_DWORD /d "0" /f >nul 2>&1
reg add !_BDog_KillAgentsRoot!\HeartBeats\Seville /v "EventDroppedConsumer" /t REG_BINARY /d "0" /f >nul 2>&1
reg add !_BDog_KillAgentsRoot!\HeartBeats\Seville /v "EventDroppedUploader" /t REG_DWORD /d "0" /f >nul 2>&1
reg add !_BDog_KillAgentsRoot!\HeartBeats\Seville /v "SettingsHttpAttempts" /t REG_DWORD /d "0" /f >nul 2>&1
reg add !_BDog_KillAgentsRoot!\HeartBeats\Seville /v "VortexHttpAttempts" /t REG_DWORD /d "0" /f >nul 2>&1
reg add !_BDog_KillAgentsRoot!\HeartBeats\Seville /v "EventsUploaded" /t REG_DWORD /d "0" /f >nul 2>&1
reg add !_BDog_KillAgentsRoot!\TraceManager /v "MiniTraceSlotEnabled" /t REG_DWORD /d "0" /f >nul 2>&1
reg add !_BDog_KillAgentsRoot!\TraceManager /v "aotStartTime" /t REG_BINARY /d "0" /f >nul 2>&1
reg add !_BDog_KillAgentsRoot!\TraceManager /v "aotSessionStartTime" /t REG_BINARY /d "0" /f >nul 2>&1
reg add !_BDog_KillAgentsRoot!\TraceManager /v "miniTraceStartTime" /t REG_BINARY /d "0" /f >nul 2>&1
reg add !_BDog_KillAgentsRoot!\TraceManager /v "miniTraceSessionStartTime" /t REG_BINARY /d "0" /f >nul 2>&1
reg add !_BDog_KillAgentsRoot!\SettingsRequests /v "LastTelSettingsRingName" /t REG_SZ /d "0" /f >nul 2>&1
reg add !_BDog_KillAgentsRoot!\SettingsRequests /v "LastTelSettingsRingId" /t REG_DWORD /d "0" /f >nul 2>&1
:BlueDog_Reg_SkipWIN10
if not defined _flag-v (
	call :drawProgressBar 26 "Checking registry"
	for /l %%f in (26 1 30) do ( call :drawProgressBar %%f )
)
if defined _flag-v echo  -- Checking diagnostic SettingsRequest agents . . .
if not defined _flag-w10 (
	reg add !_BDog_KillAgentsRoot! /v "DiagTrackAuthorization" /t REG_DWORD /d "0" /f >nul 2>&1
	reg add !_BDog_KillAgentsRoot! /v "ConnectivityNoNetworkTime" /t REG_DWORD /d "1" /f >nul 2>&1
	reg query !_BDog_KillAgentsRoot! | findstr /i /c:" UploadPermissionReceived " >nul && (
		reg add !_BDog_KillAgentsRoot! /v "UploadPermissionReceived" /t REG_DWORD /d "0" /f >nul 2>&1
))
for /F "tokens=* usebackq delims=" %%a in (`reg query "HKLM\Software\Microsoft\Windows\CurrentVersion\Diagnostics\DiagTrack\SettingsRequests" ^| findstr /ir ".*\\DiagTrack\\SettingsRequests\\.*"`) do (
	set _BlueDog_RegDSR_FullPath=%%a
	rem set _BlueDog_RegDSR_CutPath=
	set "_BlueDog_RegDSR_CutPath=!_BlueDog_RegDSR_FullPath:HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\Diagnostics\DiagTrack\SettingsRequests\=!"
	if defined _flag-v echo   - Disabling !_BlueDog_RegDSR_CutPath!
	set _BlueDog_RegDSR_AddPathQuoted=
	set "_BlueDog_RegDSR_AddPathQuoted=^"!_BlueDog_RegDSR_FullPath!^""
	reg add !_BlueDog_RegDSR_AddPathQuoted! /v "SettingsType" /t REG_DWORD /d "0" /f >nul 2>&1
	reg add !_BlueDog_RegDSR_AddPathQuoted! /v "SettingsPriority" /t REG_DWORD /d "0" /f >nul 2>&1
	reg add !_BlueDog_RegDSR_AddPathQuoted! /v "SettingsRegistrationType" /t REG_DWORD /d "0" /f >nul 2>&1
	reg add !_BlueDog_RegDSR_AddPathQuoted! /v "ETag" /t REG_SZ /d "0" /f >nul 2>&1
	reg add !_BlueDog_RegDSR_AddPathQuoted! /v "ETagQueryParameters" /t REG_SZ /d "0" /f >nul 2>&1
	reg add !_BlueDog_RegDSR_AddPathQuoted! /v "RefreshInterval" /t REG_DWORD /d "0" /f >nul 2>&1
	reg add !_BlueDog_RegDSR_AddPathQuoted! /v "DownloadScheduled" /t REG_DWORD /d "0" /f >nul 2>&1
)
rem  ### Kill All Autologgers ###
if not defined _flag-v (
	call :drawProgressBar 31 "Disabling Autologgers"
	for /l %%f in (31 1 34) do ( call :drawProgressBar %%f ) 
)
:BlueDog_Autologgers
if defined _flag-v echo  -- Disabling all system Autologgers . . .
if not defined _flag-v goto BlueDog_SkipVerboseAutologgers
set "_AUTOLOG_TemplateExceptions=ReadyBoot EventLog- Status"
for /F "tokens=* usebackq delims=" %%a in (`reg query "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger" ^| findstr /v "!_AUTOLOG_TemplateExceptions!" ^| findstr /irc:".*\\WMI\\Autologger\\.*"`) do (
	set _BlueDog_AutologDISABLE_FullPath=%%a
	set "_BlueDog_AutologDISABLE_FullPathQuoted=^"!_BlueDog_AutologDISABLE_FullPath!^""
	set "_BlueDog_AutologDISABLE_Verbose=!_BlueDog_AutologDISABLE_FullPath:HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\WMI\Autologger\=!"
	reg query !_BlueDog_AutologDISABLE_FullPathQuoted! | findstr /i ".*start.*0x0" >nul && (
		<nul set /p =".!BS!  - "&call :GUI 0f "!_BlueDog_AutologDISABLE_Verbose! "
		<nul set /p ="already disabled."&echo.
))
:BlueDog_SkipVerboseAutologgers
for /F "tokens=* usebackq delims=" %%A in (`reg query "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger" ^| findstr /v "!_AUTOLOG_TemplateExceptions!" ^| findstr /irc:".*\\WMI\\Autologger\\.*"`) do (
	set "_BlueDog_AutologQUERY=%%A"
	set "_BlueDog_AutologQuotedQUERY=^"!_BlueDog_AutologQUERY!^""
	set "_BlueDog_AutologVerboseOut=!_BlueDog_AutologQUERY:HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\WMI\Autologger\=!"
	reg query !_BlueDog_AutologQuotedQUERY! | findstr /i " start.*0x1" >nul && (
		if not defined AUTOLOGGERS_IAI if defined _flag-v echo.
		if defined _flag-v (
			<nul set /p =".!BS! " &set "AUTOLOGGERS_IAI=true"
			call :GUI !_BC_B!!_BC_D! " > " &call :GUI 07 " Detected active autologger: " &call :GUI 0E "!_BlueDog_AutologVerboseOut!" /n
		)
		reg add !_BlueDog_AutologQuotedQUERY! /v "Start" /t REG_DWORD /d "0" /f >nul 2>&1
		rem ############# x32_flag ###############
		reg query !_BlueDog_AutologQuotedQUERY! /v "Start" | find "0x1">nul && (
			call :GetRegAddForce "!_BlueDog_AutologQUERY!" "Start" "REG_DWORD" "0"
		)
		rem ############# x32_flag ###############
		if defined _flag-v (
			reg query !_BlueDog_AutologQuotedQUERY! /v "Start" | find "0x1">nul && set _BlueDog_AutologFailed=true
			reg query !_BlueDog_AutologQuotedQUERY! /v "Start" | find "0x0">nul && set _BlueDog_AutologSuccess=true
			if defined _BlueDog_AutologSuccess (
				<nul set /p =".!BS! "&call :GUI !_BC_A!!_BC_C! " - "&call :GUI 0f " Successfully disabled." /n
				set _BlueDog_AutologSuccess=
			)
			if defined _BlueDog_AutologFailed (
				<nul set /p =".!BS! "&call :GUI !_BC_B!!_BC_D! " X "&call :GUI 0f " Failed to disable." /n
				set _BlueDog_AutologFailed=
			)
			echo.
		)
	) || (
		reg add !_BlueDog_AutologQuotedQUERY! /v "Start" /t REG_DWORD /d "0" /f >nul 2>&1
))
if defined AUTOLOGGERS_IAI goto YellowDog
if defined _flag-v (
	<nul set /p =".!BS! " &call :GUI !_BC_A!!_BC_C! " -" &call :GUI 0f " Autologgers are clean." /n
	echo.
)

:YellowDog
if defined _flag-reg (
	set "_flag-reg=" &set "_BirdRuntimeFlag="
	if defined _BirdRuntimeMultiFlags set "_BirdRuntimeConfig=!_BirdRuntimeConfig:_REG =!"
	goto SwitchFunctionTable
)
if not defined _flag-v (
	call :drawProgressBar 35 "Checking security"
	for /l %%f in (35 1 39) do ( call :drawProgressBar %%f )
)
if defined _flag-v ( echo. &call :GUI 0f " [" &call :GUI !_BC_G!!_BC_I! " Checking additional security settings " &call :GUI 0f "]" /n )
set "_YDog_DIAGRootPath=!ALLUSERSPROFILE!\Microsoft" &set "_YDog_PermSearchConfig=.*SYSTEM\:(OI)(CI)(IO)(N)"
:YellowDog_DiagnosisFolderCheck
attrib -s -h -r /S /D "!_YDog_DIAGRootPath!\Diagnosis" >nul 2>&1
if not exist "!_YDog_DIAGRootPath!\Diagnosis\" goto YellowDog_WSUSProxy
if defined _flag-v <nul set /p =".!BS! -- Checking Diagnosis folder permissions........."
icacls "!_YDog_DIAGRootPath!\Diagnosis" | findstr /irc:"!_YDog_PermSearchConfig!">nul && (
	if defined _flag-v ( call :GUI 0f "["&call :GUI !_BC_A!!_BC_C! " Secure "&call :GUI 0f "]" /n )
	goto YellowDog_WSUSProxy
)
if defined _flag-v (
	call :GUI 0f "["&call :GUI !_BC_B!!_BC_D! " Not secure "&call :GUI 0f "]" /n
	<nul set /p =".!BS!  - Attempting to secure.........................."
)
:YellowDog_DiagnosisFolderExec
if defined _flag-w10 ( if defined osHome (tskill backgroundTaskHost /a >nul 2>&1) else (taskkill /F /IM backgroundTaskHost.exe >nul 2>&1) )
takeown /f "!_YDog_DIAGRootPath!\Diagnosis" /a /r /d y >nul 2>&1
icacls "!_YDog_DIAGRootPath!\Diagnosis" /grant:r *S-1-5-32-544:f /T /C /Q >nul 2>&1
icacls "!_YDog_DIAGRootPath!\Diagnosis" /remove:g SYSTEM /inheritance:r /deny "SYSTEM:(OI)(CI)(IO)(F)" /C /Q >nul 2>&1
if exist "!_YDog_DIAGRootPath!\Diagnosis\AsimovUploader\" (icacls "!_YDog_DIAGRootPath!\Diagnosis\AsimovUploader" /remove:g SYSTEM /inheritance:r /deny "SYSTEM:(OI)(CI)(IO)(F)" /C /Q >nul 2>&1)
if exist "!_YDog_DIAGRootPath!\Diagnosis\ETLLogs\" (icacls "!_YDog_DIAGRootPath!\Diagnosis\ETLLogs" /remove:g SYSTEM /inheritance:r /deny "SYSTEM:(OI)(CI)(IO)(F)" /T /C /Q >nul 2>&1)
if exist "!_YDog_DIAGRootPath!\Diagnosis\LocalTraceStore\" (icacls "!_YDog_DIAGRootPath!\Diagnosis\LocalTraceStore" /remove:g SYSTEM /inheritance:r /deny "SYSTEM:(OI)(CI)(IO)(F)" /C /Q >nul 2>&1)
if exist "!_YDog_DIAGRootPath!\Diagnosis\Sideload\" (icacls "!_YDog_DIAGRootPath!\Diagnosis\Sideload" /remove:g SYSTEM /inheritance:r /deny "SYSTEM:(OI)(CI)(IO)(F)" /C /Q >nul 2>&1)
if defined _flag-v (
	icacls "!_YDog_DIAGRootPath!\Diagnosis" | findstr /irc:"!_YDog_PermSearchConfig!">nul && (
		call :GUI 0f "["&call :GUI !_BC_A!!_BC_C! " Success "&call :GUI 0f "]" /n
		goto YellowDog_WSUSProxy
	)
	call :GUI 0f "["&call :GUI !_BC_B!!_BC_D! " Failed "&call :GUI 0f "]" /n
	call :ERROR_FileOpsFail "!_YDog_DIAGRootPath!\Diagnosis"
)
:YellowDog_WSUSProxy
if defined _flag-w10 goto YellowDog_LocalDataClearing
if defined _flag-v <nul set /p =".!BS! -- Checking WSUS policy.........................."
reg query HKLM\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate | findstr /i "WUServer WUStatusServer ElevateNonAdmins">nul || (
	if defined _flag-v (call :GUI 0f "["&call :GUI !_BC_A!!_BC_C! " Secure "&call :GUI 0f "]" /n)
	goto YellowDog_LocalDataClearing
)
reg query HKLM\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate | findstr /i "WUServer WUStatusServer ElevateNonAdmins">nul && (
	if defined _flag-v (call :GUI 0f "["&call :GUI !_BC_B!!_BC_D! " Not secure "&call :GUI 0f "]" /n)
	reg query HKLM\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate | findstr /i "WUServer">nul && (
		For /F "usebackq tokens=3" %%R In (`reg query HKLM\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate /v WUServer ^| find /i "WUServer"`) Do (
			set "_YellowDog-WUServer=%%R"
			if defined _flag-v call :GUI 0f "  - Unknown Windows Update proxy detected: !_YellowDog-WUServer!" /n
	))
	reg query HKLM\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate | findstr /i "WUStatusServer">nul && (
		For /F "usebackq tokens=3" %%R In (`reg query HKLM\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate /v WUStatusServer ^| find /i "WUStatusServer"`) Do (
			set "_YellowDog-WUStatusServer=%%R"
			if defined _flag-v call :GUI 0f "  - Unknown Windows Update Status server detected: !_YellowDog-WUStatusServer!" /n
	))
	reg query HKLM\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate | findstr /i "ElevateNonAdmins">nul && (
		reg query HKLM\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate /v ElevateNonAdmins | findstr /i "0x1">nul && set _YDogWSUS_ElevateNonAdminsON=true
		if defined _YDogWSUS_ElevateNonAdminsON (
			if defined _flag-v call :GUI 0f "  - Non-Admin elevation is enabled." /n
)))
:YellowDog_LocalDataClearing
if not defined _flag-v (
	call :drawProgressBar 39 "Checking security"
	for /l %%f in (39 1 43) do ( call :drawProgressBar %%f ) 
)
if defined _flag-v <nul set /p =".!BS! -- Checking for keylogging data.................."
if exist "!systemroot!\system32\MicTray64.exe" (set "YDogKLD_IAI=true" &set "YDogKLD_IAI_Mictray64Exe=true" &set "YDogKLD_IAI_HPConexantAudioDRV=true")
if exist "!systemroot!\system32\MicTray.exe" (set "YDogKLD_IAI=true" &set "YDogKLD_IAI_MictrayExe=true" &set "YDogKLD_IAI_HPConexantAudioDRV=true")
if exist "!public!\MicTray.log" (set "YDogKLD_IAI=true" &set "YDogKLD_IAI_MictrayLog=true" &set "YDogKLD_IAI_HPConexantAudioDRV=true")
if exist "!_YDog_DIAGRootPath!\Diagnosis\ETLLogs\Autologger\Autologger-Diagtrack-Listener.etl" (set "YDogKLD_IAI=true" &set "YDogKLD_IAI_MSDiagListenerEtl=true")
if defined _flag-v if defined YDogKLD_IAI ( call :GUI 0f "["&call :GUI !_BC_B!!_BC_D! " Found "&call :GUI 0f "]" /n )
if defined YDogKLD_IAI_MSDiagListenerEtl (
	if defined _flag-v ( <nul set /p =".!BS!  - Removing DiagTrack Listener data.............." )
	del /F /Q /S "!_YDog_DIAGRootPath!\Diagnosis\ETLLogs\Autologger\Autologger-Diagtrack-Listener.etl" >nul 2>&1
	if defined _flag-v (
		if not exist "!_YDog_DIAGRootPath!\Diagnosis\ETLLogs\Autologger\Autologger-Diagtrack-Listener.etl" (call :GUI 0f "[" &call :GUI !_BC_A!!_BC_C! " Success " &call :GUI 0f "]" /n) else (call :GUI 0f "[" &call :GUI !_BC_B!!_BC_D! " Failed " &call :GUI 0f "]" /n)
))
if defined YDogKLD_IAI_HPConexantAudioDRV (
	if defined _flag-v ( <nul set /p =".!BS!  - Removing HP/Conexant Audio Driver keylogger..." &echo. )
	if defined osHome (
		tskill MicTray64 /a >nul 2>&1
		tskill MicTray /a >nul 2>&1
	) else (
		taskkill /F /IM MicTray64.exe >nul 2>&1
		taskkill /F /IM MicTray.exe >nul 2>&1
	)
	if defined YDogKLD_IAI_Mictray64Exe del /F /Q /S "!systemroot!\system32\MicTray64.exe" >nul 2>&1
	if defined YDogKLD_IAI_MictrayExe del /F /Q /S "!systemroot!\system32\MicTray.exe" >nul 2>&1
	if defined YDogKLD_IAI_MictrayLog del /F /Q /S "!public!\MicTray.log" >nul 2>&1
)
if not defined YDogKLD_IAI (
	if defined _flag-v ( call :GUI 0f "["&call :GUI !_BC_A!!_BC_C! " Not found "&call :GUI 0f "]" /n )
	goto YellowDog_SUPERFISH
	REM goto YellowDog_DisableMSHTA
)
rem ###--  IN TESTING  --###
goto YellowDog_SUPERFISH
:YellowDog_DisableMSHTA
if not defined _flag-v (
	call :drawProgressBar 44 "Checking MSHTA security"
	for /l %%f in (44 1 48) do ( call :drawProgressBar %%f ) 
)
if defined _flag-v <nul set /p =".!BS! -- Checking for MSHTA elevation vulnerability...."
set "YDogMSHTA_IAI=" &set "YDogMSHTA32_IAI=" &set "YDogMSHTA64_IAI="
if exist "!systemroot!\System32\mshta.exe" ( set "YDogMSHTA_IAI=true" &set "YDogMSHTA32_IAI=true" )
if exist "!systemroot!\SysWOW64\mshta.exe" icacls "!systemroot!\SysWOW64\mshta.exe" | findstr /irc:".*Administrators\:.*(F)\>" >nul && ( set "YDogMSHTA_IAI=true" &set "YDogMSHTA64_IAI=true" )
if not defined YDogMSHTA_IAI (
	if defined _flag-v ( call :GUI 0f "["&call :GUI !_BC_A!!_BC_C! " Not found "&call :GUI 0f "]" /n )
	goto YellowDog_SUPERFISH
)
if defined _flag-v (
	call :GUI 0f "["&call :GUI !_BC_B!!_BC_D! " Found "&call :GUI 0f "]" /n
	<nul set /p =".!BS!  - Attempting to secure.........................."
)
if not defined osHome (taskkill /F /IM mshta.exe >nul 2>&1) else (tskill mshta /a >nul 2>&1)
if defined YDogMSHTA32_IAI (
	takeown /f "!systemroot!\System32\mshta.exe" >nul 2>&1
	icacls "!systemroot!\System32\mshta.exe" /grant:r *S-1-5-32-544:F /C /Q >nul 2>&1
	if exist "!systemroot!\System32\mshta.exe.!_BakString!" del /F /Q /S "!systemroot!\System32\mshta.exe.!_BakString!" >nul 2>&1
	rem ren "!systemroot!\System32\mshta.exe" "mshta.exe.!_BakString!" >nul 2>&1
	set YDogMSHTA_IAI=
	if exist "!systemroot!\System32\mshta.exe.!_BakString!" (
		icacls "!systemroot!\System32\mshta.exe.!_BakString!" /grant:r *S-1-5-32-544:R /C /Q >nul 2>&1
		icacls "!systemroot!\System32\mshta.exe.!_BakString!" /grant:r *S-1-5-32-545:R /C /Q >nul 2>&1
	)
	if exist "!systemroot!\System32\mshta.exe" set "YDogMSHTA_IAI=true"
)
if defined YDogMSHTA64_IAI (
	rem icacls "!systemroot!\SysWOW64\mshta.exe" | findstr /irc:"!_YDog_MSHTASearchConfig!" >nul || (
	takeown /f "!systemroot!\SysWOW64\mshta.exe" >nul 2>&1
	icacls "!systemroot!\SysWOW64\mshta.exe.!_BakString!" /grant:r *S-1-5-32-545:R /C /Q >nul 2>&1
	icacls "!systemroot!\SysWOW64\mshta.exe.!_BakString!" /grant:r *S-1-5-32-544:R /C /Q >nul 2>&1
	rem icacls !systemroot!\SysWOW64\mshta.exe /setowner *S-1-5-32-544 >nul 2>&1
	rem XCACLS !systemroot!\SysWOW64\mshta.exe /E /G *S-1-5-32-544:f /C >nul 2>&1
	rem icacls "!systemroot!\SysWOW64\mshta.exe" /grant:r *S-1-5-32-544:F /C /Q >nul 2>&1
	rem icacls !systemroot!\SysWOW64\mshta.exe /grant !username!:F /C /Q >nul 2>&1
	rem )
	rem if exist "!systemroot!\SysWOW64\mshta.exe.!_BakString!" del /F /Q /S "!systemroot!\SysWOW64\mshta.exe.!_BakString!" >nul 2>&1
	rem ren "!systemroot!\SysWOW64\mshta.exe" "mshta.exe.!_BakString!" >nul 2>&1
	set YDogMSHTA_IAI=
	icacls "!systemroot!\SysWOW64\mshta.exe" | findstr /irc:".*Administrators\:.*(F)\>" >nul && ( set "YDogMSHTA_IAI=true" )
	rem if exist "!systemroot!\SysWOW64\mshta.exe" set "YDogMSHTA_IAI=true"
)
if defined _flag-v (
	if not defined YDogMSHTA_IAI (
		call :GUI 0f "["&call :GUI !_BC_A!!_BC_C! " Success "&call :GUI 0f "]" /n
		goto YellowDog_SUPERFISH
	)
	call :GUI 0f "["&call :GUI !_BC_B!!_BC_D! " Failed "&call :GUI 0f "]" /n
)
rem ###--  IN TESTING  --###
:YellowDog_SUPERFISH
if not defined _flag-v (
	call :drawProgressBar 48 "Checking for Superfish"
	for /l %%f in (48 1 51) do ( call :drawProgressBar %%f ) 
)
if defined _flag-v <nul set /p =".!BS! -- Searching for Superfish vectors..............."
certutil -store root | findstr /i "superfish">nul && (
	set SUPERFISH_IAI=true
	if defined _flag-v echo   - Found "Superfish, Inc." Trusted Root certificate
	certutil -delstore root "Superfish, Inc." >nul 2>&1
)
certutil -store ca | findstr /i "superfish">nul && (
	set SUPERFISH_IAI=true
	if defined _flag-v echo   - Found "Superfish, Inc." Trusted CA certificate
	certutil -delstore ca "Superfish, Inc." >nul 2>&1
)
certutil -store spc | findstr /i "superfish">nul && (
	set SUPERFISH_IAI=true
	if defined _flag-v echo   - Found "Superfish, Inc." Trusted SP certificate
	certutil -delstore spc "Superfish, Inc." >nul 2>&1
)
certutil -store root | findstr /i "edellroot">nul && (
	set SUPERFISH_IAI=true
	if defined _flag-v echo   - Found "eDellRoot" Trusted Root certificate
	certutil -delstore root "eDellRoot" >nul 2>&1
)
certutil -store ca | findstr /i "edellroot">nul && (
	set SUPERFISH_IAI=true
	if defined _flag-v echo   - Found "eDellRoot" Trusted CA certificate
	certutil -delstore ca "eDellRoot" >nul 2>&1
)
certutil -store spc | findstr /i "edellroot">nul && (
	set SUPERFISH_IAI=true
	if defined _flag-v echo   - Found "eDellRoot" Trusted SP certificate
	certutil -delstore spc "eDellRoot" >nul 2>&1
)
if exist "!systemroot!\SysWOW64\VisualDiscovery.ini" (set "SUPERFISH_IAI=true" & del /F /Q "!systemroot!\SysWOW64\VisualDiscovery.ini" >nul 2>&1)
if exist "!systemroot!\SysWOW64\VisualDiscoveryOff.ini" (set "SUPERFISH_IAI=true" & del /F /Q "!systemroot!\SysWOW64\VisualDiscoveryOff.ini" >nul 2>&1)
if exist "!systemroot!\System32\VisualDiscoveryOff.ini" (set "SUPERFISH_IAI=true" & del /F /Q "!systemroot!\System32\VisualDiscoveryOff.ini" >nul 2>&1)
if exist "!systemroot!\System32\VDWFP.sys" (set "SUPERFISH_IAI=true" & del /F /Q "!systemroot!\System32\VDWFP.sys" >nul 2>&1)
if exist "!systemroot!\System32\VDWFP64.sys" (set "SUPERFISH_IAI=true" & del /F /Q "!systemroot!\System32\VDWFP64.sys" >nul 2>&1)
if exist "!systemroot!\SysWOW64\DWFP.sys" (set "SUPERFISH_IAI=true" & del /F /Q %systemroot%\SysWOW64\DWFP.sys >nul 2>&1)
if exist "!systemroot!\SysWOW64\DWFP64.sys" (set "SUPERFISH_IAI=true" & del /F /Q "!systemroot!\SysWOW64\DWFP64.sys" >nul 2>&1)
if exist "!temp!\VisualDiscoveryr.log" (set "SUPERFISH_IAI=true" & del /F /Q "!temp!\VisualDiscoveryr.log" >nul 2>&1)
reg query "HKLM\SOFTWARE" | findstr /ir ".*\\SOFTWARE\\VisualDiscovery$">nul && (
	reg delete "HKLM\SOFTWARE\VisualDiscovery" /f >nul 2>&1
)
if defined os64bit (
	reg query "HKLM\SOFTWARE\Wow6432Node" | findstr /ir ".*\\Wow6432Node\\VisualDiscovery$">nul && (
		reg delete "HKLM\SOFTWARE\Wow6432Node\VisualDiscovery" /f >nul 2>&1
))
if defined _flag-v (
	if defined SUPERFISH_IAI ( call :GUI 0f "["&call :GUI !_BC_B!!_BC_D! " Not secure "&call :GUI 0f "]" /n ) else ( call :GUI 0f "["&call :GUI !_BC_A!!_BC_C! " Not found "&call :GUI 0f "]" /n )
)
if defined _flag-w10 goto RedPanda
if not defined _flag-v (
	call :drawProgressBar 52 "Checking for WGA / GWX"
	for /l %%f in (52 1 55) do ( call :drawProgressBar %%f ) 
)
:YellowDog_WGA
if defined _flag-v <nul set /p =".!BS! -- Searching for WGA............................."
if not exist "!systemroot!\system32\WgaLogon.dll" (
	if defined _flag-v (call :GUI 0f "["&call :GUI !_BC_A!!_BC_C! " Not found "&call :GUI 0f "]" /n)
	goto YellowDog_GWX
)
if defined _flag-v (call :GUI 0f "["&call :GUI !_BC_B!!_BC_D! " Found "&call :GUI 0f "]" /n)
if defined _flag-v <nul set /p =".!BS!  - Removing WGA.................................."
if exist "!systemroot!\system32\WgaLogon.dll.bak" goto YellowDog_WGAstep2
:YellowDog_WGAstep1
tasklist | find /i "wgatray.exe" >nul || goto YellowDog_WGASkipTrayKill
if not defined osHome (taskkill /F /IM wgatray.exe >nul 2>&1) else (tskill wgatray /a >nul 2>&1)
:YellowDog_WGASkipTrayKill
rename "!systemroot!\system32\WgaLogon.dll" WgaLogon.dll.bak >nul 2>&1
rename "!systemroot!\system32\WgaTray.exe" WgaTray.exe.bak >nul 2>&1
:YellowDog_WGAstep2
regsvr32 !systemroot!\system32\LegitCheckControl.dll /u /s >nul 2>&1
del /F /Q /S "!systemroot!\system32\WgaLogon.dll.bak" >nul 2>&1
del /F /Q /S "!systemroot!\system32\WgaTray.exe.bak" >nul 2>&1
del /F /Q /S "!systemroot!\system32\LegitCheckControl.dll" >nul 2>&1
reg delete "HKLM\SOFTWARE\Microsoft\WindowsNT\CurrentVersion\Winlogon\Notify\WgaLogon" /f >nul 2>&1
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\WgaNotify" /f >nul 2>&1
if not exist "!systemroot!\system32\WgaLogon.dll" (
	if defined _flag-v (call :GUI 0f "["&call :GUI !_BC_A!!_BC_C! " Success "&call :GUI 0f "]" /n)
) else (
	if defined _flag-v (call :GUI 0f "["&call :GUI !_BC_B!!_BC_D! " Failed "&call :GUI 0f "]" /n)
)
:YellowDog_GWX
if defined _flag-v <nul set /p =".!BS! -- Searching for GWX............................."
tasklist | find /i "gwx.exe" >nul || (
	if defined _flag-v (call :GUI 0f "["&call :GUI !_BC_A!!_BC_C! " Not found "&call :GUI 0f "]" /n)
	goto RedPanda
)
if defined _flag-v (
	call :GUI 0f "["&call :GUI !_BC_B!!_BC_D! " Found "&call :GUI 0f "]" /n
	<nul set /p =".!BS!  - Removing GWX.................................."
)
if not defined osHome (taskkill /F /IM GWX.exe >nul 2>&1) else (tskill GWX /a >nul 2>&1)
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Gwx" /v "DisableGwx" /t REG_DWORD /d "1" /f >nul 2>&1
if defined _flag-v (
	reg query "HKLM\SOFTWARE\Policies\Microsoft\Windows\Gwx" /v "DisableGwx" | find "0x1">nul && (call :GUI 0f "["&call :GUI !_BC_A!!_BC_C! " Success "&call :GUI 0f "]" /n) 
	reg query "HKLM\SOFTWARE\Policies\Microsoft\Windows\Gwx" /v "DisableGwx" | find "0x1">nul || (call :GUI 0f "["&call :GUI !_BC_B!!_BC_D! " Failed "&call :GUI 0f "]" /n)
)

:RedPanda
if defined _flag-nohost goto RedPanda_SkipBlock
if not defined _flag-v (
	call :drawProgressBar 56 "Checking network"
	for /l %%f in (56 1 58) do ( call :drawProgressBar %%f ) 
)
if defined _DEBUG_MODE ( set "_flag-v=true" &echo on )
if defined _flag-v ( echo.&echo. )
if defined _flag-v ( call :GUI 0f " ["&call :GUI !_BC_G!!_BC_I! " Blocking telemetry / tracking / ad servers "&call :GUI 0f "]" /n )
if defined _flag-v <nul set /p =".!BS! -- Configuring network interfaces . . . "
set "RPandaRouteFSafe=true" &set "RPandaGUICount=0" &set "RPandaGUIFixedIndex=59" &set "_RPanda_IPv4LoopBack=127.0.0.0"
set "_RPanda_IPv4SubMaskA=255.0.0.0" &set "_RPanda_IPv4SubMaskB=255.255.0.0" &set "_RPanda_IPv4SubMaskC=255.255.255.0" &set "_RPanda_IPv4SubMask=255.255.255.255"
set "_RPanda_IPv6LoopBack=::1" &set "_RPanda_debugMetric=1" &set "_RPanda_IPv4AdrCount=0" &set "_RPanda_IPv6AdrCount=0" &set "_RP_IFCounter=0"
set "_RP_DNS_Resolving=" &set "_RP_ICMP_Resolving="

For /F "Usebackq Tokens=2 delims=^=" %%B In (`wmic path win32_networkadapter where physicaladapter^=true get interfaceindex /value`) Do (for /f "delims=" %%A in ("%%B") do (
	set "_RPandaNetIF=%%A"
	For /F "Usebackq Tokens=2 delims=^=" %%z In (`wmic path win32_networkadapter where interfaceindex^=!_RPandaNetIF! get name /value ^| findstr /v /i "loopback bluetooth virtual"`) Do (for /f "delims=" %%y in ("%%z") do (
		set "_RPandaIFNetName=%%y" &set /A "_RP_IFCounter=!_RP_IFCounter!+1"
		set "_RPandaIF!_RP_IFCounter!=!_RPandaNetIF!" &set "_RPandaIFName!_RP_IFCounter!=!_RPandaIFNetName!"
		For /F "Usebackq Tokens=2 delims= " %%q In (`netsh interface ip show interfaces !_RPandaNetIF! level^=normal ^|findstr /r ".*[0-9].*"`) Do (
			set "_RPandaIFNetMetric=%%q"
			set "_RPandaIFMetric!_RP_IFCounter!=!_RPandaIFNetMetric!"
)))))
if not defined _RPandaIFMetric1 (
	if defined _flag-v (
		<nul set /p ="[" &call :GUI !_BC_B!!_BC_D! " Failed " &<nul set /p ="]" &echo.
		call :ERROR_NetNoMetric
		echo. &echo  -- Skipping host blocking . . . &echo.
	)
	goto RedPanda_SkipBlock
)
if not defined _RPandaIF1 (
	if defined _flag-v (
		<nul set /p ="[" &call :GUI !_BC_B!!_BC_D! " Failed " &<nul set /p ="]" &echo.
		call :ERROR_NetNoInterface
		echo. &echo  -- Skipping host blocking . . . &echo.
	)
	goto RedPanda_SkipBlock
)
if defined _flag-v if !_RP_IFCounter! geq 1 (for /l %%a in (1 1 !_RP_IFCounter!) do (echo. &<nul set /p =".!BS!  - !_RPandaIFName%%a! [IF:!_RPandaIF%%a!,Metric:!_RPandaIFMetric%%a!]"))
if defined _flag-v ( echo. &<nul set /p =".!BS! -- Flushing DNS resolver cache..." )
ipconfig /flushdns >nul 2>&1
if defined _flag-v (
	<nul set /p ="[" &call :GUI !_BC_A!!_BC_C! " OK " &<nul set /p ="]" &echo. 
	<nul set /p =".!BS! -- Checking DNS response........."
)
for /f "skip=1 usebackq tokens=2" %%A in (`nslookup google.com 2^>Nul ^|findstr /r "[0-9]*\.[0-9]*\.[0-9]*\.[0-9]*\> .*\:.*\:.*\:.*\>"`) do set _RP_DNS_Resolving=%%A
REM --
rem SET _RP_DNS_Resolving=
REM --
if not defined _RP_DNS_Resolving (
	if defined _flag-v (
		<nul set /p ="[" &call :GUI !_BC_B!!_BC_D! " Failed " &<nul set /p ="]" &echo.
		<nul set /p =".!BS! -- Checking ICMP ping response..."
	)
	for /F "Tokens=2 delims=[]" %%A in ('ping google.com -4 -n 1 -l 1 -w 1 2^>Nul ^| findstr /r ".*[0-9]*\.[0-9]*\.[0-9]*\.[0-9]*"') do set _RP_ICMP_Resolving=%%A
	if not defined _RP_ICMP_Resolving (
		if defined _flag-v (
			<nul set /p ="[" &call :GUI !_BC_B!!_BC_D! " Failed " &<nul set /p ="]" &echo.
			call :ERROR_NetNoResolving
			echo. &echo  -- Skipping host blocking . . . &echo.
		)
		goto RedPanda_SkipBlock
))
if defined _flag-v ( <nul set /p ="[" &call :GUI !_BC_A!!_BC_C! " OK " &<nul set /p ="]" &echo. )
if not defined _flag-exthost goto RedPanda_Blacklist
if not exist "!_ExtHostsPath!" (
	if defined _flag-v (
		call :ERROR_NetNoExternalHosts "!_ExtHostsPath!"
		echo. &echo  -- Skipping host blocking . . . &echo.
	)
	goto RedPanda_SkipBlock
)
if not defined _flag-v (
	call :drawProgressBar 58 "Blocking external hosts"
	for /l %%f in (58 1 59) do ( call :drawProgressBar %%f ) 
) else (
	call :GUI 0f " -- Hosts file found at: "
	<nul set /p ="!_ExtHostsPath!"&echo.
)
REM ----
if defined _RP_DNS_Resolving (goto RedPanda_InitExt_DNSMode) else if defined _RP_ICMP_Resolving (goto RedPanda_InitExt_ICMPMode)
:RedPanda_InitExt_DNSMode
For /F "eol=; usebackq tokens=* delims=" %%A in ("!_ExtHostsPath!") do (
	set "_RP_RawHost=%%A" &set "_RP_NoAddress=true"
	if not defined _flag-v (set /a "RPandaGUICount=!RPandaGUICount!+1") else (<nul set /p =".!BS!  - " &call :GUI 0f "!_RP_RawHost!" &<nul set /p =".!BS! [")
	for /f "skip=1 usebackq tokens=1,2" %%a in (`nslookup !_RP_RawHost! 2^>Nul ^|findstr /r ".*[0-9]*\.[0-9]*\.[0-9]*\.[0-9]*\> .*\:.*\:.*\:.*\>"`) do (
		set "_DNSHostDump=%%a" &set _DNSHostMultiDump=true
		echo !_DNSHostDump! | findstr /r ".*[0-9]*\.[0-9]*\.[0-9]*\.[0-9]*\> .*\:.*\:.*\:.*\>" >nul || ( set "_DNSHostMultiDump=" & set "_DNSHostDump=%%b" )
		if defined _flag-v if defined _DNSHostMultiDump <nul set /p =", "
		if defined _DNSHostDump if not [!_DNSHostDump!]==[0.0.0.0] (
			set "_RP_RouteBlockConfig="
			echo !_DNSHostDump! | find "." >nul && (set "_RP_RouteBlockConfig=4 ADD !_DNSHostDump! MASK !_RPanda_IPv4SubMask! !_RPanda_IPv4LoopBack!" & if defined _flag-v ( set /A "_RPanda_IPv4AdrCount=!_RPanda_IPv4AdrCount!+1" &set "_RP_NoAddress=" )) || (set "_RP_RouteBlockConfig=6 ADD !_DNSHostDump!/128 !_RPanda_IPv6LoopBack!" & if defined _flag-v ( set /A "_RPanda_IPv6AdrCount=!_RPanda_IPv6AdrCount!+1" &set "_RP_NoAddress=" ))
			if !_RP_IFCounter! equ 1 (
				route -p -!_RP_RouteBlockConfig! metric !_RPanda_debugMetric! IF !_RPandaIF1! >nul 2>&1
				route -p -!_RP_RouteBlockConfig! metric !_RPandaIFMetric1! IF !_RPandaIF1! >nul 2>&1
			) else if !_RP_IFCounter! gtr 1 (for /l %%Z in (1 1 !_RP_IFCounter!) do (
					route -p -!_RP_RouteBlockConfig! metric !_RPanda_debugMetric! IF !_RPandaIF%%Z! >nul 2>&1
					route -p -!_RP_RouteBlockConfig! metric !_RPandaIFMetric%%Z! IF !_RPandaIF%%Z! >nul 2>&1
			))
			if defined _flag-v <nul set /p ="!_DNSHostDump!"
	))
	if defined _flag-v (
		if defined _RP_NoAddress call :GUI 0E "Unable to resolve" 
		<nul set /p ="] "
		if not defined _RP_NoAddress <nul set /p ="BLOCKED"
		echo.
	) else (
		set RPandaGUISubREM=
		if !RPandaGUICount! geq 1000 (set "RPandaGUISubMOD=1000") else if !RPandaGUICount! geq 500 (set "RPandaGUISubMOD=100") else if !RPandaGUICount! geq 300 (set "RPandaGUISubMOD=70") else if !RPandaGUICount! geq 200 (set "RPandaGUISubMOD=50") else if !RPandaGUICount! geq 100 (set "RPandaGUISubMOD=20") else (set "RPandaGUISubMOD=10")
		set /a "RPandaGUISubREM=!RPandaGUICount! %% !RPandaGUISubMOD!"
		if !RPandaGUISubREM! equ 0 (
			if defined RPanda_GUI_IndexPA (set /A "RPanda_GUI_IndexPA=!RPanda_GUI_IndexPA!+1" &set /A "RPanda_GUI_IndexPB=!RPanda_GUI_IndexPA!+1") else (set /A "RPanda_GUI_IndexPA=!RPandaGUIFixedIndex!+1" &set /A "RPanda_GUI_IndexPB=!RPanda_GUI_IndexPA!+1")
			call :drawProgressBar !RPanda_GUI_IndexPA! "Blocking external hosts"
			for /l %%z in (!RPanda_GUI_IndexPA! 1 !RPanda_GUI_IndexPB!) do call :drawProgressBar %%z
	))
	set "_RP_RawHost=" &set "_DNSHostDump=" &set "_DNSHostMultiDump="
)
goto RedPanda_FinalizeBlock
:RedPanda_InitExt_ICMPMode
For /F "eol=; usebackq tokens=* delims=" %%A in ("!_ExtHostsPath!") do (
	set "_RP_RawHost=%%A" &set "_RP_NoAddress=true"
	if not defined _flag-v (set /a "RPandaGUICount=!RPandaGUICount!+1") else (<nul set /p =".!BS!  - " &call :GUI 0f "!_RP_RawHost!" &<nul set /p =".!BS! [")
	for /f "Tokens=2 delims=[]" %%a in ('ping !_RP_RawHost! -4 -n 1 -l 1 -w 1 2^>Nul ^| findstr /r ".*[0-9]*\.[0-9]*\.[0-9]*\.[0-9]*"') do (set _RP_PingDump_IPv4=%%a)
	for /f "Tokens=2 delims=[]" %%a in ('ping !_RP_RawHost! -6 -n 1 -l 1 -w 1 2^>Nul ^| findstr /r ".*\:.*\:.*\:.*"') do (set _RP_PingDump_IPv6=%%a)
	if defined _RP_PingDump_IPv4 if not [!_RP_PingDump_IPv4!]==[0.0.0.0] (
		if !_RP_IFCounter! equ 1 (
			route -p -4 ADD !_RP_PingDump_IPv4! MASK !_RPanda_IPv4SubMask! !_RPanda_IPv4LoopBack! metric !_RPanda_debugMetric! IF !_RPandaIF1! >nul 2>&1
			route -p -4 ADD !_RP_PingDump_IPv4! MASK !_RPanda_IPv4SubMask! !_RPanda_IPv4LoopBack! metric !_RPandaIFMetric1! IF !_RPandaIF1! >nul 2>&1
		) else if !_RP_IFCounter! gtr 1 (for /l %%Z in (1 1 !_RP_IFCounter!) do (
				route -p -4 ADD !_RP_PingDump_IPv4! MASK !_RPanda_IPv4SubMask! !_RPanda_IPv4LoopBack! metric !_RPanda_debugMetric! IF !_RPandaIF%%Z! >nul 2>&1
				route -p -4 ADD !_RP_PingDump_IPv4! MASK !_RPanda_IPv4SubMask! !_RPanda_IPv4LoopBack! metric !_RPandaIFMetric%%Z! IF !_RPandaIF%%Z! >nul 2>&1
		))
		if defined _flag-v (set /A "_RPanda_IPv4AdrCount=!_RPanda_IPv4AdrCount!+1" &set "_RP_NoAddress=" &<nul set /p ="!_RP_PingDump_IPv4!")
	)
	if defined _RP_PingDump_IPv6 (
		if !_RP_IFCounter! equ 1 (
			route -p -6 ADD !_RP_PingDump_IPv6!/128 !_RPanda_IPv6LoopBack! metric !_RPanda_debugMetric! IF !_RPandaIF1! >nul 2>&1
			route -p -6 ADD !_RP_PingDump_IPv6!/128 !_RPanda_IPv6LoopBack! metric !_RPandaIFMetric1! IF !_RPandaIF1! >nul 2>&1
		) else if !_RP_IFCounter! gtr 1 (for /l %%Z in (1 1 !_RP_IFCounter!) do (
				route -p -6 ADD !_RP_PingDump_IPv6!/128 !_RPanda_IPv6LoopBack! metric !_RPanda_debugMetric! IF !_RPandaIF%%Z! >nul 2>&1
				route -p -6 ADD !_RP_PingDump_IPv6!/128 !_RPanda_IPv6LoopBack! metric !_RPandaIFMetric%%Z! IF !_RPandaIF%%Z! >nul 2>&1
		))
		if defined _flag-v (
			set /A "_RPanda_IPv6AdrCount=!_RPanda_IPv6AdrCount!+1" &set "_RP_NoAddress="
			if defined _RP_PingDump_IPv4 <nul set /p =", "
			<nul set /p =" !_RP_PingDump_IPv6!"
	))
	if defined _flag-v (
		if defined _RP_NoAddress call :GUI 0E "Unable to resolve" 
		<nul set /p ="] "
		if not defined _RP_NoAddress <nul set /p ="BLOCKED"
		echo.
	) else (
		set RPandaGUISubREM=
		if !RPandaGUICount! geq 1000 (set "RPandaGUISubMOD=1000") else if !RPandaGUICount! geq 500 (set "RPandaGUISubMOD=100") else if !RPandaGUICount! geq 300 (set "RPandaGUISubMOD=70") else if !RPandaGUICount! geq 200 (set "RPandaGUISubMOD=50") else if !RPandaGUICount! geq 100 (set "RPandaGUISubMOD=20") else (set "RPandaGUISubMOD=10")
		set /a "RPandaGUISubREM=!RPandaGUICount! %% !RPandaGUISubMOD!"
		if !RPandaGUISubREM! equ 0 (
			if defined RPanda_GUI_IndexPA (set /A "RPanda_GUI_IndexPA=!RPanda_GUI_IndexPA!+1" &set /A "RPanda_GUI_IndexPB=!RPanda_GUI_IndexPA!+1") else (set /A "RPanda_GUI_IndexPA=!RPandaGUIFixedIndex!+1" &set /A "RPanda_GUI_IndexPB=!RPanda_GUI_IndexPA!+1")
			call :drawProgressBar !RPanda_GUI_IndexPA! "Blocking external hosts"
			for /l %%z in (!RPanda_GUI_IndexPA! 1 !RPanda_GUI_IndexPB!) do call :drawProgressBar %%z
	))
	set "_RP_RawHost=" &set "_RP_PingDump_IPv4=" &set "_RP_PingDump_IPv6="
)
goto RedPanda_FinalizeBlock
REM ----
:RedPanda_Blacklist
if not defined _flag-v (
	call :drawProgressBar 58 "Blocking hosts"
	for /l %%f in (58 1 59) do ( call :drawProgressBar %%f ) 
)
if defined _flag-v ( call :GUI 0f " -- Applying internal host blacklist . . ." /n )
rem ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
set "RedPanda_HostList_A01=112.2o7.net 1storecatalogrevocation.storequality.microsoft.com 2.tlu.dl.delivery.mp.microsoft.com 3.tlu.dl.delivery.mp.microsoft.com 315a641cf1db62bed0a344c5b05b2292.clo.footprintdns.com 4-c-0003.c-msedge.net 4d4a22d4d2d167314abccf8082f0ef35.clo.footprintdns.com 6-c-0003.c-msedge.net 6to4.ipv6.microsoft.com 9.tlu.dl.delivery.mp.microsoft.com a-0001.a-msedge.net a-0002.a-msedge.net a-0003.a-msedge.net a-0004.a-msedge.net a-0005.a-msedge.net a-0006.a-msedge.net a-0007.a-msedge.net a-0008.a-msedge.net a-0009.a-msedge.net a-0010.a-msedge.net a-0011.a-msedge.net a-0012.a-msedge.net a-0013.a-msedge.net a-0014.a-msedge.net a-0015.a-msedge.net a-0016.a-msedge.net a-0017.a-msedge.net a-0018.a-msedge.net a-0019.a-msedge.net a-0020.a-msedge.net a-0021.a-msedge.net a-0022.a-msedge.net a-0023.a-msedge.net a-0024.a-msedge.net a-0025.a-msedge.net a-0026.a-msedge.net a-0027.a-msedge.net a-0028.a-msedge.net a-0029.a-msedge.net a-0030.a-msedge.net a-0031.a-msedge.net" 
set "RedPanda_HostList_A02=a-0032.a-msedge.net a-0033.a-msedge.net a-0001.dc-msedge.net a-0002.dc-msedge.net a-0003.dc-msedge.net a-0004.dc-msedge.net a-0005.dc-msedge.net a-0006.dc-msedge.net a-0007.dc-msedge.net a-0008.dc-msedge.net a-0009.dc-msedge.net a-0010.dc-msedge.net a-0011.dc-msedge.net a-0012.dc-msedge.net a-0013.dc-msedge.net a-0014.dc-msedge.net a-0015.dc-msedge.net a-0016.dc-msedge.net a-0017.dc-msedge.net a-0018.dc-msedge.net a-0019.dc-msedge.net a-0020.dc-msedge.net a-0021.dc-msedge.net a-0022.dc-msedge.net a-0023.dc-msedge.net a-0024.dc-msedge.net a-0025.dc-msedge.net a-0026.dc-msedge.net a-0027.dc-msedge.net a-0028.dc-msedge.net a-0029.dc-msedge.net a-0030.dc-msedge.net a-0031.dc-msedge.net a-0032.dc-msedge.net a-0033.dc-msedge.net a-ring-fallback.msedge.net a-ring.msedge.net a.ads1.msads.net a.ads1.msn.com a.ads2.msads.net a.ads2.msn.com a.config.skype.com a.ns.facebook.com aa.agkn.com aa5ca9ad60d84d6d2f64c41b26e503d9.clo.footprintdns.com aad.cs.dds.microsoft.com"
set "RedPanda_HostList_A03=ab59a6538d2abdcbd183e7feb407ba46.nrb.footprintdns.com ac3.msn.com acdn.adnxs.com activity.windows.com ad.doubleclick.net ad40d51ce44cd50387b82faade325052.clo.footprintdns.com adclick.g.doubleclick.net adfb1fb578a00c84b719d00af558ea1b.clo.footprintdns.com adl.windows.com admeld.com ads.ak.facebook.com.edgesuite.net ads.api.vungle.com ads.eu.msn.com ads.exdynsrv.com ads.facebook.com ads.google.com ads.msn.com ads.scorecardresearch.com ads.youtube.com ads1.msads.net ads1.msn.com adservice.google.com adtrack.king.com adtrack1.midasplayer.com afdap.c-0006.c-msedge.net afs.googlesyndication.com ajax.microsoft.com am3pap004.storage.live.com ams1-ib.adnxs.com analytics.google.com analytics.live.com analytics.microsoft.com analytics.msn.com analytics.twitter.com analytics.yahoo.com api-s2s-emea.taboola.com api.aps.skype.com api.asm.skype.com api.cortana.ai api.onedrive.com api.taboola.com api3.cc.skype.com apprep.smartscreen.microsoft.com"
set "RedPanda_HostList_A04=apprepsvc-ch1p.smartscreen.microsoft.com apps.skype.com arc.msn.com arc1.msn.com array507.prod.do.dsp.mp.microsoft.com array508.prod.do.dsp.mp.microsoft.com array509.prod.do.dsp.mp.microsoft.com array601.prod.do.dsp.mp.microsoft.com array602.prod.do.dsp.mp.microsoft.com array603.prod.do.dsp.mp.microsoft.com array604.prod.do.dsp.mp.microsoft.com array605.prod.do.dsp.mp.microsoft.com array606.prod.do.dsp.mp.microsoft.com array607.prod.do.dsp.mp.microsoft.com array608.prod.do.dsp.mp.microsoft.com array609.prod.do.dsp.mp.microsoft.com array610.prod.do.dsp.mp.microsoft.com array611.prod.do.dsp.mp.microsoft.com array612.prod.do.dsp.mp.microsoft.com array613.prod.do.dsp.mp.microsoft.com array614.prod.do.dsp.mp.microsoft.com array615.prod.do.dsp.mp.microsoft.com array616.prod.do.dsp.mp.microsoft.com array618.prod.do.dsp.mp.microsoft.com array801.prod.do.dsp.mp.microsoft.com array802.prod.do.dsp.mp.microsoft.com array803.prod.do.dsp.mp.microsoft.com"
set "RedPanda_HostList_A05=array804.prod.do.dsp.mp.microsoft.com array805.prod.do.dsp.mp.microsoft.com array808.prod.do.dsp.mp.microsoft.com array809.prod.do.dsp.mp.microsoft.com array810.prod.do.dsp.mp.microsoft.com array812.prod.do.dsp.mp.microsoft.com array813.prod.do.dsp.mp.microsoft.com ars.smartscreen.microsoft.com asimov-win.settings.data.microsoft.com.akadns.net assets.msn.com at.atwola.com atlassolutions.com auto.search.msn.com avatar.skype.com az361816.vo.msecnd.net az416426.vo.msecnd.net az512334.vo.msecnd.net az667904.vo.msecnd.net az700632.vo.msecnd.net az725175.vo.msecdn.net az779572.vo.msecnd.net az861674.vo.msecnd.net azeus1-client-s.gateway.messenger.live.com azwanp.trafficmanager.net b-ring.msedge.net b.codeonclick.com b.config.skype.com b.ns.facebook.com b.scorecardresearch.com bat.bing.com beacon.krxd.net bg.v4.emdl.ws.microsoft.com bg2.v4.a.dl.ws.microsoft.com bg2.v4.emdl.ws.microsoft.com bg4.ds.a.dl.ws.microsoft.com bg4.ds.emdl.ws.microsoft.com"
set "RedPanda_HostList_A06=bg5.v4.a.dl.ws.microsoft.com bg5.v4.emdl.ws.microsoft.com bgpdefault-vie.msedge.net bingads.microsoft.com blob.core.windows.net blobs.officehome.msocdn.com bnpsa.g.comcast.net browser.events.data.microsoft.com browser.events.data.msn.com browser.pipe.aria.microsoft.com business.bing.com c-0001.c-msedge.net c-0002.c-msedge.net c-0003.c-msedge.net c-0004.c-msedge.net c-0005.c-msedge.net c-0006.c-msedge.net c-0007.c-msedge.net c-0008.c-msedge.net c-0009.c-msedge.net c-0200.c-msedge.net c-9999.c-msedge.net c-msn-com-nsatc.trafficmanager.net c-ring.msedge.net c.bing.com c.msn.com c.s-microsoft.com c.urs.microsoft.com c1.microsoft.com cache.datamart.windows.com candycrushsoda.king.com casual-solitaire.cloudapp.net cci.directline.botframework.com ccs.play.king.com cdn.adnxs.com cdn.at.atwola.com cdn.content.prod.cms.msn.com cdn.fastclick.net cdn.krxd.net cdn.onenote.net cdn.onesignal.com cdn.viglink.com cdpcs.microsoft.com cds.d2s7q6s2.hwcdn.net"
set "RedPanda_HostList_A07=ceuswatcab01.blob.core.windows.net ceuswatcab02.blob.core.windows.net checkappexec.microsoft.com choice.microsoft.com choice.microsoft.com.nsatc.net client-office365-tas.msedge.net client-s.gateway.messenger.live.com client.wns.windows.com clients2.google.com cloudcollection-ssl.xboxlive.com cm.g.doubleclick.net coin-hive.com coinhive.com collections.mp.microsoft.com compass-ssl.xboxlive.com compatexchange.cloudapp.net concierge.live.com config.edge.skype.com config.office.microsoft.com config.teams.microsoft.com connect.facebook.com consumer.entitlement.skype.com contacts.skype.com continuum.dds.microsoft.com corp.sts.microsoft.com corpext.msitadfs.glbdns2.microsoft.com cp501.prod.do.dsp.mp.microsoft.com cp601.prod.do.dsp.mp.microsoft.com cp801.prod.do.dsp.mp.microsoft.com creative.ak.facebook.com creative.ak.fbcdn.net crl.microsoft.com cs.dds.microsoft.com cs1.wpc.v0cdn.net cs11.wpc.v0cdn.net cs9.wac.phicdn.net cts.w55c.net cx.atdmt.com"
set "RedPanda_HostList_A08=cxcs.microsoft.net cy2.settings.data.microsoft.com.akadns.net cy2.vortex.data.microsoft.com.akadns.net d.agkn.com d23iz4esrwkib6.cloudfront.net da.xboxservices.com db3pap001.settings.live.net db3pap001.storage.live.com db5.settings.data.microsoft.com.akadns.net db5.vortex.data.microsoft.com.akadns.net db5sch101100831.wns.windows.com db5sch101101001.wns.windows.com db5sch101101031.wns.windows.com db5sch101101221.wns.windows.com db5sch101101231.wns.windows.com db5sch101101338.wns.windows.com db5sch101101430.wns.windows.com db5sch101101640.wns.windows.com db5sch101101941.wns.windows.com db5sch101110331.wns.windows.com db5sch101110343.wns.windows.com db5sch101110438.wns.windows.com db5sch101110510.wns.windows.com db5sch101110541.wns.windows.com db5sch101110740.wns.windows.com db5sch101110810.wns.windows.com db5sch101110821.wns.windows.com db5sch101110929.wns.windows.com dc.applicationinsights.microsoft.com dc.services.visualstudio.com"
set "RedPanda_BlackHostsList_A=!RedPanda_HostList_A01! !RedPanda_HostList_A02! !RedPanda_HostList_A03! !RedPanda_HostList_A04! !RedPanda_HostList_A05! !RedPanda_HostList_A06! !RedPanda_HostList_A07! !RedPanda_HostList_A08!"
set "RedPanda_HostList_B01=delivery.mp.microsoft.com dev.virtualearth.net df.telemetry.microsoft.com diagnostics.support.microsoft.com disc501.prod.do.dsp.mp.microsoft.com disc601.prod.do.dsp.mp.microsoft.com disc801.prod.do.dsp.mp.microsoft.com discover.aadrm.com displaycatalog.mp.microsoft.com dlassets-ssl.xboxlive.com dmd.metaservices.microsoft.com download-ssl.msgamestudios.com download.visualstudio.microsoft.com dpm.demdex.net ds-c-0003.c-msedge.net dual-a-0001.a-msedge.net dual-a-0001.dc-msedge.net e-0001.e-msedge.net e-0002.e-msedge.net e-0003.e-msedge.net e-0004.e-msedge.net e-0005.e-msedge.net e-0006.e-msedge.net e-0007.e-msedge.net e-0008.e-msedge.net e-0009.e-msedge.net e1723.g.akamaiedge.net e.nexac.com eafddirect.msedge.net eaus2watcab01.blob.core.windows.net eaus2watcab02.blob.core.windows.net ecn.dev.virtualearth.net ecs.office.com edge.activity.windows.com edge.microsoft.com edge.skype.com ei.rlcdn.com emdl.ws.microsoft.com"
set "RedPanda_HostList_B02=endpoint-quwfbp3teyq4e.azureedge.net enrollment.manage.microsoft.com enterprise.activity.windows.com enterpriseregistration.windows.net eu.vortex-win.data.microsoft.com europe.smartscreen-prod.microsoft.com everydaymagic-windowsservices-tas.msedge.net evoke-windowsservices-tas.msedge.net exchange-assets.azureedge.net external-frt3-1.xx.fbcdn.net external-frt3-2.xx.fbcdn.net external-veil-1.xx.fbcdn.net f24aea1ef289112ec08c775a9cce3bd4.clo.footprintdns.com fb4f06b65a8ebaffd9f1645a2732f71e.clo.footprintdns.com fbcdn-creative-a.akamaihd.net fbcdn-static-b-a.akamaihd.net fbcdn.net fbexternal-a.akamaihd.net fbstatic-a.akamaihd.net fe2.update.microsoft.com.akadns.net fe2.ws.microsoft.com fe3.delivery.dsp.mp.microsoft.com.nsatc.net feedback.microsoft-hohm.com feedback.search.microsoft.com feedback.windows.com feedbacksite-bn2b.smartscreen.microsoft.com fef.amsub0302.manage.microsoft.com files.adform.net flighting.cc.skype.com"
set "RedPanda_HostList_B03=fp-afd.azureedge.net fp-afd.azurefd.net fp-afd.azurefd.us fp-as.azureedge.net fp-vp-nocache.azureedge.net fp-vs.azureedge.net fp.config.skype.com fp.msedge.net fpc.msedge.net fs.microsoft.com functionalclam.com g.bing.com g.live.com g.microsoft.com g.msn.com g.msn.com.nsatc.net geo-prod.do.dsp.mp.microsoft.com geo.prod.do.dsp.mp.microsoft.com geo.vortex.data.microsoft.com.akadns.net geover-prod.do.dsp.mp.microsoft.com geover.prod.do.dsp.mp.microsoft.com get.skype.com gg.google.com github.map.fastly.net glb.api.prod.dcat.dsp.trafficmanager.net glb.cws.prod.dcat.dsp.trafficmanager.net glb.sls.prod.dcat.dsp.trafficmanager.net global.msads.net go.microsoft.com go.trouter.skype.com google-analytics.com googleads.g.doubleclick.net googleads2.g.doubleclick.net googleadservices.com googlesyndication.com googletagmanager.com graph.facebook.com graph.microsoft.com has.spserv.microsoft.com i.kissmetrics.com i.liadm.com"
set "RedPanda_HostList_B04=i1.services.social.microsoft.com i1.services.social.microsoft.com.nsatc.net ib.adnxs.com ic3.events.data.microsoft.com iecvlist.microsoft.com ieonline.microsoft.com ieonlinews.microsoft.com images.taboola.com img-prod-cms-rt-microsoft-com.akamaized.net img-s-msn-com.akamaized.net img1.wsimg.com inference.location.live.net inprod.support.services.microsoft.com iris-de-prod-azsc-frc-b.francecentral.cloudapp.azure.com iteactive-vie.msedge.net js.microsoft.com jslog.krxd.net k-ring.msedge.net kv501.prod.do.dsp.mp.microsoft.com kv601.prod.do.dsp.mp.microsoft.com kv801.prod.do.dsp.mp.microsoft.com l-0001.l-msedge.net l-0002.l-msedge.net l-0003.l-msedge.net l-0004.l-msedge.net l-0005.l-msedge.net l-0006.l-msedge.net l-0007.l-msedge.net l-0008.l-msedge.net l-0009.l-msedge.net l-0010.l-msedge.net l-0011.l-msedge.net l-0012.l-msedge.net l-0013.l-msedge.net l-0014.l-msedge.net l-0015.l-msedge.net l-0016.l-msedge.net"
set "RedPanda_HostList_B05=l-ring.msedge.net l.facebook.com licensing.md.mp.microsoft.com licensing.mp.microsoft.com live.rads.msn.com livetileedge.dsx.mp.microsoft.com location-inference-westus.cloudapp.net login.live.com login.microsoftonline.com login.microsoftonline.us login.windows-ppe.net login.windows.net logincdn.msauth.net m.adnxs.com m.qualifytring.com manage.devcenter.microsoft.com manage.microsoft.com maps.windows.com match.adsrvr.org media.fastclick.net mobile.events.data.microsoft.com mobile.pipe.aria.microsoft.com modern.watson.data.microsoft.com.akadns.net mpa.one.microsoft.com ms-dotnettools.gallerycdn.vsassets.io msdl.microsoft.com msedge.api.cdp.microsoft.com msedge.b.tlu.dl.delivery.mp.microsoft.com msedge.f.dl.delivery.mp.microsoft.com msedge.net msgsearch.skype.com mucp.api.account.microsoft.com musicimage.xboxlive.com mwf-service.akamaized.net nav.smartscreen.microsoft.com next-services.apps.microsoft.com"
set "RedPanda_HostList_B06=nexusrules.officeapps.live.com ns1.c-msedge.net ns2.c-msedge.net ntp.msn.com o.aolcdn.com oca.alpha.telemetry.microsoft.com oca.telemetry.microsoft.com oca.telemetry.microsoft.com.nsatc.net oca7.alpha.telemetry.microsoft.com oca7.ppe.telemetry.microsoft.com oca8.ppe.telemetry.microsoft.com ocos-office365-s2s.msedge.net ocsa.office.microsoft.com odinvzc.azureedge.net office.com office14client.microsoft.com office15client.microsoft.com officecdn.microsoft.com officecdn.microsoft.com.edgesuite.net officeclient.microsoft.com officehomeblobs.blob.core.windows.net officeredir.microsoft.com officestore.microsoft.com oft.msn.com onclkds.com oneclient.sfx.ms onecollector.cloudapp.aria.akadns.net onecs-live.azureedge.net onedrive.live.com onedriveclucprodbn20007.blob.core.windows.net onedriveclucprodbn20010.blob.core.windows.net onedriveclucprodbn20036.blob.core.windows.net onedriveclucproddm20012.blob.core.windows.net"
set "RedPanda_HostList_B07=onedriveclucproddm20013.blob.core.windows.net onedriveclucproddm20030.blob.core.windows.net onedscolprdwus14.westus.cloudapp.azure.com onegetcdn.azureedge.net oneocsp.microsoft.com onlinestores.metaservices.microsoft.com optanon.blob.core.windows.net options.skype.com otf.msn.com outlook.live.com outlook.office.com outlook.office365.com outlookmobile-office365-tas.msedge.net ow1.res.office365.com p2-ajqzcgzl2l3xw-gepf7uctxogn5vzq-if-v6exp3-v4.metric.gstatic.com p2-bqvskhonsju5q-ed4zavcsaojzmvmb-if-v6exp3-v4.metric.gstatic.com p2-enmdpqijudiua-eying5wyxgzp6dwz-if-v6exp3-v4.metric.gstatic.com p2-fkgdhaabwvfxw-xv2qbevds4lr622e-if-v6exp3-v4.metric.gstatic.com p2-ggwrelokxwzwo-uuovim4bdorjplkp-if-v6exp3-v4.metric.gstatic.com p2-hktvemjznhzt6-krdjd3zqh6oryado-if-v6exp3-v4.metric.gstatic.com p2-ixrh4jazt6bka-vrg2ihieqq7h7x66-if-v6exp3-v4.metric.gstatic.com p4-c7zrxegtmgcsc-escwxf4cdaqrjukz-if-v6exp3-v4.metric.gstatic.com"
set "RedPanda_HostList_B08=p4-gua6ilgkj6222-c37u6zka7ys5pa27-if-v6exp3-v4.metric.gstatic.com p5-wknln4jd5q3qm-ik4z2y35yknm3pf6-576092-i2-v6exp3.v4.metric.gstatic.com p5-wyy773liffdba-dgrv56uw7xwp7h7r-514802-i2-v6exp3.v4.metric.gstatic.com p5-z6ncvqrb65bss-ypxh225pzjntuicv-200594-i1-v6exp3.ds.metric.gstatic.com pagead.l.google.com pagead2.googlesyndication.com par02p.wns.windows.com partner.googleadservices.com partner.support.services.microsoft.com partnerad.l.google.com payloadprod15.blob.core.windows.net peer1-vie.msedge.net peer2-vie.msedge.net peer3-vie.msedge.net people.skype.com ping.chartbeat.net pipe.aria.microsoft.com pipe.skype.com pixel.advertising.com pixel.facebook.com platform-lookaside.fbsbx.com pnrpv2.ipv6.microsoft.com pnrpv21.ipv6.microsoft.com pnv.skype.com popup.msn.com portal.manage-dogfood.microsoft.com portal.manage-ppe.microsoftonline.cn portal.manage-selfhost.microsoft.com portal.manage.microsoft.us pr-bh.ybp.yahoo.com"
set "RedPanda_BlackHostsList_B=!RedPanda_HostList_B01! !RedPanda_HostList_B02! !RedPanda_HostList_B03! !RedPanda_HostList_B04! !RedPanda_HostList_B05! !RedPanda_HostList_B06! !RedPanda_HostList_B07! !RedPanda_HostList_B08!"
set "RedPanda_HostList_C01=pre.footprintpredict.com preview.msn.com pricelist.skype.com prod.do.dsp.mp.microsoft.com prod.registrar.skype.com pti.store.microsoft.com pubads.g.doubleclick.net purchase.mp.microsoft.com px.ads.linkedin.com q-ring-fallback.msedge.net query.prod.cms.rt.microsoft.com r.bing.com r.manage.microsoft.com r1.sn-4g5e6nsz.gvt1.com r1.sn-4g5e6nzs.gvt1.com r1.sn-4g5e6nzz.gvt1.com r1.sn-4g5edns6.gvt1.com r1.sn-4g5ednsk.gvt1.com r2.sn-4g5e6nsz.gvt1.com r2.sn-4g5e6nzs.gvt1.com r2.sn-4g5e6nzz.gvt1.com r2.sn-4g5edns6.gvt1.com r2.sn-4g5ednsk.gvt1.com r3.o.lencr.org r3.sn-4g5e6nsz.gvt1.com r3.sn-4g5e6nzs.gvt1.com r3.sn-4g5e6nzz.gvt1.com r3.sn-4g5edns6.gvt1.com r3.sn-4g5ednsk.gvt1.com r4.sn-4g5e6nsz.gvt1.com r4.sn-4g5e6nzs.gvt1.com r4.sn-4g5e6nzz.gvt1.com r4.sn-4g5edns6.gvt1.com r4.sn-4g5ednsk.gvt1.com r5.sn-4g5e6nsz.gvt1.com r5.sn-4g5e6nzs.gvt1.com r5.sn-4g5e6nzz.gvt1.com r5.sn-4g5edns6.gvt1.com r5.sn-4g5ednsk.gvt1.com rad.msn.com"
set "RedPanda_HostList_C02=redir.metaservices.microsoft.com redirector.gvt1.com reports.wes.df.telemetry.microsoft.com res1.windows.microsoft.com res2.windows.microsoft.com responses.df.telemetry.microsoft.com ris.api.iris.microsoft.com rmads.msn.com roaming.officeapps.live.com rr.office.microsoft.com rt.applicationinsights.microsoft.com rt.services.visualstudio.com rum11.perf.linkedin.com rum12.perf.linkedin.com rum13.perf.linkedin.com rum14.perf.linkedin.com rum15.perf.linkedin.com rum16.perf.linkedin.com rum17.perf.linkedin.com rum18.perf.linkedin.com rum19.perf.linkedin.com rum2.perf.linkedin.com rum20.perf.linkedin.com rum3.perf.linkedin.com rum4.perf.linkedin.com rum5.perf.linkedin.com rum6.perf.linkedin.com rum7.perf.linkedin.com rum8.perf.linkedin.com rum9.perf.linkedin.com s-0001.s-msedge.net s-0002.s-msedge.net s-0003.s-msedge.net s-0004.s-msedge.net s-0005.s-msedge.net s-0006.s-msedge.net s-0007.s-msedge.net s-0008.s-msedge.net s-0009.s-msedge.net"
set "RedPanda_HostList_C03=s-ring.msedge.net s.youtube.com s0.2mdn.net s1.2mdn.net s1.adform.net sam.msn.com sb.scorecardresearch.com scontent-frt3-2.xx.fbcdn.net scontent-veil-1.xx.fbcdn.net scontent-vie1-1.xx.fbcdn.net scontent.flju2-1.fna.fbcdn.net search.namequery.com secure-ds.serving-sys.com secure.adnxs.com segments-s.msedge.net self.events.data.microsoft.com service.datamart.windows.com service.weather.microsoft.com services.wes.df.telemetry.microsoft.com settings-prod-eus2-1.eastus2.cloudapp.azure.com settings-prod-neu-1.northeurope.cloudapp.azure.com settings-prod-sea-1.southeastasia.cloudapp.azure.com settings-prod-wjp-1.japanwest.cloudapp.azure.com settings-prod-wus2-1.westus2.cloudapp.azure.com settings-sandbox.data.microsoft.com settings-ssl.xboxlive.com settings-win-ppe.data.microsoft.com settings-win.data.microsoft.com settings.data.microsoft.com settings.live.net share.microsoft.com site-cdn.onenote.net sitefinder-idn.verisign.com sitefinder.verisign.com"
set "RedPanda_HostList_C04=skydrive.live.com skydrive.wns.windows.com skydrivesync.policies.live.net skypeecs-prod-usw-0-b.cloudapp.net sls.update.microsoft.com.akadns.net smartscreen-os1p.smartscreen.microsoft.com smartscreen-prod.microsoft.com smartscreen-sn3p.smartscreen.microsoft.com smartscreen.microsoft.com spclient.wg.spotify.com spo-ring.msedge.net spynet2.microsoft.com spynetalt.microsoft.com sqm.alpha.telemetry.microsoft.com sqm.df.telemetry.microsoft.com sqm.telemetry.microsoft.com sqm.telemetry.microsoft.com.nsatc.net sqm7.alpha.telemetry.microsoft.com srtb.msn.com ssl-youtube.2cnt.net ssl.ak.dynamic.tiles.virtualearth.net ssl.ak.tiles.virtualearth.net ssl.bing.com ssl.google-analytics.com ssl.gstatic.com ssw.live.com stags.bluekai.com star-mini.c10r.facebook.com static-asm.secure.skypeassets.com static-spartan-neu-s-msn-com.akamaized.net static.2mdn.net static.asm.skype.com static.doubleclick.net static.xx.fbcdn.net staticxx.facebook.com stats.g.doubleclick.net"
set "RedPanda_HostList_C05=statsfe1.ws.microsoft.com statsfe2.update.microsoft.com statsfe2.update.microsoft.com.akadns.net statsfe2.ws.microsoft.com status.geotrust.com status.rapidssl.com steamih.com storage.googleapis.com storage.live.com store-images.s-microsoft.com storecatalogrevocation.storequality.microsoft.com storeedgefd.dsx.mp.microsoft.com storesdk.dsx.mp.microsoft.com substrate.office.com support.content.office.microsoft.com support.office.microsoft.com survey.support.services.microsoft.com survey.watson.microsoft.com sv.symcb.com sv.symcd.com sync.liverail.com t-ring.msedge.net t.checkappexec.microsoft.com t.urs.microsoft.com tags.bluekai.com telecommand.alpha.telemetry.microsoft.com telecommand.df.telemetry.microsoft.com telecommand.telemetry.microsoft.com telecommand.telemetry.microsoft.com.nsatc.net telemetry.appex.bing.net telemetry.microsoft.com telemetry.urs.microsoft.com telemetrysvc-by3p.smartscreen.microsoft.com teredo.ipv6.microsoft.com"
set "RedPanda_HostList_C06=tile-service.weather.microsoft.com tlu.dl.delivery.mp.microsoft.com to-do.microsoft.com tpc.googlesyndication.com tpcnc.googlesyndication.com track.adform.net traffic.adxprts.com trc.taboola.com tse1.mm.bing.net tsfe.trafficmanager.net tsfe.trafficshaping.dsp.mp.microsoft.com uhf.microsoft.com ui.skype.com uif.microsoft.com umwatson.events.data.microsoft.com umwatson.trafficmanager.net umwatsonc.events.data.microsoft.com unitedstates.smartscreen-prod.microsoft.com updserv-east-cdn3.com urlreputation-ch1p.smartscreen.microsoft.com urlreputation-sn3p.smartscreen.microsoft.com urs.microsoft.com urs.smartscreen.microsoft.com us.vortex-win.data.microsoft.com v10-win.vortex.data.microsoft.com.akadns.net v10.events.data.microsoft.com v10.vortex-win.data.microsoft.com v20.events.data.microsoft.com  v20.vortex-win.data.microsoft.com validation-v2.sls.microsoft.com video-ad-stats.googlesyndication.com video-stats.video.google.com visualstudio-devdiv-c2s.msedge.net"
set "RedPanda_HostList_C07=vortex-sandbox.data.microsoft.com vortex-win-sandbox.data.microsoft.com vortex-win.data.microsoft.com vortex.data.microsoft.com vsblobprodscussu5shard10.blob.core.windows.net vsblobprodscussu5shard12.blob.core.windows.net vsblobprodscussu5shard26.blob.core.windows.net vsblobprodscussu5shard3.blob.core.windows.net vsblobprodscussu5shard50.blob.core.windows.net vsblobprodscussu5shard67.blob.core.windows.net vsblobprodscussu5shard88.blob.core.windows.net wat8.ppe.telemetry.microsoft.com watson.alpha.telemetry.microsoft.com watson.df.telemetry.microsoft.com watson.live.com watson.microsoft.com watson.ppe.telemetry.microsoft.com watson.telemetry.microsoft.com watson.telemetry.microsoft.com.nsatc.net watson2.alpha.telemetry.microsoft.com watson7.alpha.telemetry.microsoft.com wd-prod-ss-eu-west-1-fe.westeurope.cloudapp.azure.com wd-prod-ss-eu-west-2-fe.westeurope.cloudapp.azure.com wdcp.microsoft.com wdcpalt.microsoft.com web.vortex.data.microsoft.com webmine.pro"
set "RedPanda_HostList_C08=wer.alpha.telemetry.microsoft.com wer.microsoft.com wes.df.telemetry.microsoft.com weu-000.reverseproxy.onenote.com weu-000.site.onenote.com weus2watcab01.blob.core.windows.net weus2watcab02.blob.core.windows.net whiteboard.microsoft.com whiteboard.ms win10.ipv6.microsoft.com windows.policies.live.net wns.windows.com wp-monero-miner.com wscont-scdn.windows.akadns.net wscont.apps.microsoft.com wscont.apps.microsoft.com.edgekey.net wscont1.apps.microsoft.com wscont2.apps.microsoft.com wu.wut.smartscreen.microsoft.com www-google-analytics.l.google.com www.bing.com www.google-analytics.com www.googleadservices.com www.googletagservices.com www.msftconnecttest.com www.msftncsi.com www.msftncsi.com.edgesuite.net www.msn.com www.myrappid.com www.pinkturtle.me www.powershellgallery.com www.telecommandsvc.microsoft.com www.tm.a.prd.aadg.akadns.net www.xboxab.com www.youtube-nocookie.com www2.bing.com x.dlx.addthis.com youtube.2cnt.net yt3.ggpht.com"
set "RedPanda_BlackHostsList_C=!RedPanda_HostList_C01! !RedPanda_HostList_C02! !RedPanda_HostList_C03! !RedPanda_HostList_C04! !RedPanda_HostList_C05! !RedPanda_HostList_C06! !RedPanda_HostList_C07! !RedPanda_HostList_C08!"
set "RedPanda_BlackHosts=!RedPanda_BlackHostsList_A!"
if defined _DUMP_MODE (
	echo !RedPanda_BlackHostsList_A! >!_EXTERNAL!_HOSTLIST_PANDA.TXT
	echo !RedPanda_BlackHostsList_B!>>!_EXTERNAL!_HOSTLIST_PANDA.TXT
	echo !RedPanda_BlackHostsList_C!>>!_EXTERNAL!_HOSTLIST_PANDA.TXT
)
:RedPanda_Init
if defined _RP_DNS_Resolving (goto RedPanda_Init_DNSMode) else if defined _RP_ICMP_Resolving (goto RedPanda_Init_ICMPMode)
:RedPanda_Init_DNSMode
for %%A in (!RedPanda_BlackHosts!) do (
	set "_RP_RawHost=%%A" &set "_RP_NoAddress=true"
	if defined _DUMP_MODE ( echo !_RP_RawHost!>>"!_EXTERNAL!_HOSTLIST_RAW.TXT" & echo  - Dumping HOSTNAME: !_RP_RawHost! )
	if not defined _flag-v (set /a "RPandaGUICount=!RPandaGUICount!+1") else (<nul set /p =".!BS!  - " &call :GUI 0f "!_RP_RawHost!" &<nul set /p =".!BS! [")
	for /f "skip=1 usebackq tokens=1,2" %%a in (`nslookup !_RP_RawHost! 2^>Nul ^|findstr /r ".*[0-9]*\.[0-9]*\.[0-9]*\.[0-9]*\> .*\:.*\:.*\:.*\>"`) do (
		set "_DNSHostDump=%%a" &set _DNSHostMultiDump=true
		echo !_DNSHostDump! | findstr /r ".*[0-9]*\.[0-9]*\.[0-9]*\.[0-9]*\> .*\:.*\:.*\:.*\>" >nul || ( set "_DNSHostMultiDump=" & set "_DNSHostDump=%%b" )
		if defined _flag-v if defined _DNSHostMultiDump <nul set /p =", "
		if defined _DNSHostDump if not [!_DNSHostDump!]==[0.0.0.0] (
			set "_RP_RouteBlockConfig="
			echo !_DNSHostDump! | find "." >nul && (set "_RP_RouteBlockConfig=4 ADD !_DNSHostDump! MASK !_RPanda_IPv4SubMask! !_RPanda_IPv4LoopBack!" & if defined _flag-v ( set /A "_RPanda_IPv4AdrCount=!_RPanda_IPv4AdrCount!+1" &set "_RP_NoAddress=" )) || (set "_RP_RouteBlockConfig=6 ADD !_DNSHostDump!/128 !_RPanda_IPv6LoopBack!" & if defined _flag-v ( set /A "_RPanda_IPv6AdrCount=!_RPanda_IPv6AdrCount!+1" &set "_RP_NoAddress=" ))
			if !_RP_IFCounter! equ 1 (
				route -p -!_RP_RouteBlockConfig! metric !_RPanda_debugMetric! IF !_RPandaIF1! >nul 2>&1
				route -p -!_RP_RouteBlockConfig! metric !_RPandaIFMetric1! IF !_RPandaIF1! >nul 2>&1
			) else if !_RP_IFCounter! gtr 1 (for /l %%Z in (1 1 !_RP_IFCounter!) do (
					route -p -!_RP_RouteBlockConfig! metric !_RPanda_debugMetric! IF !_RPandaIF%%Z! >nul 2>&1
					route -p -!_RP_RouteBlockConfig! metric !_RPandaIFMetric%%Z! IF !_RPandaIF%%Z! >nul 2>&1
			))
			if defined _flag-v <nul set /p ="!_DNSHostDump!"
	))
	if defined _flag-v (
		if defined _RP_NoAddress call :GUI 0E "Unable to resolve" 
		<nul set /p ="] "
		if not defined _RP_NoAddress <nul set /p ="BLOCKED"
		echo.
	) else (
		set RPandaGUISubREM=
		if !RPandaGUICount! geq 300 (set "RPandaGUISubMOD=50") else if !RPandaGUICount! geq 200 (set "RPandaGUISubMOD=20") else (set "RPandaGUISubMOD=10")
		set /a "RPandaGUISubREM=!RPandaGUICount! %% !RPandaGUISubMOD!"
		if !RPandaGUISubREM! equ 0 (
			if defined RPanda_GUI_IndexPA (set /A "RPanda_GUI_IndexPA=!RPanda_GUI_IndexPA!+1" &set /A "RPanda_GUI_IndexPB=!RPanda_GUI_IndexPA!+1") else (set /A "RPanda_GUI_IndexPA=!RPandaGUIFixedIndex!+1" &set /A "RPanda_GUI_IndexPB=!RPanda_GUI_IndexPA!+1")
			call :drawProgressBar !RPanda_GUI_IndexPA! "Blocking hosts"
			for /l %%z in (!RPanda_GUI_IndexPA! 1 !RPanda_GUI_IndexPB!) do call :drawProgressBar %%z
	))
	set "_RP_RawHost=" &set "_DNSHostDump=" &set "_DNSHostMultiDump="
)
goto RedPanda_Index
:RedPanda_Init_ICMPMode
for %%A in (!RedPanda_BlackHosts!) do (
	set "_RP_RawHost=%%A" &set "_RP_NoAddress=true"
	if defined _DUMP_MODE ( echo !_RP_RawHost!>>"!_EXTERNAL!_HOSTLIST_RAW.TXT" & echo  - Dumping HOSTNAME: !_RP_RawHost! )
	if not defined _flag-v (set /a "RPandaGUICount=!RPandaGUICount!+1") else (<nul set /p =".!BS!  - " &call :GUI 0f "!_RP_RawHost!" &<nul set /p =".!BS! [")
	for /f "Tokens=2 delims=[]" %%a in ('ping !_RP_RawHost! -4 -n 1 -l 1 -w 1 2^>Nul ^| findstr /r ".*[0-9]*\.[0-9]*\.[0-9]*\.[0-9]*"') do (set _RP_PingDump_IPv4=%%a)
	for /f "Tokens=2 delims=[]" %%a in ('ping !_RP_RawHost! -6 -n 1 -l 1 -w 1 2^>Nul ^| findstr /r ".*\:.*\:.*\:.*"') do (set _RP_PingDump_IPv6=%%a)
	if defined _RP_PingDump_IPv4 if not [!_RP_PingDump_IPv4!]==[0.0.0.0] (
		if !_RP_IFCounter! equ 1 (
			route -p -4 ADD !_RP_PingDump_IPv4! MASK !_RPanda_IPv4SubMask! !_RPanda_IPv4LoopBack! metric !_RPanda_debugMetric! IF !_RPandaIF1! >nul 2>&1
			route -p -4 ADD !_RP_PingDump_IPv4! MASK !_RPanda_IPv4SubMask! !_RPanda_IPv4LoopBack! metric !_RPandaIFMetric1! IF !_RPandaIF1! >nul 2>&1
		) else if !_RP_IFCounter! gtr 1 (for /l %%Z in (1 1 !_RP_IFCounter!) do (
				route -p -4 ADD !_RP_PingDump_IPv4! MASK !_RPanda_IPv4SubMask! !_RPanda_IPv4LoopBack! metric !_RPanda_debugMetric! IF !_RPandaIF%%Z! >nul 2>&1
				route -p -4 ADD !_RP_PingDump_IPv4! MASK !_RPanda_IPv4SubMask! !_RPanda_IPv4LoopBack! metric !_RPandaIFMetric%%Z! IF !_RPandaIF%%Z! >nul 2>&1
		))
		if defined _flag-v (set /A "_RPanda_IPv4AdrCount=!_RPanda_IPv4AdrCount!+1" &set "_RP_NoAddress=" &<nul set /p ="!_RP_PingDump_IPv4!")
	)
	if defined _RP_PingDump_IPv6 (
		if !_RP_IFCounter! equ 1 (
			route -p -6 ADD !_RP_PingDump_IPv6!/128 !_RPanda_IPv6LoopBack! metric !_RPanda_debugMetric! IF !_RPandaIF1! >nul 2>&1
			route -p -6 ADD !_RP_PingDump_IPv6!/128 !_RPanda_IPv6LoopBack! metric !_RPandaIFMetric1! IF !_RPandaIF1! >nul 2>&1
		) else if !_RP_IFCounter! gtr 1 (for /l %%Z in (1 1 !_RP_IFCounter!) do (
				route -p -6 ADD !_RP_PingDump_IPv6!/128 !_RPanda_IPv6LoopBack! metric !_RPanda_debugMetric! IF !_RPandaIF%%Z! >nul 2>&1
				route -p -6 ADD !_RP_PingDump_IPv6!/128 !_RPanda_IPv6LoopBack! metric !_RPandaIFMetric%%Z! IF !_RPandaIF%%Z! >nul 2>&1
		))
		if defined _flag-v (
			set /A "_RPanda_IPv6AdrCount=!_RPanda_IPv6AdrCount!+1" &set "_RP_NoAddress="
			if defined _RP_PingDump_IPv4 <nul set /p =", "
			<nul set /p =" !_RP_PingDump_IPv6!"
	))
	if defined _flag-v (
		if defined _RP_NoAddress call :GUI 0E "Unable to resolve" 
		<nul set /p ="] "
		if not defined _RP_NoAddress <nul set /p ="BLOCKED"
		echo.
	) else (
		set RPandaGUISubREM=
		if !RPandaGUICount! geq 300 (set "RPandaGUISubMOD=50") else if !RPandaGUICount! geq 200 (set "RPandaGUISubMOD=20") else (set "RPandaGUISubMOD=10")
		set /a "RPandaGUISubREM=!RPandaGUICount! %% !RPandaGUISubMOD!"
		if !RPandaGUISubREM! equ 0 (
			if defined RPanda_GUI_IndexPA (set /A "RPanda_GUI_IndexPA=!RPanda_GUI_IndexPA!+1" &set /A "RPanda_GUI_IndexPB=!RPanda_GUI_IndexPA!+1") else (set /A "RPanda_GUI_IndexPA=!RPandaGUIFixedIndex!+1" &set /A "RPanda_GUI_IndexPB=!RPanda_GUI_IndexPA!+1")
			call :drawProgressBar !RPanda_GUI_IndexPA! "Blocking hosts"
			for /l %%z in (!RPanda_GUI_IndexPA! 1 !RPanda_GUI_IndexPB!) do call :drawProgressBar %%z
	))
	set "_RP_RawHost=" &set "_RP_PingDump_IPv4=" &set "_RP_PingDump_IPv6="
)
:RedPanda_Index
if defined RedPanda_BlackHostsList_B ( set "RedPanda_BlackHosts=!RedPanda_BlackHostsList_B!" &set "RedPanda_BlackHostsList_B=" &goto RedPanda_Init )
if defined RedPanda_BlackHostsList_C ( set "RedPanda_BlackHosts=!RedPanda_BlackHostsList_C!" &set "RedPanda_BlackHostsList_C=" &goto RedPanda_Init )
:RedPanda_FinalizeBlock
if defined _flag-v (
	set /A "_RPanda_EndTotalCount=!_RPanda_IPv4AdrCount!+!_RPanda_IPv6AdrCount!"
	echo. &call :GUI 0f " -- Total addresses blocked: " &call :GUI 06 "!_RPanda_EndTotalCount!"
	<nul set /p =".!BS!  [ IPv4: " &call :GUI 06 "!_RPanda_IPv4AdrCount! " &<nul set /p =", IPv6: " &call :GUI 06 "!_RPanda_IPv6AdrCount! " &<nul set /p ="]" &echo. &echo.
) else (
	if !RPanda_GUI_IndexPB! gtr 0 if !RPanda_GUI_IndexPB! lss 95 (set "RPanda_FINFixedIndex=!RPanda_GUI_IndexPB!")
)
if defined _DEBUG_MODE (
	echo off
	echo. & goto BDShell
)
:RedPanda_SkipBlock
if defined _DUMP_MODE (
	sort < "!_EXTERNAL!_HOSTLIST_RAW.TXT" > "!_EXTERNAL!_HOSTLIST_SORTED.TXT"
	echo  - DONE. Sorted dump file is at: !_EXTERNAL!_HOSTLIST_SORTED.TXT
	pause>nul
	exit
)
if defined _flag-hostblock (
	set "_flag-hostblock=" &set "_BirdRuntimeFlag="
	if defined _BirdRuntimeMultiFlags set "_BirdRuntimeConfig=!_BirdRuntimeConfig:_HOSTBLOCK =!"
	goto SwitchFunctionTable
)
if not defined _flag-v (
	if not defined RPanda_FINFixedIndex (set "RPanda_FINFixedIndex=90")
	call :drawProgressBar !RPanda_FINFixedIndex! "Finalizing..."
	for /l %%f in (!RPanda_FINFixedIndex! 1 95) do ( call :drawProgressBar %%f ) 
)
:Optimize
if defined _flag-nospeed goto Cleanup
if defined _flag-v echo.
if defined _flag-v ( call :GUI 0f " ["&call :GUI !_BC_G!!_BC_I! " Optimizing network/system performance "&call :GUI 0f "]" /n )
if not defined _flag-w10 (
	if defined _flag-v echo  -- Disabling folder cache rebuilding
	reg add "HKCU\Software\Classes\Local Settings\Software\Microsoft\Windows\Shell\Bags\AllFolders\Shell" /v "FolderType" /t REG_SZ /d "NotSpecified" /f >nul 2>&1
)
if defined _flag-w10 (
	if defined _flag-v echo  -- Disabling Automatic Restart Sign-On
	reg add "HKLM\Software\Microsoft\Windows\CurrentVersion\Policies\System" /v "DisableAutomaticRestartSignOn" /t REG_DWORD /d "1" /f >nul 2>&1
	if defined os64bit reg add "HKLM\SOFTWARE\WOW6432Node\Microsoft\Windows\CurrentVersion\Policies\System" /v "DisableAutomaticRestartSignOn" /t REG_DWORD /d "1" /f >nul 2>&1
)
if defined _flag-v echo  -- Disabling network speed throttling
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile" /v "NetworkThrottlingIndex" /t REG_DWORD /d 0xffffffff /f >nul 2>&1
if defined _flag-v echo  -- Disabling TCP heuristics
netsh int tcp set heuristics disabled >nul 2>&1
if defined _flag-v echo  -- Setting global congestion provider to 'CTCP'
netsh int tcp set global congestionprovider=ctcp >nul 2>&1
if defined _flag-v echo  -- Receive Side Scaling enabled
netsh int tcp set global rss=enabled >nul 2>&1
if defined _flag-v echo  -- TCP Chimney Offloading enabled
netsh int tcp set global chimney=enabled >nul 2>&1
if defined _flag-v echo  -- ECN capability enabled
netsh int tcp set global ecncapability=enabled >nul 2>&1
if defined _flag-v echo  -- Reducing menu show delay
reg add "HKCU\Control Panel\Desktop" /v "MenuShowDelay" /t REG_SZ /d "150" /f >nul 2>&1
:Cleanup
if defined _flag-v ( echo.&echo. )
if defined _flag-v ( call :GUI 0f " ["&call :GUI !_BC_G!!_BC_I! " Cleaning up "&call :GUI 0f "]" /n )
if defined _flag-w10 goto Cleanup_BlackTemp
if exist "!systemdrive!\$Windows.~BT\" (set "FoundinstallW10=true") else if exist "!systemdrive!\$Windows.~WS\" (set "FoundinstallW10=true")
if not defined FoundinstallW10 goto Cleanup_BlackTemp
if defined _flag-v echo  -- Removing Windows 10 install files
if exist "!systemdrive!\$Windows.~BT\" (
	attrib -s -h -r "!systemdrive!\$Windows.~BT" /S /D >nul 2>&1
	attrib -s -h -r /S /D "!systemdrive!\$Windows.~BT\*.*" >nul 2>&1
	takeown /F "!systemdrive!\$Windows.~BT" /r /d y >nul 2>&1
	icacls "!systemdrive!\$Windows.~BT" /grant "!_blackname!":F /T /C /Q >nul 2>&1
	icacls "!systemdrive!\$Windows.~BT" /remove:g system /inheritance:r /deny "SYSTEM:(OI)(CI)(IO)(F)" /T /C /Q >nul 2>&1
	icacls "!systemdrive!\$Windows.~BT" /remove TrustedInstaller /T >nul 2>&1
	del /F /Q /S "!systemdrive!\$Windows.~BT\*" >nul 2>&1
	RD /S /Q "!systemdrive!\$Windows.~BT" >nul 2>&1
)
if exist "!systemdrive!\$Windows.~WS\" (
	attrib -s -h -r "!systemdrive!\$Windows.~WS" /S /D >nul 2>&1
	attrib -s -h -r /S /D "!systemdrive!\$Windows.~WS\*.*" >nul 2>&1
	takeown /F "!systemdrive!\$Windows.~WS" /r /d y >nul 2>&1
	icacls "!systemdrive!\$Windows.~WS" /grant "!_blackname!":F /T /C /Q >nul 2>&1
	icacls "!systemdrive!\$Windows.~WS" /remove:g system /inheritance:r /deny "SYSTEM:(OI)(CI)(IO)(F)" /T /C /Q >nul 2>&1
	icacls "!systemdrive!\$Windows.~WS" /remove TrustedInstaller /T /C /Q >nul 2>&1
	del /F /Q /S "!systemdrive!\$Windows.~WS\*" >nul 2>&1
	RD /S /Q "!systemdrive!\$Windows.~WS" >nul 2>&1
)
if not defined _flag-v (
	call :drawProgressBar 96 "Finalizing..."
	for /l %%f in (96 1 99) do ( call :drawProgressBar %%f )
)
:Cleanup_BlackTemp
if defined _flag-v echo  -- Removing temporary Blackbird files
if not defined _flag-v (
	call :drawProgressBar 99 "Done"
	for /l %%f in (99 1 100) do ( call :drawProgressBar %%f )
)
call :GetClean
echo.&echo.
if not defined _flag-v (set "_BBEndDbg=!BS!  "&echo.)
<nul set /p =".!BS! !_BBEndDbg!["
call :GUI !_BC_A!!_BC_C! " Successfully completed "
<nul set /p ="]"&echo.
if defined _flag-v (
	call :GetElapsedTime "!_BirdTakeoffTime!" _BirdFlightTotalTime
	if defined _BirdTakeoffTime if defined _BirdFlightTotalTime ( <nul set /p =".!BS!  Total time elapsed: "&call :GUI 0f "!_BirdFlightTotalTime!" /n )
	echo.
)
call :GUI 0f " !_BBEndDbg! Please restart your computer for changes to take effect. "
if exist "!systemroot!\system32\WgaLogon.dll.bak" ( echo. &call :GUI 0f " !_BBEndDbg! Note: Run Blackbird again after rebooting to finalize WGA removal.")
echo.&echo.
call :GetClean
if not defined _flag-s pause>nul
if defined _BirdRuntimeNoDeepSwitch (exit) else (goto :eof)

:Blackbird_Recovery
if defined _BirdRuntimeNoDeepSwitch cls
set "_Recovery_SysVersion=!_SysVersion!" &set "_Recovery_BackupTimestampRAW="
if defined _flag-extbackup (
	set "_Recovery_BackupFilePath=!_EXTERNAL!BlackbirdBackup"
	for /F "Tokens=2 delims=[]" %%A in ('findstr /ir "\<timestamp#.*" "!_Recovery_BackupFilePath!"') do (set "_Recovery_BackupTimestampRAW=%%A")
)
echo.
call :GUI 0f "   B l a c k b i r d  "&call :GUI 06 "V6"
<nul set /p =".!BS!!__SIZE_Debug!       "&call :GUI 0f "Windows privacy, security and performance" /n
<nul set /p =".!BS!!__SIZE_Debug!                                                        "&call :GUI 06 "Version !blackbird_ver!" /n
echo.
call :GUI !_BC_E!!_BC_H! "  ["&call :GUI !_BC_A!!_BC_C! "  RECOVERY MODE  "&call :GUI !_BC_E!!_BC_H! "]" /n &echo.
echo    Restore all changes made by Blackbird. &echo.
if defined _OS-UNKNOWN (<nul set /p =".!BS!   "&call :GUI !_BC_B!!_BC_D! " WARNING "&call :GUI 0f " !_VerboseOS! " /n &echo.)
if not defined _flag-extbackup (
	call :GUI 0e "   [ ALERT ]"&call :GUI 0f " No backup file found" /n
	call :GUI 0f "   Continuing will restore all values to Windows DEFAULTS"
	<nul set /p ="^!"&echo.
	call :GUI 0f "   Any custom privacy settings will also be reset." /n
) else (
	<nul set /p =".!BS!   "&call :GUI !_BC_A!!_BC_C! " Backup found " /n
	if defined _Recovery_BackupTimestampRAW (
		set "_Recovery_BackupTimestampDirty=!_Recovery_BackupTimestampRAW: =!"
		set "_Recovery_BackupTimestampDirty=!_Recovery_BackupTimestampDirty:T= at !"
		set "_Recovery_BackupTimestampCLEAN=!_Recovery_BackupTimestampDirty:@= at !"
		call :GUI 0f "   Created:  "
		<nul set /p ="!_Recovery_BackupTimestampCLEAN!"&echo.
	)
	call :GUI 0f "   Filepath: "
	<nul set /p ="!_Recovery_BackupFilePath!"&echo.
)
if defined _flag-extbackup (
	if not defined _flag-s if not defined _FEED (
		echo.&echo.
		call :GUI 0f "   Press any key to"&call :GUI !_BC_E!!_BC_F! " restore "&call :GUI 0f "backup file > "
		pause >nul
		goto Recovery_BACKUP
	)
	if not defined _flag-s if defined _FEED (
		echo. &set "_BirdInput="
		<nul set /p =".!BS!   ["&call :GUI 0f " > "
		<nul set /p ="] Press"&call :GUI 0f " D "
		<nul set /p ="to restore Windows DEFAULTS instead."&echo.
		<nul set /p =".!BS!   ["&call :GUI 0f " > "
		<nul set /p ="] Press"&call :GUI 0f " Q "
		if defined _BirdRuntimeNoDeepSwitch (<nul set /p ="to quit and return to the main window."&echo.)
		if not defined _BirdRuntimeNoDeepSwitch (<nul set /p ="to quit."&echo.)
		echo.&echo.
		call :GUI 0f "   Press any other key to"&call :GUI !_BC_E!!_BC_F! " restore "&call :GUI 0f "backup file > "
		for /F "delims=" %%B in ('xcopy /L /w "!_FEED!" "!_FEED!" 2^>NUL') do ( if not defined _BirdInput set "_BirdInput=%%B" )
		set "_BirdInput=!_BirdInput:~-1!"
		if defined _BirdRuntimeNoDeepSwitch if /i [!_BirdInput!]==[q] ( cls & goto Birdboot )
		if not defined _BirdRuntimeNoDeepSwitch if /i [!_BirdInput!]==[q] ( echo. & goto :eof )
		if /i [!_BirdInput!]==[d] goto Recovery_DEFAULTS
	)
	goto Recovery_BACKUP
)
if not defined _flag-extbackup (
	if not defined _flag-s if not defined _FEED (
		echo.&echo.
		call :GUI 0f "   Press any key to"&call :GUI !_BC_E!!_BC_F! " recover "&call :GUI 0f "your computer to default state > "
		pause >nul
		goto Recovery_DEFAULTS
	)
	if not defined _flag-s if defined _FEED (
		echo. &set "_BirdInput="
		<nul set /p =".!BS!   ["&call :GUI 0f " > "
		<nul set /p ="] Press"&call :GUI 0f " Q "
		if defined _BirdRuntimeNoDeepSwitch (<nul set /p ="to quit and return to the main window."&echo.)
		if not defined _BirdRuntimeNoDeepSwitch (<nul set /p ="to quit."&echo.)
		echo.&echo.
		call :GUI 0f "   Press any other key to"&call :GUI !_BC_E!!_BC_F! " recover "&call :GUI 0f "your computer to default state > "
		for /F "delims=" %%B in ('xcopy /L /w "!_FEED!" "!_FEED!" 2^>NUL') do ( if not defined _BirdInput set "_BirdInput=%%B" )
		set "_BirdInput=!_BirdInput:~-1!"
		if defined _BirdRuntimeNoDeepSwitch if /i [!_BirdInput!]==[q] ( cls & goto Birdboot )
		if not defined _BirdRuntimeNoDeepSwitch if /i [!_BirdInput!]==[q] ( echo. & goto :eof )
	)
	goto Recovery_DEFAULTS
)

:Recovery_DEFAULTS
echo.&echo.
if defined _DEBUG_MODE ( echo on )
set "_RecoveryDEFAULTS_GlobalIAI=" &set "_RecoveryDEFAULTS_TaskIAI=" &set "_RecoveryDEFAULTS_AutologIAI=" &set "_RecoveryDEFAULTS_ServiceIAI="
rem ----LATER----
GOTO Recovery_DEFAULTS_Registry
if defined _flag-w10 (
	set _RecoveryDEFAULTS_AppsIAI=
	<nul set /p =".!BS!  - Recovering applications ......... "
	if not exist "!systemdrive!\Windows\immersiveControlPanel\SystemSettings.exe" if exist "!systemdrive!\Windows\immersiveControlPanel\SystemSettings.!_BakString!" (
		ren "!systemdrive!\Windows\immersiveControlPanel\SystemSettings.!_BakString!" SystemSettings.exe >nul 2>&1
		icacls "!systemdrive!\Windows\immersiveControlPanel\SystemSettings.exe" /grant TrustedInstaller:F /C /Q >nul 2>&1
		if not exist !systemdrive!\Windows\immersiveControlPanel\SystemSettings.exe (
			set _RecoveryDEFAULTS_AppsIAI=true
			echo. &call :GUI 0e "  [ALERT]" &call :GUI 0f " Failed to restore app: "
			<nul set /p ="SystemSettings.exe"&echo.
		)
	)
	icacls "!ALLUSERSPROFILE!\Microsoft\Diagnosis" /grant SYSTEM:F /T /C /Q >nul 2>&1
	icacls "!ALLUSERSPROFILE!\Microsoft\Diagnosis" | findstr "!computername!.*SYSTEM.*(F) ">nul || (
		set _RecoveryDEFAULTS_AppsIAI=true
		echo. &call :GUI 0e "  [ALERT]" &call :GUI 0f " Failed to restore permissions: "
		<nul set /p ="!ALLUSERSPROFILE!\Microsoft\Diagnosis"&echo.
	)
	if not defined _RecoveryDEFAULTS_AppsIAI ( call :GUI !_BC_E!!_BC_F! "OK" )
	echo.
)
:Recovery_DEFAULTS_Registry
<nul set /p =".!BS! - Recovering registry ............. "
if not defined _flag-w10 (
	reg add "HKLM\Software\Microsoft\Windows NT\CurrentVersion\AppCompatFlags\AIT" /v "AITEnable" /t REG_DWORD /d "1" /f >nul 2>&1
	reg add "HKLM\Software\Microsoft\Windows NT\CurrentVersion\AppCompatFlags\ClientTelemetry" /v "TaskEnableRun" /t REG_DWORD /d "3" /f >nul 2>&1
	reg add "HKLM\SOFTWARE\Microsoft\Windows\ScheduledDiagnostics" /v "EnabledExecution" /t REG_DWORD /d "1" /f >nul 2>&1
	reg add "HKLM\Software\Microsoft\Windows\CurrentVersion\WindowsUpdate" /v "IncludeRecommendedUpdates" /t REG_DWORD /d "1" /f >nul 2>&1
	reg query HKEY_LOCAL_MACHINE\Software\Policies\Microsoft\Windows | findstr /i "DataCollection\\" >nul && (
		reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\DataCollection" /v "DisableEnterpriseAuthProxy" /t REG_DWORD /d "1" /f >nul 2>&1
		reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\DataCollection" /v "TelemetryProxy" /t REG_DWORD /d "0" /f >nul 2>&1
	)
	reg query HKEY_LOCAL_MACHINE\Software\Policies\Microsoft | findstr /i "SQMClient\\" >nul && (
		reg add "HKLM\SOFTWARE\Policies\Microsoft\SQMClient\Windows" /v "CEIPEnable" /t REG_DWORD /d "1" /f >nul 2>&1
	)
	reg query HKEY_LOCAL_MACHINE\Software\Policies\Microsoft\Windows | findstr /i "WindowsUpdate\\" >nul && (
		reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate\AU" /v "NoAutoRebootWithLoggedOnUsers" /t REG_DWORD /d "0" /f >nul 2>&1
	)
	reg query HKEY_LOCAL_MACHINE\Software\Policies\Microsoft | findstr /i "Peernet\\" >nul && (
		reg add "HKLM\Software\Policies\Microsoft\Peernet" /v "Disabled" /t REG_DWORD /d "0" /f >nul 2>&1
	)
)
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Remote Assistance" /v "fAllowToGetHelp" /t REG_DWORD /d "1" /f >nul 2>&1
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Remote Assistance" /v "fAllowFullControl" /t REG_DWORD /d "1" /f >nul 2>&1
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Diagnostics\DiagTrack" /v "DiagTrackAuthorization" /t REG_DWORD /d "513" /f >nul 2>&1
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Diagnostics\DiagTrack" /v "ConnectivityNoNetworkTime" /t REG_DWORD /d "0" /f >nul 2>&1
reg add "HKLM\Software\Microsoft\Windows\ScriptedDiagnosticsProvider\Policy" /v "EnableQueryRemoteServer" /t REG_DWORD /d "1" /f >nul 2>&1
reg add "HKLM\SOFTWARE\Microsoft\Windows\ScheduledDiagnostics" /v "EnabledExecution" /t REG_DWORD /d "1" /f >nul 2>&1
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "UseDomainNameDevolution" /t REG_DWORD /d "1" /f >nul 2>&1
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Device Metadata" /v "PreventDeviceMetadataFromNetwork" /t REG_DWORD /d "0" /f >nul 2>&1
reg query HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters | findstr /i "IGMPLevel">nul && (
	reg add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "IGMPLevel" /t REG_DWORD /d "0" /f >nul 2>&1
	reg delete HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters /v IGMPLevel /f >nul 2>&1
)
reg query HKLM\SYSTEM\CurrentControlSet\Control\Lsa\MSV1_0 | findstr /i "RestrictReceivingNTLMTraffic">nul && (
	reg add "HKLM\SYSTEM\CurrentControlSet\Control\Lsa\MSV1_0" /v "RestrictReceivingNTLMTraffic" /t REG_DWORD /d "0" /f >nul 2>&1
	reg delete HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Lsa\MSV1_0 /v RestrictReceivingNTLMTraffic /f >nul 2>&1
)
reg query HKLM\SYSTEM\CurrentControlSet\Control\Lsa\MSV1_0 | findstr /i "RestrictSendingNTLMTraffic">nul && (
	reg add "HKLM\SYSTEM\CurrentControlSet\Control\Lsa\MSV1_0" /v "RestrictSendingNTLMTraffic" /t REG_DWORD /d "0" /f >nul 2>&1
	reg delete HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Lsa\MSV1_0 /v RestrictSendingNTLMTraffic /f >nul 2>&1
)
reg query HKLM\SYSTEM\CurrentControlSet\Services\LanmanServer\Parameters | findstr /i "SMB1">nul && (
	reg add "HKLM\SYSTEM\CurrentControlSet\Services\LanmanServer\Parameters" /v "SMB1" /t REG_DWORD /d "0" /f >nul 2>&1
	reg delete HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\LanmanServer\Parameters /v SMB1 /f >nul 2>&1
)
reg add "HKLM\SOFTWARE\Microsoft\Windows\Windows Error Reporting" /v "Disabled" /t REG_DWORD /d "0" /f >nul 2>&1
reg add "HKLM\SOFTWARE\Microsoft\Windows\Windows Error Reporting\WMR" /v "Disable" /t REG_DWORD /d "0" /f >nul 2>&1
reg add "HKLM\SOFTWARE\Microsoft\Windows\Windows Error Reporting\Consent" /v "DefaultConsent" /t REG_DWORD /d "1" /f >nul 2>&1
reg add "HKLM\SOFTWARE\Microsoft\Windows\Windows Error Reporting\Consent" /v "NewUserDefaultConsent" /t REG_DWORD /d "1" /f >nul 2>&1
reg query HKEY_LOCAL_MACHINE\Software\Policies\Microsoft | findstr /i "Defender\\" >nul && (
	reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender\Spynet" /v "SpyNetReporting" /t REG_DWORD /d "1" /f >nul 2>&1
	reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender\Spynet" /v "SubmitSamplesConsent" /t REG_DWORD /d "0" /f >nul 2>&1
)
reg query "HKEY_LOCAL_MACHINE\Software\Policies\Microsoft\Windows NT" | findstr /i "DNSClient\\" >nul && (
	reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows NT\DNSClient" /v "DisableSmartNameResolution" /t REG_DWORD /d "0" /f >nul 2>&1
	reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows NT\DNSClient" /v "EnableMulticast" /t REG_DWORD /d "1" /f >nul 2>&1
)
reg query HKEY_LOCAL_MACHINE\Software\Policies\Microsoft\Windows | findstr /i "DataCollection\\" >nul && (
	reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\DataCollection" /v "AllowTelemetry" /t REG_DWORD /d "1" /f >nul 2>&1
)
if defined os64bit (
	reg query HKEY_LOCAL_MACHINE\Software\WOW6432Node\Microsoft\Windows\CurrentVersion\Policies | findstr /i "DataCollection\\" >nul && (
		reg add "HKLM\SOFTWARE\WOW6432Node\Microsoft\Windows\CurrentVersion\Policies\DataCollection" /v "AllowTelemetry" /t REG_DWORD /d "1" /f >nul 2>&1
	)
)
if defined _flag-w10 (
	if defined _flag-w10red4 (
		reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\AppPrivacy" /v "LetAppsRunInBackground" /t REG_DWORD /d "1" /f >nul 2>&1
	)
	reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer" /v SmartScreenEnabled /t REG_SZ /d "On" /f >nul 2>&1
	reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Privacy" /v "TailoredExperiencesWithDiagnosticDataEnabled" /t REG_DWORD /d "1" /f >nul 2>&1
	reg add HKU\!UserSID!\Software\Microsoft\Windows\CurrentVersion\Privacy /v "TailoredExperiencesWithDiagnosticDataEnabled" /t REG_DWORD /d "1" /f >nul 2>&1
	reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\AppHost" /v "EnableWebContentEvaluation" /t REG_DWORD /d "1" /f >nul 2>&1
	reg add HKU\!UserSID!\SOFTWARE\Microsoft\Windows\CurrentVersion\AppHost /v "EnableWebContentEvaluation" /t REG_DWORD /d "1" /f >nul 2>&1
	reg add "HKLM\SOFTWARE\Microsoft\UEV\Agent\Configuration" /v "CustomerExperienceImprovementProgram" /t REG_DWORD /d "1" /f >nul 2>&1
	reg add "HKLM\SOFTWARE\Microsoft\UEV\Agent\Configuration" /v "SyncEnabled" /t REG_DWORD /d "1" /f >nul 2>&1
	reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AdvertisingInfo" /v "Enabled" /t REG_DWORD /d "1" /f >nul 2>&1
	reg add "HKCU\SOFTWARE\Microsoft\Windows\Windows Error Reporting" /v "AutoApproveOSDumps" /t REG_DWORD /d "0" /f >nul 2>&1
	reg add "HKCU\SOFTWARE\Microsoft\Windows\Windows Error Reporting" /v "ConfigureArchive" /t REG_DWORD /d "1" /f >nul 2>&1
	reg add "HKCU\SOFTWARE\Microsoft\Windows\Windows Error Reporting" /v "DisableArchive" /t REG_DWORD /d "0" /f >nul 2>&1
	reg add "HKCU\SOFTWARE\Microsoft\Windows\Windows Error Reporting" /v "Disabled" /t REG_DWORD /d "0" /f >nul 2>&1
	reg add "HKCU\SOFTWARE\Microsoft\Windows\Windows Error Reporting" /v "DontSendAdditionalData" /t REG_DWORD /d "0" /f >nul 2>&1
	reg add "HKCU\SOFTWARE\Microsoft\Windows\Windows Error Reporting" /v "LoggingDisabled" /t REG_DWORD /d "0" /f >nul 2>&1
	set "_RecoverDEFAULTS_RegEReport_QuotedPath=^"HKU\!UserSID!\Software\Microsoft\Windows\Windows Error Reporting^""
	reg add !_RecoverDEFAULTS_RegEReport_QuotedPath! /v "AutoApproveOSDumps" /t REG_DWORD /d "0" /f >nul 2>&1
	reg add !_RecoverDEFAULTS_RegEReport_QuotedPath! /v "ConfigureArchive" /t REG_DWORD /d "0" /f >nul 2>&1
	reg add !_RecoverDEFAULTS_RegEReport_QuotedPath! /v "DisableArchive" /t REG_DWORD /d "0" /f >nul 2>&1
	reg add !_RecoverDEFAULTS_RegEReport_QuotedPath! /v "Disabled" /t REG_DWORD /d "0" /f >nul 2>&1
	reg add !_RecoverDEFAULTS_RegEReport_QuotedPath! /v "DontSendAdditionalData" /t REG_DWORD /d "0" /f >nul 2>&1
	reg add !_RecoverDEFAULTS_RegEReport_QuotedPath! /v "LoggingDisabled" /t REG_DWORD /d "0" /f >nul 2>&1
	reg add HKU\!UserSID!\SOFTWARE\Microsoft\Windows\CurrentVersion\AdvertisingInfo /v "Enabled" /t REG_DWORD /d "1" /f >nul 2>&1
	reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\AdvertisingInfo" /v "Enabled"  /t REG_DWORD /d "1" /f >nul 2>&1
	reg add "HKLM\SYSTEM\CurrentControlSet\Services\Dnscache\Parameters" /v "DisableParallelAandAAAA" /t REG_DWORD /d "0" /f >nul 2>&1
	reg add HKU\!UserSID!\SOFTWARE\Microsoft\Windows\CurrentVersion\PushNotifications /v "NoTileApplicationNotification" /t REG_DWORD /d "0" /f >nul 2>&1
	reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\PushNotifications" /v "NoTileApplicationNotification" /t REG_DWORD /d "0" /f >nul 2>&1
	reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Search" /v "CortanaCapabilities" /t REG_SZ /d "BrowsingHistory,SpeechLanguage" /f >nul 2>&1
	reg add HKU\!UserSID!\Software\Microsoft\Windows\CurrentVersion\Search /v "CortanaCapabilities" /t REG_SZ /d "BrowsingHistory,SpeechLanguage" /f >nul 2>&1
	reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Search" /v "CortanaCapabilityFlags" /t REG_DWORD /d "4608" /f >nul 2>&1
	reg add HKU\!UserSID!\Software\Microsoft\Windows\CurrentVersion\Search /v "CortanaCapabilityFlags" /t REG_DOWRD /d "4608" /f >nul 2>&1
	reg query HKLM\SOFTWARE\Policies\Microsoft | findstr /i "SearchCompanion\\" >nul && (
		reg add "HKLM\SOFTWARE\Policies\Microsoft\SearchCompanion" /v "DisableContentFileUpdates" /t REG_DWORD /d "0" /f >nul 2>&1
	)
	reg query HKEY_CURRENT_USER\SOFTWARE\Policies\Microsoft | findstr /i "Office\\" >nul && (
		reg query HKEY_CURRENT_USER\SOFTWARE\Policies\Microsoft\Office | findstr /i "15\.0" >nul && (
			reg add "HKCU\Software\Policies\Microsoft\Office\15.0\osm" /v "enablelogging" /t REG_DWORD /d "1" /f >nul 2>&1
			reg add "HKCU\Software\Policies\Microsoft\Office\15.0\osm" /v "enablefileobfuscation" /t REG_DWORD /d "0" /f >nul 2>&1
			reg add "HKCU\Software\Policies\Microsoft\Office\15.0\osm" /v "enableupload" /t REG_DWORD /d "1" /f >nul 2>&1
		)
		reg query HKEY_CURRENT_USER\SOFTWARE\Policies\Microsoft\Office | findstr /i "16\.0" >nul && (
			reg add "HKCU\Software\Policies\Microsoft\Office\16.0\osm" /v "enablelogging" /t REG_DWORD /d "1" /f >nul 2>&1
			reg add "HKCU\Software\Policies\Microsoft\Office\16.0\osm" /v "enablefileobfuscation" /t REG_DWORD /d "0" /f >nul 2>&1
			reg add "HKCU\Software\Policies\Microsoft\Office\16.0\osm" /v "enableupload" /t REG_DWORD /d "1" /f >nul 2>&1
	))
	reg query HKLM\SOFTWARE\Policies\Microsoft | findstr /i "PCHealth\\" >nul && (
		reg query HKLM\SOFTWARE\Policies\Microsoft\PCHealth | findstr /i "ErrorReporting\\" >nul && (
			reg add "HKLM\SOFTWARE\Policies\Microsoft\PCHealth\ErrorReporting" /v "DoReport" /t REG_DWORD /d "1" /f >nul 2>&1
			rem reg delete "HKLM\SOFTWARE\Policies\Microsoft\PCHealth\ErrorReporting" /v "ForceQueueMode" /f >nul 2>&1
		)
		reg query HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\PCHealth | findstr /i "DW\\" >nul && (
			reg add "HKLM\SOFTWARE\Policies\Microsoft\PCHealth\ErrorReporting\DW" /v "DWNoExternalURL" /t REG_DWORD /d "0" /f >nul 2>&1
			reg add "HKLM\SOFTWARE\Policies\Microsoft\PCHealth\ErrorReporting\DW" /v "DWNoFileCollection" /t REG_DWORD /d "0" /f >nul 2>&1
			reg add "HKLM\SOFTWARE\Policies\Microsoft\PCHealth\ErrorReporting\DW" /v "DWNoSecondLevelCollection" /t REG_DWORD /d "0" /f >nul 2>&1
	))
	reg query HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows | findstr /i " Search\\" >nul && (
		set "__RecoverDEFAULTS_KeySet=AllowCortana DisableWebSearch AllowSearchToUseLocation ConnectedSearchPrivacy ConnectedSearchSafeSearch ConnectedSearchUseWeb ConnectedSearchUseWebOverMeteredConnections"
		for %%Z in (!__RecoverDEFAULTS_KeySet!) do (
			reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Search" /v "%%Z" /t REG_DWORD /d "1" /f >nul 2>&1
	))
	set "__RecoverDEFAULTS_ForKey=" &set "__RecoverDEFAULTS_KeySet=SystemPaneSuggestionsEnabled SoftLandingEnabled OemPreInstalledAppsEnabled PreInstalledAppsEnabled SilentInstalledAppsEnabled ContentDeliveryAllowed RotatingLockScreenEnabled RotatingLockScreenOverlayEnabled"
	for %%r in (!__RecoverDEFAULTS_KeySet!) do (
		set "__RecoverDEFAULTS_ForKey=%%r"
		reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v !__RecoverDEFAULTS_ForKey! /t REG_DWORD /d "1" /f >nul 2>&1
		if defined _flag-w10red reg add HKU\!UserSID!\SOFTWARE\Microsoft\Windows\CurrentVersion\ContentDeliveryManager /v !__RecoverDEFAULTS_ForKey! /t REG_DWORD /d "1" /f >nul 2>&1
	)
	set "__RecoverDEFAULTS_ForKey=" &set "__RecoverDEFAULTS_KeySet=CortanaEnabled AnyAboveLockAppsActive CortanaConsent CortanaInAmbientMode BingSearchEnabled DeviceHistoryEnabled HasAboveLockTips IsAssignedAccess IsMicrophoneAvailable IsWindowsHelloActive"
	for %%r in (!__RecoverDEFAULTS_KeySet!) do (
		set "__RecoverDEFAULTS_ForKey=%%r"
		reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Search" /v !__RecoverDEFAULTS_ForKey! /t REG_DWORD /d "1" /f >nul 2>&1
		if defined _flag-w10red reg add HKU\!UserSID!\Software\Microsoft\Windows\CurrentVersion\Search /v !__RecoverDEFAULTS_ForKey! /t REG_DWORD /d "1" /f >nul 2>&1
	)
	for /F "tokens=* usebackq delims=" %%r in (`reg query "HKCU\Software\Microsoft\Windows\CurrentVersion\DeviceAccess\Global" ^| findstr /i "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\DeviceAccess\Global\\"`) do (
		set "__RecoverDEFAULTS_RegFullPath=" &set "__RecoverDEFAULTS_RegCutPath="
		set __RecoverDEFAULTS_RegFullPath=%%r
		set "__RecoverDEFAULTS_RegCutPath=!__RecoverDEFAULTS_RegFullPath:HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\DeviceAccess\Global\=!"
		reg add HKCU\Software\Microsoft\Windows\CurrentVersion\DeviceAccess\Global\!__RecoverDEFAULTS_RegCutPath! /v "Value" /t REG_SZ /d "Allow" /f >nul 2>&1
		if defined _flag-w10red reg add HKU\!UserSID!\Software\Microsoft\Windows\CurrentVersion\DeviceAccess\Global\!__RecoverDEFAULTS_RegCutPath! /v "Value" /t REG_SZ /d "allow" /f >nul 2>&1
	)
	for /F "tokens=* usebackq delims=" %%r in (`reg query "HKCU\Software\Microsoft\Windows\CurrentVersion\SettingSync\Groups" ^| findstr /i "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\SettingSync\Groups\\"`) do (
		set "__RecoverDEFAULTS_RegFullPath=" &set "__RecoverDEFAULTS_RegCutPath="
		set __RecoverDEFAULTS_RegFullPath=%%r
		set "__RecoverDEFAULTS_RegCutPath=!__RecoverDEFAULTS_RegFullPath:HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\SettingSync\Groups\=!"
		reg add HKCU\Software\Microsoft\Windows\CurrentVersion\SettingSync\Groups\!__RecoverDEFAULTS_RegCutPath! /v "Enabled" /t REG_DWORD /d "1" /f >nul 2>&1
		if defined _flag-w10red reg add HKU\!UserSID!\Software\Microsoft\Windows\CurrentVersion\SettingSync\Groups\!__RecoverDEFAULTS_RegCutPath! /v "Enabled" /t REG_DWORD /d "1" /f >nul 2>&1
	)
	for /F "tokens=* usebackq delims=" %%r in (`reg query "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Diagnostics\DiagTrack\Tenants\P-ARIA" ^| findstr /i "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Diagnostics\DiagTrack\Tenants\P-ARIA\\"`) do (
		set "__RecoverDEFAULTS_RegFullPath=" &set "__RecoverDEFAULTS_RegCutPath="
		set __RecoverDEFAULTS_RegFullPath=%%r
		set "__RecoverDEFAULTS_RegCutPath=!__RecoverDEFAULTS_RegFullPath:HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Diagnostics\DiagTrack\Tenants\P-ARIA\=!"
		reg add HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Diagnostics\DiagTrack\Tenants\P-ARIA\!__RecoverDEFAULTS_RegCutPath! /v "Enabled" /t REG_DWORD /d "1" /f >nul 2>&1
	)
	set "__RecoverDEFAULTS_ForKey=" &set "__RecoverDEFAULTS_KeySet=EventDroppedConsumer EventDroppedUploader SettingsHttpAttempts VortexHttpAttempts EventsUploaded MaxActiveAgentConnections"
	for %%r in (!__RecoverDEFAULTS_KeySet!) do (
		set "__RecoverDEFAULTS_ForKey=%%r"
		reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Diagnostics\DiagTrack\HeartBeats" /v !__RecoverDEFAULTS_ForKey! /t REG_DWORD /d "1" /f >nul 2>&1
))
call :GUI !_BC_E!!_BC_F! "OK" /n
:Recovery_DEFAULTS_Tasks
<nul set /p =".!BS! - Recovering scheduled tasks ...... "
set "_Recovery_TaskML_DISABLED=Disabled"
if defined _BirdLangString if defined _Bird_ExtPS call :GetMLSET _Recovery_TaskML_DISABLED -SCHTASKS -DISABLED
if defined _flag-w10 (
	if exist "!BlackTemp!\blackbird.tempsch_raw.tmp" del /F /Q /S "!BlackTemp!\blackbird.tempsch_raw.tmp" >nul 2>&1
	if not exist "!BlackTemp!\blackbird.tempsch_raw.tmp" schtasks /query /fo list>>"!BlackTemp!\blackbird.tempsch_raw.tmp"
)
if not defined _flag-w10 if not exist "!BlackTemp!\blackbird.tempsch_raw.tmp" schtasks /query /fo list>>"!BlackTemp!\blackbird.tempsch_raw.tmp"
if not exist "!BlackTemp!\blackbird.tempsch_raw.tmp" (
	call :GUI !_BC_B!!_BC_D! " Failed " /n
	set "ERROR_NOTEMP_VALUE=!BlackTemp!\blackbird.tempsch_raw.tmp" & call :ERROR_NOTEMP _Soft
	echo  -- Skipping scheduled tasks . . . &echo.
	goto Recovery_DEFAULTS_Autolog
)
for %%A in (!_Bird_BigTaskPool!) do (
	set "_RecoveryDEFAULTS_TaskQueryPath=%%A"
	set "_RecoveryDEFAULTS_TaskQueryPath=!_RecoveryDEFAULTS_TaskQueryPath:$= !"
	set "_RecoveryDEFAULTS_TaskQueryPath=!_RecoveryDEFAULTS_TaskQueryPath:[=(!"
	set "_RecoveryDEFAULTS_TaskQueryPath=!_RecoveryDEFAULTS_TaskQueryPath:]=)!"
	set "_RecoveryDEFAULTS_TaskQueryPath=!_RecoveryDEFAULTS_TaskQueryPath:\=\\!"
	findstr /irc:".*!_RecoveryDEFAULTS_TaskQueryPath!\>" "!BlackTemp!\blackbird.tempsch_raw.tmp" >nul && (
		set "_RecoveryDEFAULTS_TaskQueryPath=!_RecoveryDEFAULTS_TaskQueryPath:\\=\!"
		set "_RecoveryDEFAULTS_TaskQueryPathQuoted=^"!_RecoveryDEFAULTS_TaskQueryPath!^""
		schtasks /query /TN !_RecoveryDEFAULTS_TaskQueryPathQuoted! | findstr /ir ".*!_Recovery_TaskML_DISABLED!\>">nul && (
			schtasks /Change /TN !_RecoveryDEFAULTS_TaskQueryPathQuoted! /Enable >nul 2>&1
			if defined _Bird_ExtPS (
				call :GetLastString "!_RecoveryDEFAULTS_TaskQueryPath!" __GLS_Result
				set "_RecoveryDEFAULTS_ExtTaskName=!__GLS_Result!"
				set "_RecoveryDEFAULTS_ExtTaskPath=!_RecoveryDEFAULTS_TaskQueryPath!"
				for %%B in ("!_RecoveryDEFAULTS_ExtTaskName!") do set "_RecoveryDEFAULTS_ExtLiveTaskPath=!_RecoveryDEFAULTS_ExtTaskPath:%%~B=!"
				powershell "Enable-ScheduledTask -TaskName '!_RecoveryDEFAULTS_ExtTaskName!' -TaskPath '!_RecoveryDEFAULTS_ExtLiveTaskPath!'" >nul 2>&1
			)
			schtasks /query /TN !_RecoveryDEFAULTS_TaskQueryPathQuoted! | findstr /ir ".*!_Recovery_TaskML_DISABLED!\>" >nul && (
				if not defined _RecoveryDEFAULTS_TaskIAI echo.
				set "_RecoveryDEFAULTS_TaskIAI=true" &set "_RecoveryDEFAULTS_GlobalIAI=true"
				call :GUI 0e "  [ALERT]"&call :GUI 0f " Failed to enable task: "
				<nul set /p ="!_RecoveryDEFAULTS_TaskQueryPath!"&echo.
))))
if not defined _RecoveryDEFAULTS_TaskIAI ( call :GUI !_BC_E!!_BC_F! "OK" )
echo.
:Recovery_DEFAULTS_Autolog
<nul set /p =".!BS! - Recovering autologgers .......... "
call :GetTreeBranch "_AUTOLOG_Template" __GTB_FullBranch
set "__GTB_FullBranch=%__GTB_FullBranch:##=!LineBreak!%"
for /F "delims=##" %%A in ("!__GTB_FullBranch!") do (
	reg add "%%A" /v "Start" /t REG_DWORD /d "1" /f >nul 2>&1
	reg query "%%A" /v "Start" | find "0x1">nul || (
		set __RecoveryDEFAULTS_AutologShortName=
		set __RecoveryDEFAULTS_AutologLongName=
		set "__RecoveryDEFAULTS_AutologLongName=%%A"
		set "__RecoveryDEFAULTS_AutologShortName=!__RecoveryDEFAULTS_AutologLongName:HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\WMI\Autologger\=!"
		if not defined _RecoveryDEFAULTS_AutologIAI echo.
		set "_RecoveryDEFAULTS_AutologIAI=true" &set "_RecoveryDEFAULTS_GlobalIAI=true"
		call :GUI 0e "  [ALERT]"&call :GUI 0f " Failed to enable autologger: "
		<nul set /p ="!__RecoveryDEFAULTS_AutologShortName!"&echo.
))
if not defined _RecoveryDEFAULTS_AutologIAI ( call :GUI !_BC_E!!_BC_F! "OK" )
echo.
:Recovery_DEFAULTS_Services
<nul set /p =".!BS! - Recovering services ............. "
set "__RecoverDEFAULTS_ServicesPool=!_Bird_BigServicePool!"
set "__RecoverDEFAULTS_ServicesPool=!__RecoverDEFAULTS_ServicesPool: HPTouchpointAnalyticsService = !"
set "__RecoverDEFAULTS_ServicesPool=!__RecoverDEFAULTS_ServicesPool: NvTelemetryContainer = !"
set "__RecoverDEFAULTS_ServicesPool=!__RecoverDEFAULTS_ServicesPool: VDWFP = !"
set "__RecoverDEFAULTS_ServicesPool=!__RecoverDEFAULTS_ServicesPool: VisualDiscovery = !"
for %%A in (!__RecoverDEFAULTS_ServicesPool!) do (
	set _RecoverDEFAULTS_ServiceName=%%A
	reg query HKLM\SYSTEM\CurrentControlSet\Services | findstr /irc:".*\\services\\!_RecoverDEFAULTS_ServiceName!$" >nul && (
		set "__RecoverDEFAULTS_ServiceConfig=" &set "__GSI_DEFAULTSTATE="
		call :GetServiceInfo "!_RecoverDEFAULTS_ServiceName!" __GSI_DEFAULTSTATE
		if defined __GSI_DEFAULTSTATE (
			if "!__GSI_DEFAULTSTATE!"=="boot" (set "__RecoverDEFAULTS_ServiceConfig=0") else if "!__GSI_DEFAULTSTATE!"=="delayed-auto" (set "__RecoverDEFAULTS_ServiceConfig=1") else if "!__GSI_DEFAULTSTATE!"=="auto" (set "__RecoverDEFAULTS_ServiceConfig=2") else if "!__GSI_DEFAULTSTATE!"=="demand" (set "__RecoverDEFAULTS_ServiceConfig=3") else if "!__GSI_DEFAULTSTATE!"=="disabled" (set "__RecoverDEFAULTS_ServiceConfig=4")
		) else (
			set "__GSI_DEFAULTSTATE=disabled" &set "__RecoverDEFAULTS_ServiceConfig=4"
		)
		call sc config !_RecoverDEFAULTS_ServiceName! start= !__GSI_DEFAULTSTATE! >nul 2>&1
		if defined _flag-w10 echo !_RecoverDEFAULTS_ServiceName! | findstr /i "!_Bird_DynamicServicePool!" > nul && (
			call :GetDSN "!_RecoverDEFAULTS_ServiceName!" _GDNFullName
			if defined _GDNFullName (
				reg add HKLM\SYSTEM\CurrentControlSet\Services\!_GDNFullName! /v Start /t REG_DWORD /d !__RecoverDEFAULTS_ServiceConfig! /f >nul 2>&1
				call sc config !_GDNFullName! start= !__GSI_DEFAULTSTATE! >nul 2>&1
				reg query HKLM\SYSTEM\CurrentControlSet\Services\!_GDNFullName! /v Start | find "0x!__RecoverDEFAULTS_ServiceConfig!">nul || (
					if not defined _RecoveryDEFAULTS_ServiceIAI echo.
					set "_RecoveryDEFAULTS_ServiceIAI=true" &set "_RecoveryDEFAULTS_GlobalIAI=true"
					call :GUI 0e "  [ALERT]"&call :GUI 0f " Failed to restore service: "
					<nul set /p ="!_GDNFullName!"&echo.
		)))
		reg add HKLM\SYSTEM\CurrentControlSet\Services\!_RecoverDEFAULTS_ServiceName! /v Start /t REG_DWORD /d !__RecoverDEFAULTS_ServiceConfig! /f >nul 2>&1
		reg query HKLM\SYSTEM\CurrentControlSet\Services\!_RecoverDEFAULTS_ServiceName! /v Start | find "0x!__RecoverDEFAULTS_ServiceConfig!">nul || (
			if not defined _RecoveryDEFAULTS_ServiceIAI echo.
			set "_RecoveryDEFAULTS_ServiceIAI=true" &set "_RecoveryDEFAULTS_GlobalIAI=true"
			call :GUI 0e "  [ALERT]"&call :GUI 0f " Failed to restore service: "
			<nul set /p ="!_RecoverDEFAULTS_ServiceName!"&echo.
)))
if not defined _RecoveryDEFAULTS_ServiceIAI ( call :GUI !_BC_E!!_BC_F! "OK" )
echo.
:Recovery_DEFAULTS_Network
<nul set /p =".!BS! - Recovering network settings ..... "
netsh int tcp set global autotuninglevel=normal >nul 2>&1
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile" /v "NetworkThrottlingIndex" /t REG_DWORD /d 10 /f >nul 2>&1
netsh int tcp set global congestionprovider=default >nul 2>&1
netsh int tcp set global chimney=disabled >nul 2>&1
netsh int tcp set global ecncapability=disabled >nul 2>&1
route -f >nul 2>&1
ipconfig /release >nul 2>&1
ipconfig /renew >nul 2>&1
ipconfig /flushdns >nul 2>&1
call :GUI !_BC_E!!_BC_F! "OK" /n
echo.
if defined _RecoveryDEFAULTS_GlobalIAI (
	<nul set /p =".!BS!  ["
	call :GUI !_BC_A!!_BC_C! " Recovery complete "
	<nul set /p ="]"&echo.
) else (
	<nul set /p =".!BS!  ["
	call :GUI !_BC_A!!_BC_C! " Successfully recovered to defaults "
	<nul set /p ="]"&echo.
)
call :GUI 0f "   Please restart your computer for changes to take effect. "
call :GetClean
echo.&echo.
if not defined _flag-s pause>nul
if defined _BirdRuntimeNoDeepSwitch ( cls &goto Birdboot ) else ( echo. &goto :eof )

:Recovery_BACKUP
echo.&echo.
if defined _DEBUG_MODE ( echo on )
if not defined _flag-extbackup goto Recovery_DEFAULTS
set "_Recovery_BackupGlobal_IAI=successfully "
if not exist "!_Recovery_BackupFilePath!" ( set "ERROR_RecNoExternalBackup_VALUE=!_Recovery_BackupFilePath!" &goto ERROR_RecNoExternalBackup )
<nul set /p =".!BS!  - Checking compatibility .......... "
findstr /i "winver#.*#" "!_Recovery_BackupFilePath!" | findstr /v "\;.*" >nul || ( 
	call :GUI !_BC_B!!_BC_D! " Failed " /n
	call :ERROR_RecInvalidBakCfg _WINVER
	echo. &goto Recovery_BACKUP_End
)
findstr /i "birdver#.*#" "!_Recovery_BackupFilePath!" | findstr /v "\;.*" >nul || (
	call :GUI !_BC_B!!_BC_D! " Failed " /n
	call :ERROR_RecInvalidBakCfg _BIRDVER
	echo. &goto Recovery_BACKUP_End
)
set _Recovery_VersionSlaveIAI=
for /f "eol=; usebackq tokens=* delims=" %%a in (`findstr /i "winver#" "!_Recovery_BackupFilePath!"`) do ( call :Recovery_VersionSlave "%%a" )
for /f "eol=; usebackq tokens=* delims=" %%a in (`findstr /i "birdver#" "!_Recovery_BackupFilePath!"`) do ( call :Recovery_VersionSlave "%%a" )
if not defined _Recovery_VersionSlaveIAI call :GUI !_BC_E!!_BC_F! "OK" /n
set _Recovery_BackupREG_Exec=
findstr /i "#NO-KEY" "!_Recovery_BackupFilePath!" | findstr /v "\;.*" >nul && set _Recovery_BackupREG_Exec=true
findstr /i "#REG_" "!_Recovery_BackupFilePath!" | findstr /v "\;.*" >nul && set _Recovery_BackupREG_Exec=true
if defined _Recovery_BackupREG_Exec (
	<nul set /p =".!BS!  - Recovering registry ............. "
	set _Recovery_RegistrySlaveIAI=
	for /f "eol=; usebackq tokens=* delims=" %%a in (`findstr /i "#NO-KEY" "!_Recovery_BackupFilePath!"`) do ( call :Recovery_RegistrySlave "%%a" )
	for /f "eol=; usebackq tokens=* delims=" %%a in (`findstr /i "#REG_" "!_Recovery_BackupFilePath!"`) do ( call :Recovery_RegistrySlave "%%a" )
	if not defined _Recovery_RegistrySlaveIAI (call :GUI !_BC_E!!_BC_F! "OK" /n) else (set "_Recovery_BackupGlobal_IAI=")
)
set _Recovery_BackupTASK_Exec=
for /l %%A in (0 1 1) do (findstr /i "#t0x%%A" "!_Recovery_BackupFilePath!" | findstr /v "\;.*" >nul && set _Recovery_BackupTASK_Exec=true)
if defined _Recovery_BackupTASK_Exec (
	<nul set /p =".!BS!  - Recovering scheduled tasks ...... "
	set "_RecoveryBACKUP_TaskML_DISABLED=Disabled"
	set "_RecoveryBACKUP_TaskML_ENABLED=Running\> .*Ready\> .*Queued"
	if defined _BirdLangString if defined _Bird_ExtPS call :GetMLSET _RecoveryBACKUP_TaskML_ENABLED -SCHTASKS -ENABLED
	if defined _BirdLangString if defined _Bird_ExtPS call :GetMLSET _RecoveryBACKUP_TaskML_DISABLED -SCHTASKS -DISABLED
	set _Recovery_TaskSlaveIAI=
	for /f "eol=; usebackq tokens=* delims=" %%a in (`findstr /i "#t0x0" "!_Recovery_BackupFilePath!"`) do ( call :Recovery_TaskSlave "%%a" disable )
	for /f "eol=; usebackq tokens=* delims=" %%a in (`findstr /i "#t0x1" "!_Recovery_BackupFilePath!"`) do ( call :Recovery_TaskSlave "%%a" enable )
	if not defined _Recovery_TaskSlaveIAI (call :GUI !_BC_E!!_BC_F! "OK" /n) else (set "_Recovery_BackupGlobal_IAI=")
)
set _Recovery_BackupAUTOLOG_Exec=
for /l %%A in (0 1 1) do (findstr /i "#a0x%%A" "!_Recovery_BackupFilePath!" | findstr /v "\;.*" >nul && set _Recovery_BackupAUTOLOG_Exec=true)
if defined _Recovery_BackupAUTOLOG_Exec (
	<nul set /p =".!BS!  - Recovering autologgers .......... "
	set _Recovery_AutologSlaveIAI=
	for /f "eol=; usebackq tokens=* delims=" %%a in (`findstr /i "#a0x0" "!_Recovery_BackupFilePath!"`) do ( call :Recovery_AutologSlave "%%a" 0 )
	for /f "eol=; usebackq tokens=* delims=" %%a in (`findstr /i "#a0x1" "!_Recovery_BackupFilePath!"`) do ( call :Recovery_AutologSlave "%%a" 1 )
	if not defined _Recovery_AutologSlaveIAI (call :GUI !_BC_E!!_BC_F! "OK" /n) else (set "_Recovery_BackupGlobal_IAI=")
)
set _Recovery_BackupSERVICE_Exec=
for /l %%A in (0 1 4) do (findstr /i "#s0x%%A" "!_Recovery_BackupFilePath!" | findstr /v "\;.*" >nul && set _Recovery_BackupSERVICE_Exec=true)
if defined _Recovery_BackupSERVICE_Exec (
	<nul set /p =".!BS!  - Recovering services ............. "
	set _Recovery_ServiceSlaveIAI=
	for /f "eol=; usebackq tokens=* delims=" %%a in (`findstr /i "#s0x0" "!_Recovery_BackupFilePath!"`) do ( call :Recovery_ServiceSlave "%%a" 0 )
	for /f "eol=; usebackq tokens=* delims=" %%a in (`findstr /i "#s0x1" "!_Recovery_BackupFilePath!"`) do ( call :Recovery_ServiceSlave "%%a" 1 )
	for /f "eol=; usebackq tokens=* delims=" %%a in (`findstr /i "#s0x2" "!_Recovery_BackupFilePath!"`) do ( call :Recovery_ServiceSlave "%%a" 2 )
	for /f "eol=; usebackq tokens=* delims=" %%a in (`findstr /i "#s0x3" "!_Recovery_BackupFilePath!"`) do ( call :Recovery_ServiceSlave "%%a" 3 )
	for /f "eol=; usebackq tokens=* delims=" %%a in (`findstr /i "#s0x4" "!_Recovery_BackupFilePath!"`) do ( call :Recovery_ServiceSlave "%%a" 4 )
	if not defined _Recovery_ServiceSlaveIAI (call :GUI !_BC_E!!_BC_F! "OK" /n) else (set "_Recovery_BackupGlobal_IAI=")
)
set _Recovery_BackupNETWORK_Exec=
findstr /i "#n0x0" "!_Recovery_BackupFilePath!" | findstr /v "\;.*" >nul && set _Recovery_BackupNETWORK_Exec=true
findstr /i "#n0x1" "!_Recovery_BackupFilePath!" | findstr /v "\;.*" >nul && set _Recovery_BackupNETWORK_Exec=true
findstr /i "#n0x_" "!_Recovery_BackupFilePath!" | findstr /v "\;.*" >nul && set _Recovery_BackupNETWORK_Exec=true
if defined _Recovery_BackupNETWORK_Exec (
	<nul set /p =".!BS!  - Recovering network settings ..... "
	set _Recovery_NetworkSlaveIAI=
	for /f "eol=; usebackq tokens=* delims=" %%a in (`findstr /i "#n0x0" "!_Recovery_BackupFilePath!"`) do ( call :Recovery_NetworkSlave "%%a" 0 )
	for /f "eol=; usebackq tokens=* delims=" %%a in (`findstr /i "#n0x1" "!_Recovery_BackupFilePath!"`) do ( call :Recovery_NetworkSlave "%%a" 1 )
	for /f "eol=; usebackq tokens=* delims=" %%a in (`findstr /i "#n0x_" "!_Recovery_BackupFilePath!"`) do ( call :Recovery_NetworkSlave "%%a" )
	if not defined _Recovery_NetworkSlaveIAI (call :GUI !_BC_E!!_BC_F! "OK" /n) else (set "_Recovery_BackupGlobal_IAI=")
)
echo.
<nul set /p =".!BS!  [" &call :GUI !_BC_A!!_BC_C! " Backup !_Recovery_BackupGlobal_IAI!restored " &<nul set /p ="]" &echo.
call :GUI 0f "   Please restart your computer for changes to take effect. " /n &echo.
rem echo.&echo.
:Recovery_BACKUP_End
call :GetClean
if not defined _flag-s pause>nul
if defined _BirdRuntimeNoDeepSwitch ( cls &goto Birdboot ) else ( echo. &goto :eof )

:Recovery_VersionSlave
set __RVS_VersionString=
set "__RVS_VersionString=%~1"
set "__RVS_VersionString=!__RVS_VersionString:"=!"
if /i "!__RVS_VersionString!"=="winver#off#" ( goto :eof )
if /i "!__RVS_VersionString!"=="birdver#off#" ( goto :eof )
echo !__RVS_VersionString! | findstr /i "winver#" >nul && (
	set "__RVS_WinString=!__RVS_VersionString!"
	set "__RVS_WinString=!__RVS_WinString:winver=!"
	if not "!__RVS_WinString!"=="#!_Recovery_SysVersion!#" (
		if not defined _Recovery_VersionSlaveIAI echo.
		<nul set /p =".!BS!    "&call :GUI !_BC_B!!_BC_D! " WARNING "&call :GUI 0f " OS version mis-match:"&echo.
		<nul set /p =".!BS!    [Backup=!__RVS_WinString!, System=!_Recovery_SysVersion!]"&echo.
		set _Recovery_VersionSlaveIAI=true
		if not defined _flag-s (
			call :GUI 0f "   -- Press any key to ignore and continue recovery > "
			pause>nul
			echo.&echo.
			goto:eof
		)
		echo.
		goto:eof
	)
	goto:eof
)
echo !__RVS_VersionString! | findstr /i "birdver#" >nul && (
	set "__RVS_BirdString=!__RVS_VersionString!"
	set "__RVS_BirdString=!__RVS_BirdString:birdver=!"
	if not "!__RVS_BirdString!"=="#!blackbird_ver!#" (
		if not defined _Recovery_VersionSlaveIAI echo.
		<nul set /p =".!BS!    "&call :GUI !_BC_B!!_BC_D! " WARNING "&call :GUI 0f " Blackbird version mis-match:  "&echo.
		<nul set /p =".!BS!    [Backup=!__RVS_BirdString!, System=!blackbird_ver!]"&echo.
		set _Recovery_VersionSlaveIAI=true
		if not defined _flag-s (
			call :GUI 0f "   -- Press any key to ignore and continue recovery > "
			pause>nul
			echo.&echo.
			goto:eof
		)
		echo.
		goto:eof
	)
	goto:eof
)
goto:eof

:Recovery_TaskSlave
set "__RTS_TaskPath=" &set "__RTS_TaskConfig=" &set "__RTS_TaskPath_Find=" &set "__RTS_TaskPath_Quoted=" &set "__RTS_TaskFAIL="
set "__RTS_TaskPath=%1"
set "__RTS_TaskConfig=%2"
set __RTS_TaskPath=!__RTS_TaskPath:"=!
set "__RTS_TaskPath=!__RTS_TaskPath:#t0x1=!"
set "__RTS_TaskPath=!__RTS_TaskPath:#t0x0=!"
set "__RTS_TaskPath=!__RTS_TaskPath:-BIRDSID-=%UserSID%!"
set "__RTS_TaskPath=!__RTS_TaskPath:-BIRDUSER-=%UserSID%!"
set "__RTS_TaskPath_Find=!__RTS_TaskPath:\=\\!"
schtasks /query /fo list | findstr /irc:"!__RTS_TaskPath_Find!$" >nul || (
	if not defined _Recovery_TaskSlaveIAI echo.
	call :GUI 0e "  [ALERT]"&call :GUI 0f " Cannot find task: "
	<nul set /p ="!__RTS_TaskPath!" &echo.
	set _Recovery_TaskSlaveIAI=true
	goto:eof
)
set "__RTS_TaskPath_Quoted=^"!__RTS_TaskPath!^""
schtasks /Change /TN !__RTS_TaskPath_Quoted! /!__RTS_TaskConfig! >nul 2>&1
if defined _Bird_ExtPS (
	set "__RTS_TaskEXT_Name=" &set "__RTS_TaskEXT_Path="
	call :GetLastString "!__RTS_TaskPath!" __GLS_Result
	set "__RTS_TaskEXT_Name=!__GLS_Result!"
	for %%A in ("!__RTS_TaskEXT_Name!") do set "__RTS_TaskEXT_Path=!__RTS_TaskPath:%%~A=!"
	powershell "!__RTS_TaskConfig!-ScheduledTask -TaskName '!__RTS_TaskEXT_Name!' -TaskPath '!__RTS_TaskEXT_Path!'" >nul 2>&1
)
if /i "!__RTS_TaskConfig!"=="ENABLE" (schtasks /query /TN !__RTS_TaskPath_Quoted! | findstr /irc:" !_RecoveryBACKUP_TaskML_DISABLED! .*$" >nul && ( set "__RTS_TaskFAIL=enable" ))
if /i "!__RTS_TaskConfig!"=="DISABLE" (schtasks /query /TN !__RTS_TaskPath_Quoted! | findstr /irc:" !_RecoveryBACKUP_TaskML_DISABLED! .*$" >nul || ( set "__RTS_TaskFAIL=disable" ))
if defined __RTS_TaskFAIL (
	if not defined _Recovery_TaskSlaveIAI echo.
	call :GUI 0e "  [ALERT]"&call :GUI 0f " Failed to !__RTS_TaskFAIL! task: "
	<nul set /p ="!__RTS_TaskPath!"&echo.
	set _Recovery_TaskSlaveIAI=true
)
goto:eof

:Recovery_ServiceSlave
set "__RSS_TrueDSN=" &set "__RSS_ServiceName=" &set "__RSS_ServiceConfig="
set "__RSS_ServiceName=%1"
set "__RSS_ServiceConfig=%2"
set __RSS_ServiceName=!__RSS_ServiceName:"=!
set "__RSS_ServiceName=!__RSS_ServiceName:#s0x0=!"
set "__RSS_ServiceName=!__RSS_ServiceName:#s0x1=!"
set "__RSS_ServiceName=!__RSS_ServiceName:#s0x2=!"
set "__RSS_ServiceName=!__RSS_ServiceName:#s0x3=!"
set "__RSS_ServiceName=!__RSS_ServiceName:#s0x4=!"
echo !__RSS_ServiceName! | findstr "_-DSN-" >nul && (
	set __RSS_DSNService=
	set "__RSS_TrueDSN=!__RSS_ServiceName!"
	set "__RSS_TrueDSN=!__RSS_TrueDSN:_-DSN-=!"
	call :GetDSN "!__RSS_TrueDSN!" _GDNFullName
	if defined _GDNFullName set "__RSS_ServiceName=!_GDNFullName!"
)
if defined __RSS_ServiceName (
	reg query HKLM\SYSTEM\CurrentControlSet\Services | findstr /irc:".*\\services\\!__RSS_ServiceName!$" >nul && (
		set "_RSS_RegPath=^"HKLM\SYSTEM\CurrentControlSet\Services\!__RSS_ServiceName!^""
		reg add !_RSS_RegPath! /v Start /t REG_DWORD /d !__RSS_ServiceConfig! /f >nul 2>&1
		if "!__RSS_ServiceConfig!"=="0" (set "__RSS_ServiceConfig_StartString=boot") else if "!__RSS_ServiceConfig!"=="1" (set "__RSS_ServiceConfig_StartString=delayed-auto") else if "!__RSS_ServiceConfig!"=="2" (set "__RSS_ServiceConfig_StartString=auto") else if "!__RSS_ServiceConfig!"=="3" (set "__RSS_ServiceConfig_StartString=demand") else if "!__RSS_ServiceConfig!"=="4" (set "__RSS_ServiceConfig_StartString=disabled")
		call sc config !__RSS_ServiceName! start= !__RSS_ServiceConfig_StartString! >nul 2>&1
		reg query !_RSS_RegPath! /v Start | find "0x!__RSS_ServiceConfig!">nul || (
			if not defined _Recovery_ServiceSlaveIAI echo.
			if "!__RSS_ServiceConfig!"=="4" (call :GUI 0e "  [ALERT]"&call :GUI 0f " Failed to disable service: ") else if not "!__RSS_ServiceConfig!"=="4" (call :GUI 0e "  [ALERT]"&call :GUI 0f " Failed to enable service: ")
			<nul set /p ="!__RSS_ServiceName!"&echo.
			set _Recovery_ServiceSlaveIAI=true
			goto:eof
		)
		goto:eof
	)
	reg query HKLM\SYSTEM\CurrentControlSet\Services | findstr /irc:".*\\services\\!__RSS_ServiceName!$" >nul || (
		if not defined _Recovery_ServiceSlaveIAI echo.
		call :GUI 0e "  [ALERT]"&call :GUI 0f " Cannot find service "
		<nul set /p ="'!__RSS_ServiceName!'"&echo.
		set _Recovery_ServiceSlaveIAI=true
		goto:eof
))
goto:eof

:Recovery_AutologSlave
set "__RAS_AlogName=" &set "__RAS_AlogConfig=" &set "__RAS_AlogFullName=" &set "__RAS_AlogUIState="
set "__RAS_AlogName=%1" &set "__RAS_AlogConfig=%2"
set "__RAS_AlogName=!__RAS_AlogName:"=!"
set "__RAS_AlogName=!__RAS_AlogName:#a0x1=!"
set "__RAS_AlogName=!__RAS_AlogName:#a0x0=!"
if "!__RAS_AlogConfig!"=="0" (set "__RAS_AlogUIState=disable") else if "!__RAS_AlogConfig!"=="1" (set "__RAS_AlogUIState=enable")
reg query "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger" | findstr /ir ".*\\!__RAS_AlogName!" >nul && (
	set "__RAS_AlogFullName=^"HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\WMI\Autologger\!__RAS_AlogName!^""
	reg add !__RAS_AlogFullName! /v "Start" /t REG_DWORD /d !__RAS_AlogConfig! /f >nul 2>&1
	rem ############# x32_flag ###############
	reg query !__RAS_AlogFullName! /v "Start" | find "0x!__RAS_AlogConfig!">nul || (call :GetRegAddForce "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\WMI\Autologger\!__RAS_AlogName!" "Start" "REG_DWORD" "0")
	rem ############# x32_flag ###############
	reg query !__RAS_AlogFullName! /v "Start" | find "0x!__RAS_AlogConfig!">nul || (
		if not defined _Recovery_AutologSlaveIAI echo.
		call :GUI 0e "  [ALERT]"&call :GUI 0f " Failed to !__RAS_AlogUIState! autologger: "
		<nul set /p ="!__RAS_AlogName!"&echo.
		set _Recovery_AutologSlaveIAI=true
		goto:eof
	)
	goto:eof
) || (
	if not defined _Recovery_AutologSlaveIAI echo.
	call :GUI 0e "  [ALERT]"&call :GUI 0f " Cannot find autologger "
	<nul set /p ="'!__RAS_AlogName!'"&echo.
	set _Recovery_AutologSlaveIAI=true
	goto:eof
)
goto:eof

:Recovery_RegistrySlave
set __RRS_RegistryPath=
set "__RRS_RegistryPath=%~1"
set __RRS_RegistryPath=!__RRS_RegistryPath:"=!
if not [!username!]==[!_blackname!] (set "__RRS_RegistryPath=!__RRS_RegistryPath:-BIGBIRDUSER-=%username%!") else (set "__RRS_RegistryPath=!__RRS_RegistryPath:-BIGBIRDUSER-=%_blackname%!")
set "__RRS_RegistryPath=!__RRS_RegistryPath:-BIRDUSER-=%_blackname%!"
set "__RRS_RegistryPath=!__RRS_RegistryPath:-BIRDSID-=%UserSID%!"
for /f "usebackq tokens=1,2,3,4 delims=#" %%W in ('!__RRS_RegistryPath!') do (
	set "__RRS_LivePath=%%W"
	set "__RRS_LiveKey=%%X"
	set "__RRS_LiveType=%%Y"
	set "__RRS_LiveValue=%%Z"
	set "__RRS_LivePath=^"!__RRS_LivePath!^""
	set "__RRS_LiveKey=^"!__RRS_LiveKey!^""
	if "!__RRS_LiveValue!"=="NO-KEY" (
		reg delete !__RRS_LivePath! /v !__RRS_LiveKey! /f >nul 2>&1
		set "__RRS_LiveKey=!__RRS_LiveKey:"=!"
		reg query !__RRS_LivePath! | findstr /i " !__RRS_LiveKey! ">nul && (
			set __RRS_LivePath=!__RRS_LivePath:"=!
			if not defined _Recovery_RegistrySlaveIAI echo.
			call :GUI 0e "  [ALERT]"&call :GUI 0f " Failed to delete reg-key: "
			<nul set /p ="!__RRS_LivePath!\!__RRS_LiveKey!"&echo.
			set _Recovery_RegistrySlaveIAI=true
		)
	) else (
		set __RRS_HexValueCheck=
		set __RRS_KeyValue_SearchString=
		set "__RRS_LiveValue=^"!__RRS_LiveValue!^""
		reg add !__RRS_LivePath! /v !__RRS_LiveKey! /t !__RRS_LiveType! /d !__RRS_LiveValue! /f >nul 2>&1
		set __RRS_LiveValue=!__RRS_LiveValue:"=!
		set "__RRS_KeyValue_SearchString=!__RRS_LiveValue!"
		if "!__RRS_LiveType!"=="REG_DWORD" set __RRS_HexValueCheck=true
		if "!__RRS_LiveType!"=="REG_QWORD" set __RRS_HexValueCheck=true
		if defined __RRS_HexValueCheck (
			set __RRS_LiveValueHex=
			call :Dec2Hex !__RRS_LiveValue! __RRS_LiveValueHex
			rem set "__RRS_LiveValueHex=!HexValue!"
			echo !__RRS_LiveValueHex! | findstr "0x" >nul || set "__RRS_LiveValueHex=0x!__RRS_LiveValueHex!"
			set "__RRS_KeyValue_SearchString=!__RRS_LiveValueHex!"
		)
		set __RRS_LiveValueLength=
		call :StringCalc __RRS_KeyValue_SearchString __RRS_LiveValueLength
		if !__RRS_LiveValueLength! geq 255 goto :eof
		if defined __RRS_KeyValue_SearchString (
			reg query !__RRS_LivePath! /v !__RRS_LiveKey! | findstr /i "!__RRS_KeyValue_SearchString!">nul || (
				set __RRS_LivePath=!__RRS_LivePath:"=!
				set __RRS_LiveKey=!__RRS_LiveKey:"=!
				if not defined _Recovery_RegistrySlaveIAI echo.
				call :GUI 0e "  [ALERT]"&call :GUI 0f " Failed to write reg-key value: "
				<nul set /p ="!__RRS_LivePath!\!__RRS_LiveKey! [!__RRS_LiveValue!]"&echo.
				set _Recovery_RegistrySlaveIAI=true
))))
goto:eof

:Recovery_NetworkSlave
set "__RNS_Config=" &set "__RNS_State=" &set "__RNS_NoBLOCK="
set "__RNS_Config=%1" &set "__RNS_State=%2"
set "__RNS_Config=!__RNS_Config:"=!"
set "__RNS_Config=!__RNS_Config:#n0x1=!"
set "__RNS_Config=!__RNS_Config:#n0x0=!"
if /i [!__RNS_Config!]==[blackbird.hostblock] if [!__RNS_State!] equ [0] (
	call :GetHostBlockState
	if defined __RNS_NoBLOCK (route -f >nul 2>&1)
	goto:eof
)
if /i [!__RNS_Config!]==[net.teredo] (
	if [!__RNS_State!]==[0] (netsh int teredo set state disabled >nul 2>&1)
	if [!__RNS_State!]==[1] (netsh int teredo set state enabled >nul 2>&1)
	goto:eof
)
if /i [!__RNS_Config!]==[tcp.heuristics] (
	if [!__RNS_State!]==[0] (netsh int tcp set heuristics disabled >nul 2>&1)
	if [!__RNS_State!]==[1] (netsh int tcp set heuristics enabled >nul 2>&1)
	goto:eof
)
if /i [!__RNS_Config!]==[tcp.rss] (
	if [!__RNS_State!]==[0] (netsh int tcp set rss=disabled >nul 2>&1)
	if [!__RNS_State!]==[1] (netsh int tcp set rss=enabled >nul 2>&1)
	goto:eof
)
if /i [!__RNS_Config!]==[tcp.chimney] (
	if [!__RNS_State!]==[0] (netsh int tcp set chimney=disabled >nul 2>&1)
	if [!__RNS_State!]==[1] (netsh int tcp set chimney=enabled >nul 2>&1)
	goto:eof
)
if /i [!__RNS_Config!]==[tcp.ecn] (
	if [!__RNS_State!]==[0] (netsh int tcp set ecncapability=disabled >nul 2>&1)
	if [!__RNS_State!]==[1] (netsh int tcp set ecncapability=enabled >nul 2>&1)
	goto:eof
)
echo !__RNS_Config! | findstr "#n0x_" >nul && (
	set "__RNS_ConfigCustom=" &set "__RNS_StateCustom="
	for /f "usebackq tokens=1,2 delims=#" %%X in ('!__RNS_Config!') do (
		set "__RNS_ConfigCustom=%%X"
		set "__RNS_StateCustom=%%Y"
		set "__RNS_StateCustom=!__RNS_StateCustom:n0x_=!"
		if [!__RNS_Config!]==[net.throttling] (reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile" /v "NetworkThrottlingIndex" /t REG_DWORD /d !__RNS_StateCustom! /f >nul 2>&1)
		if [!__RNS_Config!]==[tcp.congestion] (netsh int tcp set global congestionprovider=!__RNS_StateCustom! >nul 2>&1)
		if [!__RNS_Config!]==[tcp.autotune] (netsh int tcp set global autotuninglevel=!__RNS_StateCustom! >nul 2>&1)
))
goto:eof

:Blackbird_Backup
if defined _BirdRuntimeNoDeepSwitch cls
set "_BackupMode_BarConfig=-scan_mode" &set "_Backup_FilePath=!_EXTERNAL!BlackbirdBackup" &set "_Backup_FileTimestampRAW="
if !_BirdSessionColumns! geq 120 set "_BackupMode_BarConfig=-scan_mode_widedisp"
if defined _flag-extbackup (
	for /F "Tokens=2 delims=[]" %%A in ('findstr /ir "\<timestamp#.*" "!_Backup_FilePath!"') do (set "_Backup_FileTimestampRAW=%%A")
)
echo.
call :GUI 0f "   B l a c k b i r d  "&call :GUI 06 "V6"
<nul set /p =".!BS!!__SIZE_Debug!       "&call :GUI 0f "Windows privacy, security and performance" /n
<nul set /p =".!BS!!__SIZE_Debug!                                                        "&call :GUI 06 "Version !blackbird_ver!" /n
echo.
call :GUI !_BC_E!!_BC_H! "  [" &call :GUI !_BC_A!!_BC_C! "  BACKUP MODE  " &call :GUI !_BC_E!!_BC_H! "] " /n &echo.
echo    Backup current system settings to an external file.
echo    File is always created in the same path where Blackbird is located.
echo    Use Recovery Mode to restore the backup at any time. &echo.
if defined _OS-UNKNOWN ( <nul set /p =".!BS!   " &call :GUI !_BC_B!!_BC_D! " WARNING " &call :GUI 0f " Unsupported OS version detected." /n &echo. )
if defined _flag-extbackup (
	<nul set /p =".!BS!   "&call :GUI !_BC_B!!_BC_D! " WARNING "&call :GUI 0f " Backup already exists"
	<nul set /p ="^!"&echo.
	if defined _Backup_FileTimestampRAW (
		set "_Backup_FileTimestampDirty=!_Backup_FileTimestampRAW: =!"
		set "_Backup_FileTimestampDirty=!_Backup_FileTimestampDirty:T= at !"
		set "_Backup_FileTimestampCLEAN=!_Backup_FileTimestampDirty:@= at !"
		call :GUI 0f "   Created:  "
		<nul set /p ="!_Backup_FileTimestampCLEAN!"&echo.
	)
	call :GUI 0f "   Filepath: "
	<nul set /p ="!_Backup_FilePath!"&echo.
	call :GUI 06 "   Continuing will OVERWRITE the file with current values. Careful." /n
	echo.
) else (
	call :GUI 0f "   Backup file save path: " /n
	<nul set /p =".!BS!   !_Backup_FilePath!"&echo.
	echo.
)
if not defined _flag-s if not defined _FEED (
	echo.&echo.
	call :GUI 0f "   Press any key to"&call :GUI !_BC_E!!_BC_F! " backup "&call :GUI 0f "your system now > "
	pause>nul
	goto Backup_Init
)
if not defined _flag-s if defined _FEED (
	set _BirdInput=
	<nul set /p =".!BS!   ["&call :GUI 0f " > "
	<nul set /p ="] Press"&call :GUI 0f " Q "
	if defined _BirdRuntimeNoDeepSwitch (<nul set /p ="to quit and return to the main window."&echo.)
	if not defined _BirdRuntimeNoDeepSwitch (<nul set /p ="to quit."&echo.)
	echo.&echo.
	call :GUI 0f "   Press any other key to"&call :GUI !_BC_E!!_BC_F! " backup "&call :GUI 0f "your system now > "
	for /F "delims=" %%B in ('xcopy /L /w "!_FEED!" "!_FEED!" 2^>NUL') do ( if not defined _BirdInput set "_BirdInput=%%B" )
	set "_BirdInput=!_BirdInput:~-1!"
	if defined _BirdRuntimeNoDeepSwitch if /i [!_BirdInput!]==[q] ( cls & goto Birdboot )
	if not defined _BirdRuntimeNoDeepSwitch if /i [!_BirdInput!]==[q] ( echo. & goto :eof )
	goto Backup_Init
)
:Backup_Init
echo.
if not defined _flag-s echo.
if defined _DEBUG_MODE ( echo on )
set "_BirdTakeoffTime=!time: =!"
del /F /Q /S "!BlackTemp!\nest\bak.*.tmp" >nul 2>&1
set "_BDBTmp=!BlackTemp!\nest\bak.dblocal.tmp"
call :initProgressBar "|" " " !_BackupMode_BarConfig!
call :drawProgressBar 0 -scan_mode
for /l %%f in (0 1 6) do ( call :drawProgressBar %%f -scan_mode )
echo ; Blackbird Backup file>>"!_BDBTmp!"
if not exist "!_BDBTmp!" ( set "ERROR_NOTEMP_VALUE=!_BDBTmp!" &goto ERROR_NOTEMP )
echo ; WARNING: Do not edit ANYTHING unless you know what you're doing. You can easily fuck up your system.>>"!_BDBTmp!"
echo ; To all others: >>"!_BDBTmp!"
echo ; -BIRDUSER- resolves to the current username, -BIGBIRDUSER- always refers to the Administrator username, -BIRDSID- is the user's SID. Be careful with the #null#NO-KEY flag.>>"!_BDBTmp!"
echo ; Some basic syntax can be found below but you're on your own at this point.>>"!_BDBTmp!"
echo.>>"!_BDBTmp!"
call :GetISODate _ISO_DATE & call :GetISOTime _ISO_TIME
set "_Backup_Timestamp=[!_ISO_DATE!T!_ISO_TIME!]"
echo timestamp#!_Backup_Timestamp!>>"!_BDBTmp!"
echo ; >>"!_BDBTmp!"
echo ; Syntax for system compatibility: >>"!_BDBTmp!"
echo ; winver#FULL_WINDOWS_VERSION#  =  Set desired compatible OS version.>>"!_BDBTmp!"
echo ; winver#off#  =  Ignore/turn off OS compatibility checking.>>"!_BDBTmp!"
echo ; birdver#FULL_BLACKBIRD_VERSION#  =  Set desired compatible Blackbird version.>>"!_BDBTmp!"
echo ; birdver#off#  =  Ignore/turn off Blackbird compatibility checking.>>"!_BDBTmp!"
echo ; >>"!_BDBTmp!"
echo winver#!_SysVersion!#>>"!_BDBTmp!"
echo birdver#!blackbird_ver!#>>"!_BDBTmp!"
call :drawProgressBar 7 -scan_mode
for /l %%f in (7 1 9) do ( call :drawProgressBar %%f -scan_mode )
:Backup_TASKS
echo ; >>"!_BDBTmp!"
echo ; Syntax for scheduled tasks: >>"!_BDBTmp!"
echo ; FULL_TASK_PATH#t0x0  =  Disable scheduled task.>>"!_BDBTmp!"
echo ; FULL_TASK_PATH#t0x1  =  Enable scheduled task.>>"!_BDBTmp!"
echo ; >>"!_BDBTmp!"
schtasks /query /fo list>>"!BlackTemp!\nest\bak.schtskq.tmp"
set "__BTM_TaskML_DISABLED=Disabled"
if defined _BirdLangString if defined _Bird_ExtPS call :GetMLSET __BTM_TaskML_DISABLED -SCHTASKS -DISABLED
for %%A in (!_Bird_BigTaskPool!) do (
	set "__BTM_LiveQueryPath=%%A"
	set "__BTM_LiveQueryPath=!__BTM_LiveQueryPath:$= !"
	set "__BTM_LiveQueryPath=!__BTM_LiveQueryPath:[=(!"
	set "__BTM_LiveQueryPath=!__BTM_LiveQueryPath:]=)!"
	set "__BTM_LiveQueryPath=!__BTM_LiveQueryPath:\=\\!"
	findstr /irc:" !__BTM_LiveQueryPath!$" "!BlackTemp!\nest\bak.schtskq.tmp" >nul && (
		set "__BTM_LiveQueryPath=!__BTM_LiveQueryPath:\\=\!"
		set "__BTM_LiveQueryPathQuoted=^"!__BTM_LiveQueryPath!^""
		schtasks /query /TN !__BTM_LiveQueryPathQuoted! | findstr /irc:" !__BTM_TaskML_DISABLED! .*$" >nul && (
			set __BTM_LiveQueryPath=!__BTM_LiveQueryPathQuoted:"=!
			set "__BTM_LiveQueryPath=!__BTM_LiveQueryPath:%_blackname%=-BIRDUSER-!"
			set "__BTM_LiveQueryPath=!__BTM_LiveQueryPath:%username%=-BIGBIRDUSER-!"
			set "__BTM_LiveQueryPath=!__BTM_LiveQueryPath:%UserSID%=-BIRDSID-!"
			echo !__BTM_LiveQueryPath!#t0x0>>"!_BDBTmp!"
		) || (
			set __BTM_LiveQueryPath=!__BTM_LiveQueryPathQuoted:"=!
			set "__BTM_LiveQueryPath=!__BTM_LiveQueryPath:%_blackname%=-BIRDUSER-!"
			set "__BTM_LiveQueryPath=!__BTM_LiveQueryPath:%username%=-BIGBIRDUSER-!"
			set "__BTM_LiveQueryPath=!__BTM_LiveQueryPath:%UserSID%=-BIRDSID-!"
			echo !__BTM_LiveQueryPath!#t0x1>>"!_BDBTmp!"
)))
call :drawProgressBar 10 -scan_mode
for /l %%f in (10 1 12) do ( call :drawProgressBar %%f -scan_mode )
:Backup_SERVICES
echo ; >>"!_BDBTmp!"
echo ; Syntax for services: >>"!_BDBTmp!"
echo ; SERVICE_NAME#s0x4  =  Disable service.>>"!_BDBTmp!"
echo ; SERVICE_NAME#s0x3  =  Set service to manual/demand start.>>"!_BDBTmp!"
echo ; SERVICE_NAME#s0x2  =  Set service to auto start.>>"!_BDBTmp!"
echo ; SERVICE_NAME#s0x1  =  Set service to delayed-auto start.>>"!_BDBTmp!"
echo ; SERVICE_NAME#s0x0  =  Set service to boot start - kernel drivers.>>"!_BDBTmp!"
echo ; >>"!_BDBTmp!"
set _BackupMode_ServiceName=
set "_BackupMode_ServicesPool=!_Bird_BigServicePool! wuauserv UsoSvc lanmanserver TimeBrokerSvc BITS"
set "_BackupMode_ServicesPool=!_BackupMode_ServicesPool: HPTouchpointAnalyticsService = !"
set "_BackupMode_ServicesPool=!_BackupMode_ServicesPool: NvTelemetryContainer = !"
set "_BackupMode_ServicesPool=!_BackupMode_ServicesPool: VDWFP = !"
set "_BackupMode_ServicesPool=!_BackupMode_ServicesPool: VisualDiscovery = !"
for %%A in (!_BackupMode_ServicesPool!) do (
	set _BackupMode_ServiceName=%%A
	reg query HKLM\SYSTEM\CurrentControlSet\Services | findstr /irc:".*\\services\\!_BackupMode_ServiceName!$" >nul && (
		set _BackupMode_ServiceState=
		reg query HKLM\SYSTEM\CurrentControlSet\Services\!_BackupMode_ServiceName! | findstr /irc:" start .*REG_DWORD .*0x4$" >nul && ( set "_BackupMode_ServiceState=0x4" )
		reg query HKLM\SYSTEM\CurrentControlSet\Services\!_BackupMode_ServiceName! | findstr /irc:" start .*REG_DWORD .*0x3$" >nul && ( set "_BackupMode_ServiceState=0x3" )
		reg query HKLM\SYSTEM\CurrentControlSet\Services\!_BackupMode_ServiceName! | findstr /irc:" start .*REG_DWORD .*0x2$" >nul && ( set "_BackupMode_ServiceState=0x2" )
		reg query HKLM\SYSTEM\CurrentControlSet\Services\!_BackupMode_ServiceName! | findstr /irc:" start .*REG_DWORD .*0x1$" >nul && ( set "_BackupMode_ServiceState=0x1" )
		reg query HKLM\SYSTEM\CurrentControlSet\Services\!_BackupMode_ServiceName! | findstr /irc:" start .*REG_DWORD .*0x0$" >nul && ( set "_BackupMode_ServiceState=0x0" )
		if defined _BackupMode_ServiceState echo !_BackupMode_ServiceName!#s!_BackupMode_ServiceState!>>"!_BDBTmp!"
		if defined _flag-w10 (
			echo !_BackupMode_ServiceName! | findstr /i "!_Bird_DynamicServicePool!">nul && (
				echo !_BackupMode_ServiceName!_-DSN-#s!_BackupMode_ServiceState!>>"!_BDBTmp!"
))))
call :drawProgressBar 13 -scan_mode
for /l %%f in (13 1 15) do ( call :drawProgressBar %%f -scan_mode )
:Backup_AUTOLOG
echo ; >>"!_BDBTmp!"
echo ; Syntax for autologgers: >>"!_BDBTmp!"
echo ; AUTOLOGGER_NAME#a0x0  =  Disable autologger.>>"!_BDBTmp!"
echo ; AUTOLOGGER_NAME#a0x1  =  Enable autologger.>>"!_BDBTmp!"
echo ; >>"!_BDBTmp!"
call :GetTreeBranch "_AUTOLOG_Template" __GTB_FullBranch
set "__GTB_FullBranch=%__GTB_FullBranch:##=!LineBreak!%"
for /F "delims=##" %%A in ("!__GTB_FullBranch!") do (
	Set _BackupMode_AutologDIRTY=%%A
	set _BackupMode_AutologCLEAN=!_BackupMode_AutologDIRTY:HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\WMI\Autologger\=!
	reg query "%%A" | findstr /i ".*start.*0x0" >nul && (
		echo !_BackupMode_AutologCLEAN!#a0x0>>"!_BDBTmp!"
	) || (
		echo !_BackupMode_AutologCLEAN!#a0x1>>"!_BDBTmp!"
))
call :drawProgressBar 16 -scan_mode
for /l %%f in (16 1 17) do ( call :drawProgressBar %%f -scan_mode )
:Backup_REGISTRY
echo ; >>"!_BDBTmp!"
echo ; Syntax for registry: >>"!_BDBTmp!"
echo ; FULL_REG_PATH#REGKEY_NAME#REGKEY_TYPE#REGKEY_VALUE  =  Create key with desired type and value.>>"!_BDBTmp!"
echo ; FULL_REG_PATH#REGKEY_NAME#null#NO-PATH  =  Ignore registry key. Used by Blackbird if the path does not exist on the system when making a backup.>>"!_BDBTmp!"
echo ; FULL_REG_PATH#REGKEY_NAME#null#NO-KEY  =  Delete registry key. Use with caution.>>"!_BDBTmp!"
echo ; >>"!_BDBTmp!"
if defined _flag-w10 (
	set "_BackupMode_ProgressOrientationPoint=21"
	set /a _BackupMode_ProgressOrientationPoint_DIF=!_BackupMode_ProgressOrientationPoint!+2
	goto Backup_REGISTRY_WinANY
)
set /a _BackupMode_ProgressOrientationPoint=21
set /a _BackupMode_ProgressOrientationPoint_DIF=!_BackupMode_ProgressOrientationPoint!+2
call :drawProgressBar !_BackupMode_ProgressOrientationPoint! -scan_mode
for /l %%f in (!_BackupMode_ProgressOrientationPoint! 1 !_BackupMode_ProgressOrientationPoint_DIF!) do ( call :drawProgressBar %%f -scan_mode )
call :BackupSlave "HKLM\Software\Microsoft\Windows NT\CurrentVersion\AppCompatFlags\AIT" "AITEnable"
call :BackupSlave "HKLM\Software\Microsoft\Windows NT\CurrentVersion\AppCompatFlags\ClientTelemetry" "TaskEnableRun"
call :BackupSlave "HKLM\SOFTWARE\Policies\Microsoft\SQMClient\Windows" "CEIPEnable"
call :BackupSlave "HKLM\Software\Microsoft\Windows\CurrentVersion\WindowsUpdate" "IncludeRecommendedUpdates"
call :BackupSlave "HKLM\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate\AU" "NoAutoRebootWithLoggedOnUsers" 
call :BackupSlave "HKLM\Software\Policies\Microsoft\Peernet" "Disabled"
call :BackupSlave "HKLM\SOFTWARE\Policies\Microsoft\Windows\DataCollection" "DisableEnterpriseAuthProxy TelemetryProxy" -MSM_KEYS
call :GUI_DrawPointPB 1 2
call :BackupSlave "HKLM\Software\Policies\Microsoft\Internet Explorer\Privacy" "EnableInPrivateBrowsing"
call :BackupSlave "HKLM\Software\Policies\Microsoft\Internet Explorer\Safety\PrivacIE" "DisableLogging"
call :BackupSlave "HKLM\SOFTWARE\Microsoft\Windows\Windows Error Reporting" "Disabled MachineID" -MSM_KEYS
call :BackupSlave "HKLM\SOFTWARE\Microsoft\Windows\Windows Error Reporting\WMR" "Disable"
call :BackupSlave "HKLM\SOFTWARE\Microsoft\Windows\Windows Error Reporting\Consent" "DefaultConsent NewUserDefaultConsent" -MSM_KEYS
call :BackupSlave "HKCU\Software\Classes\Local Settings\Software\Microsoft\Windows\Shell\Bags\AllFolders\Shell" "FolderType" -FORCE_SingleKey
set /a _BackupMode_ProgressOrientationPoint=!_BackupMode_ProgressOrientationPoint_DIF!+1
set /a _BackupMode_ProgressOrientationPoint_DIF=!_BackupMode_ProgressOrientationPoint!+5
:Backup_REGISTRY_WinANY
call :drawProgressBar !_BackupMode_ProgressOrientationPoint! -scan_mode
for /l %%f in (!_BackupMode_ProgressOrientationPoint! 1 !_BackupMode_ProgressOrientationPoint_DIF!) do ( call :drawProgressBar %%f -scan_mode )
call :BackupSlave "HKCU\Control Panel\Desktop" "MenuShowDelay" -FORCE_SingleKey
call :BackupSlave "HKLM\SYSTEM\CurrentControlSet\Control\SecurityProviders\Wdigest" "UseLogonCredential"
call :BackupSlave "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Search" "DisableRemovableDriveIndexing"
call :BackupSlave "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile" "NetworkThrottlingIndex"
call :BackupSlave "HKLM\Software\Microsoft\Windows\ScriptedDiagnosticsProvider\Policy" "EnableQueryRemoteServer"
call :BackupSlave "HKLM\SOFTWARE\Policies\Microsoft\Windows\ScriptedDiagnosticsProvider\Policy" "DisableQueryRemoteServer"
call :BackupSlave "HKLM\SOFTWARE\Microsoft\Windows\ScheduledDiagnostics" "EnabledExecution"
call :BackupSlave "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Device Metadata" "DeviceMetadataServiceURL PreventDeviceMetadataFromNetwork" -MSM_KEYS
call :BackupSlave "HKLM\SOFTWARE\Policies\Microsoft\Windows\Device Metadata" "PreventDeviceMetadataFromNetwork"
call :BackupSlave "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" "IGMPLevel"
call :BackupSlave "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" "UseDomainNameDevolution"
call :BackupSlave "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Internet Settings\Wpad" "WpadOverride"
call :BackupSlave "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Internet Settings\Wpad" "WpadOverride"
call :BackupSlave "HKLM\SYSTEM\CurrentControlSet\Control\Lsa\MSV1_0" "RestrictReceivingNTLMTraffic RestrictSendingNTLMTraffic" -MSM_KEYS
call :BackupSlave "HKLM\SYSTEM\CurrentControlSet\Services\LanmanServer\Parameters" "SMB1"
call :GUI_DrawPointPB 1 2
reg query "HKCU\Software" | findstr /i "NVIDIA" >nul && ( call :BackupSlave "HKCU\Software\NVIDIA Corporation\NVControlPanel2\Client" "OptInOrOutPreference" )
call :BackupSlave "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender\Spynet" "SpyNetReporting SubmitSamplesConsent SpyNetReportingLocation" -MSM_KEYS
call :BackupSlave "HKLM\SOFTWARE\Microsoft\Windows Defender\Spynet" "SpyNetReporting SubmitSamplesConsent" -MSM_KEYS
call :BackupSlave "HKLM\Software\Policies\Microsoft\MRT" "DontReportInfectionInformation"
call :BackupSlave "HKLM\SOFTWARE\Microsoft\RemovalTools\MpGears" "HeartbeatTrackingIndex SpyNetReportingLocation" -MSM_KEYS
call :BackupSlave "HKLM\SOFTWARE\Policies\Microsoft\Windows NT\DNSClient" "DisableSmartNameResolution EnableMulticast" -MSM_KEYS
call :GUI_DrawPointPB 1 2
call :BackupSlave "HKLM\SYSTEM\CurrentControlSet\Control\Remote Assistance" "fAllowToGetHelp fAllowFullControl" -MSM_KEYS
call :BackupSlave "HKLM\SOFTWARE\Policies\Microsoft\Windows NT\Printers" "PhysicalLocation"
call :BackupSlave "HKLM\SOFTWARE\Policies\Microsoft\Windows\DataCollection" "AllowTelemetry MaxTelemetryAllowed" -MSM_KEYS
call :BackupSlave "HKLM\SYSTEM\CurrentControlSet\Services\NetBT\Parameters" "SMBDeviceEnabled"
call :BackupSlave "HKLM\SYSTEM\CurrentControlSet\Services\LanmanServer\Parameters" "AutoShareServer AutoShareWks" -MSM_KEYS
call :GUI_DrawPointPB 1 2
call :BackupSlave "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\AdvertisingInfo" "Enabled"
call :BackupSlave "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AdvertisingInfo" "Enabled Id" -MSM_KEYS
call :BackupSlave "HKU\!UserSID!\SOFTWARE\Microsoft\Windows\CurrentVersion\AdvertisingInfo" "Enabled Id" -MSM_KEYS
if defined os64bit call :BackupSlave "HKLM\SOFTWARE\WOW6432Node\Microsoft\Windows\CurrentVersion\Policies\DataCollection" "AllowTelemetry"
call :BackupSlave "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Diagnostics\DiagTrack" "DiagTrackAuthorization ConnectivityNoNetworkTime UploadPermissionReceived UploadEtlFileConsent" -MSM_KEYS
call :BackupSlave "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Diagnostics\DiagTrack\TraceManager" "MiniTraceSlotEnabled aotStartTime aotSessionStartTime miniTraceStartTime miniTraceSessionStartTime" -MSM_KEYS
call :BackupSlave "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Diagnostics\DiagTrack\SettingsRequests" "LastTelSettingsRingName LastTelSettingsRingId" -MSM_KEYS
call :GUI_DrawPointPB 1 2
reg query "HKLM\Software\Microsoft\Windows\CurrentVersion\Diagnostics\DiagTrack" | findstr /ir ".*\\DiagTrack\\SettingsRequests.*" >nul && (
	for /F "tokens=* usebackq delims=" %%a in (`reg query "HKLM\Software\Microsoft\Windows\CurrentVersion\Diagnostics\DiagTrack\SettingsRequests" ^| findstr /ir ".*\\DiagTrack\\SettingsRequests\\.*"`) do (
		set "_BackupMode_RegHKLM_DSR_FullPath=%%a"
		call :BackupSlave "!_BackupMode_RegHKLM_DSR_FullPath!" "SettingsType" -FORCE_SingleKey
		call :BackupSlave "!_BackupMode_RegHKLM_DSR_FullPath!" "SettingsPriority" -FORCE_SingleKey
		call :BackupSlave "!_BackupMode_RegHKLM_DSR_FullPath!" "SettingsRegistrationType" -FORCE_SingleKey
		call :BackupSlave "!_BackupMode_RegHKLM_DSR_FullPath!" "ETag" -FORCE_SingleKey
		call :BackupSlave "!_BackupMode_RegHKLM_DSR_FullPath!" "ETagQueryParameters" -FORCE_SingleKey
		call :BackupSlave "!_BackupMode_RegHKLM_DSR_FullPath!" "RefreshInterval" -FORCE_SingleKey
		call :BackupSlave "!_BackupMode_RegHKLM_DSR_FullPath!" "DownloadScheduled" -FORCE_SingleKey
))
:Backup_REGISTRY_WinTen
if not defined _flag-w10 (
	call :GUI_DrawPointPB 1 8
	goto Backup_REGISTRY_SEKeys
) else (
	call :GUI_DrawPointPB 1 2
)
rem -------------
call :BackupSlave "HKLM\Software\Policies\Microsoft\Windows\AppPrivacy" "LetAppsAccessLocation LetAppsAccessCamera LetAppsAccessMicrophone LetAppsAccessNotifications LetAppsAccessAccountInfo LetAppsAccessContacts LetAppsAccessCalendar LetAppsAccessCallHistory LetAppsAccessEmail LetAppsAccessMessaging LetAppsAccessPhone LetAppsAccessRadios LetAppsSyncWithDevices LetAppsAccessTrustedDevices LetAppsRunInBackground LetAppsAccessMotion LetAppsAccessTasks LetAppsGetDiagnosticInfo LetAppsActivateWithVoice LetAppsActivateWithVoiceAboveLock" -MSM_KEYS
call :BackupSlave "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Power" "HiberbootEnabled"
call :BackupSlave "HKLM\SOFTWARE\Microsoft\WindowsUpdate\UX\Settings" "SvDismissedState SvOfferDeclined" -MSM_KEYS
call :BackupSlave "HKLM\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate" "DisableOSUpgrade ProductVersion" -MSM_KEYS
call :BackupSlave "HKLM\SOFTWARE\Microsoft\OneDrive" "PreventNetworkTrafficPreUserSignIn"
call :BackupSlave "HKLM\SOFTWARE\Policies\Microsoft\Windows\OneDrive" "DisableFileSyncNGSC"
call :GUI_DrawPointPB 1 2
call :BackupSlave "HKCU\Software\Microsoft\Speech_OneCore\Settings\OnlineSpeechPrivacy" "HasAccepted"
call :BackupSlave "HKLM\Software\Policies\Microsoft\Speech" "AllowSpeechModelUpdate"
call :BackupSlave "HKLM\Software\Policies\Microsoft\Windows\Messaging" "AllowMessageSync"
call :BackupSlave "HKLM\Software\Policies\Microsoft\Windows\SettingSync" "DisableSettingSync DisableSettingSyncUserOverride" -MSM_KEYS
call :BackupSlave "HKLM\SOFTWARE\Policies\Microsoft\Windows\TCPIP\v6Transition" "Teredo_State"
call :BackupSlave "HKLM\Software\Policies\Microsoft\Windows\CloudContent" "DisableCloudOptimizedContent"
call :BackupSlave "HKCU\Software\Policies\Microsoft\Windows\CloudContent" "DisableCloudOptimizedContent"
call :BackupSlave "HKU\!UserSID!\Software\Policies\Microsoft\Windows\CloudContent" "DisableCloudOptimizedContent"
rem -------------
call :BackupSlave "HKLM\SOFTWARE\Policies\Microsoft\Windows\ScriptedDiagnostics" "EnableDiagnostics"
call :BackupSlave "HKCU\Software\Policies\Google\Chrome" "DefaultNotificationsSetting"
call :BackupSlave "HKCU\Software\Policies\Microsoft\Edge" "DefaultNotificationsSetting"
call :GUI_DrawPointPB 1 2
call :BackupSlave "HKLM\SOFTWARE\Policies\Microsoft\Edge" "EdgeShoppingAssistantEnabled"
call :BackupSlave "HKLM\Software\Policies\Microsoft\Windows\DataCollection" "DisableOneSettingsDownloads"
call :BackupSlave "HKLM\SOFTWARE\Policies\Microsoft\Windows\DeliveryOptimization" "DODownloadMode"
call :BackupSlave "HKLM\SOFTWARE\Policies\Microsoft\Internet Explorer" "AllowServicePoweredQSA"
call :BackupSlave "HKLM\SOFTWARE\Policies\Microsoft\Windows\CurrentVersion\Explorer\AutoComplete" "AutoSuggest"
call :BackupSlave "HKLM\SOFTWARE\Policies\Microsoft\Internet Explorer\Suggested Sites" "Enabled"
call :BackupSlave "HKLM\SOFTWARE\Policies\Microsoft\Internet Explorer\Geolocation" "PolicyDisableGeolocation"
call :BackupSlave "HKLM\SOFTWARE\Policies\Microsoft\Internet Explorer\PhishingFilter" "EnabledV9"
call :BackupSlave "HKLM\SOFTWARE\Policies\Microsoft\Internet Explorer\Feeds" "BackgroundSyncStatus"
call :BackupSlave "HKLM\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" "AllowOnlineTips"
call :BackupSlave "HKLM\SOFTWARE\Policies\Microsoft\Windows\AdvertisingInfo" "DisabledByGroupPolicy"
call :BackupSlave "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced" "Start_TrackProgs"
call :BackupSlave "HKLM\Software\Policies\Microsoft\Windows\System" "EnableActivityFeed EnableSmartScreen EnableCdp" -MSM_KEYS
call :BackupSlave "HKCU\Software\Microsoft\Siuf\Rules" "PeriodInNanoSeconds"
call :GUI_DrawPointPB 1 2
call :BackupSlave "HKCU\Software\Policies\Microsoft\Windows\Explorer" "DisableSearchBoxSuggestions"
call :BackupSlave "HKLM\Software\Policies\Microsoft\Windows\Explorer" "DisableSearchBoxSuggestions"
call :BackupSlave "HKCU\Software\Microsoft\Windows\CurrentVersion\Feeds" "IsFeedsAvailable ShellFeedsTaskbarViewMode" -MSM_KEYS
call :BackupSlave "HKCU\Software\Microsoft\Windows\CurrentVersion\Feeds\FeedRepositoryState" "FeedEnabled"
call :BackupSlave "HKLM\SOFTWARE\Microsoft\CloudManagedUpdate\exp\settings" "EXP.ENABLED"
call :BackupSlave "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Privacy" "TailoredExperiencesWithDiagnosticDataEnabled"
call :BackupSlave "HKCR\Local Settings\Software\Microsoft\Windows\CurrentVersion\AppModel\SystemAppData\Microsoft.549981C3F5F10_8wekyb3d8bbwe\CortanaStartupId" "State"
call :BackupSlave "HKU\!UserSID!\Software\Microsoft\Windows\CurrentVersion\SearchSettings" "IsAADCloudSearchEnabled IsDeviceSearchHistoryEnabled IsMSACloudSearchEnabled IsDynamicSearchBoxEnabled" -MSM_KEYS
call :BackupSlave "HKCU\Software\Microsoft\Windows\CurrentVersion\SearchSettings" "IsAADCloudSearchEnabled IsDeviceSearchHistoryEnabled IsMSACloudSearchEnabled IsDynamicSearchBoxEnabled" -MSM_KEYS
call :BackupSlave "HKLM\Software\Microsoft\Windows\CurrentVersion\ConnectedSearch" "ConnectedSearchUseWeb"
call :BackupSlave "HKCU\Software\Microsoft\Windows\CurrentVersion\Search" "CortanaMUID"
call :BackupSlave "HKU\!UserSID!\Software\Microsoft\Windows\CurrentVersion\Search" "CortanaMUID"
rem -----------
call :GUI_DrawPointPB 1 2
call :BackupSlave "HKLM\SOFTWARE\Policies\Microsoft\Windows\System" "PublishUserActivities UploadUserActivities" -MSM_KEYS
call :BackupSlave "HKLM\SOFTWARE\Policies\Microsoft\Windows\Maps" "AutoDownloadAndUpdateMapData AllowUntriggeredNetworkTrafficOnSettingsPage" -MSM_KEYS
call :BackupSlave "HKLM\SYSTEM\CurrentControlSet\Services\TimeBrokerSvc" "Start"
call :BackupSlave "HKLM\Software\Microsoft\Windows NT\CurrentVersion\AppCompatFlags\TelemetryController" "RunsBlocked"
call :BackupSlave "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer" "SmartScreenEnabled"
call :BackupSlave "HKLM\Software\Microsoft\Windows\CurrentVersion\Policies\System" "DisableAutomaticRestartSignOn"
call :BackupSlave "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced" "Start_TrackProgs Start_TrackDocs" -MSM_KEYS
call :BackupSlave "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Explorer" "AllowOnlineTips"
call :BackupSlave "HKU\!UserSID!\Software\Microsoft\Windows\SQMClient" "UserId"
call :BackupSlave "HKLM\SOFTWARE\Microsoft\SQMClient" "MachineID"
call :BackupSlave "HKLM\SYSTEM\CurrentControlSet\Services\Dnscache\Parameters" "DisableParallelAandAAAA"
call :BackupSlave "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppHost" "EnableWebContentEvaluation"
call :BackupSlave "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppHost\Download" "CheckExeSignatures"
call :BackupSlave "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\AppHost" "EnableWebContentEvaluation"
call :BackupSlave "HKU\!UserSID!\SOFTWARE\Microsoft\Windows\CurrentVersion\AppHost" "EnableWebContentEvaluation"
call :BackupSlave "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Search" "BingSearchEnabled"
call :BackupSlave "HKLM\Software\Policies\Microsoft\Peernet" "Disabled"
call :GUI_DrawPointPB 1 2
call :BackupSlave "HKCU\System\GameConfigStore" "GameDVR_Enabled"
call :BackupSlave "HKLM\SOFTWARE\Policies\Microsoft\Windows\GameDVR" "AllowGameDVR"
call :BackupSlave "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\UnattendSettings\SQMClient" "CEIPEnabled"
call :BackupSlave "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\UnattendSettings\Windows Error Reporting" "DisableWER"
call :BackupSlave "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\UnattendSettings\Windows Error Reporting\Consent" "DefaultConsent"
call :BackupSlave "HKLM\SOFTWARE\Policies\Microsoft\WMDRM" "DisableOnline"
call :BackupSlave "HKCU\Software\Microsoft\Windows\CurrentVersion\Privacy" "TailoredExperiencesWithDiagnosticDataEnabled"
call :BackupSlave "HKU\!UserSID!\Software\Microsoft\Windows\CurrentVersion\Privacy" "TailoredExperiencesWithDiagnosticDataEnabled"
call :BackupSlave "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\DeliveryOptimization\Config" "DODownloadMode"
call :BackupSlave "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\DeliveryOptimization" "SystemSettingsDownloadMode"
call :BackupSlave "HKU\!UserSID!\SOFTWARE\Microsoft\Windows\CurrentVersion\DeliveryOptimization" "SystemSettingsDownloadMode"
call :BackupSlave "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\DeliveryOptimization" "ClientTelId"
call :BackupSlave "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\DeliveryOptimization\Config" "UserOptedInOOBE"
if defined os64bit call :BackupSlave "HKLM\SOFTWARE\Wow6432Node\Microsoft\Windows\CurrentVersion\DeliveryOptimization\Config" "DODownloadMode"
if defined _flag-w10red4 call :BackupSlave "HKLM\SOFTWARE\Policies\Microsoft\Windows\AppPrivacy" "LetAppsRunInBackground"
call :GUI_DrawPointPB 1 2
call :BackupSlave "HKLM\SOFTWARE\Policies\Microsoft\Windows\ScriptedDiagnosticsProvider\Policy" "DisableQueryRemoteServer"
call :BackupSlave "HKLM\Software\Microsoft\Windows\ScriptedDiagnosticsProvider\Policy" "EnableQueryRemoteServer"
call :BackupSlave "HKLM\SOFTWARE\Microsoft\Windows\ScheduledDiagnostics" "EnabledExecution"
call :BackupSlave "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender\SmartScreen" "ConfigureAppInstallControl ConfigureAppInstallControlEnabled" -MSM_KEYS
call :BackupSlave "HKLM\SOFTWARE\Policies\Microsoft\Windows\System" "AllowClipboardHistory AllowCrossDeviceClipboard" -MSM_KEYS
call :BackupSlave "HKLM\SOFTWARE\Policies\Microsoft\MicrosoftEdge\Main" "AllowPrelaunch"
call :BackupSlave "HKLM\SOFTWARE\Policies\Microsoft\MicrosoftEdge\TabPreloader" "AllowTabPreloading"
call :BackupSlave "HKLM\SOFTWARE\Policies\Microsoft\Windows\OneDrive" "DisableFileSync"
call :BackupSlave "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Run" "OneDrive"
call :BackupSlave "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Run" "WindowsDefender"
call :BackupSlave "HKU\!UserSID!\SOFTWARE\Microsoft\Windows\CurrentVersion\Run" "OneDrive"
call :BackupSlave "HKCU\SOFTWARE\Classes\CLSID\{018D5C66-4533-4307-9B53-224DE2ED1FE6}" "System.IsPinnedToNameSpaceTree"
call :BackupSlave "HKU\!UserSID!_Classes\CLSID\{018D5C66-4533-4307-9B53-224DE2ED1FE6}" "System.IsPinnedToNameSpaceTree"
call :BackupSlave "HKCR\CLSID\{018D5C66-4533-4307-9B53-224DE2ED1FE6}" "System.IsPinnedToNameSpaceTree"
if defined os64bit (
	call :BackupSlave "HKCR\Wow6432Node\CLSID\{018D5C66-4533-4307-9B53-224DE2ED1FE6}" "System.IsPinnedToNameSpaceTree"
	call :BackupSlave "HKCU\SOFTWARE\Classes\WOW6432Node\CLSID\{018D5C66-4533-4307-9B53-224DE2ED1FE6}" "System.IsPinnedToNameSpaceTree"
	call :BackupSlave "HKU\!UserSID!_Classes\WOW6432Node\CLSID\{018D5C66-4533-4307-9B53-224DE2ED1FE6}" "System.IsPinnedToNameSpaceTree"
	rem call :BackupSlave "HKLM\SOFTWARE\Wow6432Node\Microsoft\WcmSvc\wifinetworkmanager\features\!UserSID!" "FeatureStates"
)
call :BackupSlave "HKLM\SOFTWARE\Microsoft\Wcmsvc\wifinetworkmanager" "WiFiSenseCredShared WiFiSenseOpen" -MSM_KEYS
call :BackupSlave "HKLM\SOFTWARE\Microsoft\DataCollection\Default\WifiAutoConnectConfig" "AutoConnectEnabled"
call :BackupSlave "HKLM\SOFTWARE\Microsoft\WcmSvc\wifinetworkmanager\config" "AutoConnectAllowedOEM"
call :BackupSlave "HKLM\SOFTWARE\Microsoft\WcmSvc\wifinetworkmanager\features" "WiFiSenseOpen"
call :BackupSlave "HKCU\SOFTWARE\Microsoft\Siuf\Rules" "NumberOfSIUFInPeriod"
call :BackupSlave "HKU\!UserSID!\SOFTWARE\Microsoft\Siuf\Rules" "NumberOfSIUFInPeriod"
call :BackupSlave "HKLM\SOFTWARE\Microsoft\PolicyManager\default\WiFi\AllowAutoConnectToWiFiSenseHotspots" "Value"
call :BackupSlave "HKU\!UserSID!\SOFTWARE\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" "IdentityProvider SystemPaneSuggestionsEnabled SoftLandingEnabled OemPreInstalledAppsEnabled PreInstalledAppsEnabled SilentInstalledAppsEnabled ContentDeliveryAllowed" -MSM_KEYS
call :BackupSlave "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" "IdentityProvider SystemPaneSuggestionsEnabled SoftLandingEnabled OemPreInstalledAppsEnabled PreInstalledAppsEnabled SilentInstalledAppsEnabled ContentDeliveryAllowed RotatingLockScreenEnabled RotatingLockScreenOverlayEnabled" -MSM_KEYS
call :BackupSlave "HKU\!UserSID!\SOFTWARE\Microsoft\Windows\CurrentVersion\PushNotifications" "NoTileApplicationNotification"
call :BackupSlave "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\PushNotifications" "NoTileApplicationNotification"
call :BackupSlave "HKU\!UserSID!\Software\Microsoft\Windows\CurrentVersion\PushNotifications\Applications\Windows.SystemToast.Suggested" "ApplicationType"
call :BackupSlave "HKU\!UserSID!\Software\Microsoft\Windows\CurrentVersion\PushNotifications\Applications\Windows.SystemToast.Suggested" "Capabilities"
call :BackupSlave "HKU\!UserSID!\Software\Microsoft\Windows\CurrentVersion\PushNotifications\Applications\Windows.SystemToast.WindowsTip" "ApplicationType"
call :BackupSlave "HKU\!UserSID!\Software\Microsoft\Windows\CurrentVersion\PushNotifications\Applications\Windows.SystemToast.WindowsTip" "Capabilities"
rem call :BackupSlave "HKLM\Software\Microsoft\Windows\CurrentVersion\Lock Screen\FeedManager" "(Default)"
call :BackupSlave "HKCU\Software\Microsoft\Windows\CurrentVersion\Lock Screen\Creative" "LockImageFlags CreativeId PortraitAssetPath LandscapeAssetPath PlacementId ImpressionToken HotspotImageFolderPath CreativeJson" -MSM_KEYS
call :GUI_DrawPointPB 1 2
call :GetTreeBranch "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\WcmSvc\wifinetworkmanager\SocialNetworks" __GTB_FullBranch
set "__GTB_FullBranch=%__GTB_FullBranch:##=!LineBreak!%"
for /F "delims=##" %%A in ("!__GTB_FullBranch!") do (
	call :BackupSlave "%%A" "OptInStatus" -FORCE_SingleKey
)
call :GUI_DrawPointPB 1 2
call :BackupSlave "HKLM\SOFTWARE\Microsoft\Windows Search" "AllowCortana"
call :BackupSlave "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Search" "EnableDynamicContentInWSB AllowCortana DisableWebSearch AllowSearchToUseLocation ConnectedSearchPrivacy ConnectedSearchSafeSearch ConnectedSearchUseWeb ConnectedSearchUseWebOverMeteredConnections" -MSM_KEYS
call :BackupSlave "HKLM\SOFTWARE\Policies\Microsoft\SearchCompanion" "DisableContentFileUpdates"
call :BackupSlave "HKCU\Software\Microsoft\Windows\CurrentVersion\Search" "CortanaEnabled AnyAboveLockAppsActive BingSearchEnabled CortanaCapabilities CortanaCapabilityFlags CortanaConsent CortanaInAmbientMode DeviceHistoryEnabled HasAboveLockTips IsAssignedAccess IsMicrophoneAvailable IsWindowsHelloActive" -MSM_KEYS
call :BackupSlave "HKU\!UserSID!\Software\Microsoft\Windows\CurrentVersion\Search" "CortanaEnabled AnyAboveLockAppsActive BingSearchEnabled CortanaCapabilities CortanaCapabilityFlags CortanaConsent CortanaInAmbientMode DeviceHistoryEnabled HasAboveLockTips IsAssignedAccess IsMicrophoneAvailable IsWindowsHelloActive" -MSM_KEYS
call :BackupSlave "HKLM\SOFTWARE\Policies\Microsoft\PCHealth\ErrorReporting" "DoReport ForceQueueMode" -MSM_KEYS
call :BackupSlave "HKLM\SOFTWARE\Policies\Microsoft\PCHealth\ErrorReporting\DW" "DWFileTreeRoot DWNoExternalURL DWNoFileCollection DWNoSecondLevelCollection DWReporteeName" -MSM_KEYS
call :BackupSlave "HKLM\SOFTWARE\Microsoft\Windows\Windows Error Reporting\Consent" "DefaultConsent NewUserDefaultConsent" -MSM_KEYS
call :GUI_DrawPointPB 1 2
call :BackupSlave "HKLM\SOFTWARE\Microsoft\Windows\Windows Error Reporting\WMR" "Disable"
call :BackupSlave "HKLM\SOFTWARE\Microsoft\Windows\Windows Error Reporting" "MachineID"
call :BackupSlave "HKCU\SOFTWARE\Microsoft\Windows\Windows Error Reporting" "AutoApproveOSDumps ConfigureArchive DisableArchive Disabled DontSendAdditionalData LoggingDisabled" -MSM_KEYS
call :BackupSlave "HKU\!UserSID!\Software\Microsoft\Windows\Windows Error Reporting" "AutoApproveOSDumps ConfigureArchive DisableArchive Disabled DontSendAdditionalData LoggingDisabled" -MSM_KEYS
call :BackupSlave "HKLM\SOFTWARE\Policies\Microsoft\Windows\AppCompat" "AITEnable DisableInventory DisableUAR" -MSM_KEYS
call :BackupSlave "HKLM\SOFTWARE\Policies\Microsoft\SQMClient\Windows" "CEIPEnable"
call :BackupSlave "HKLM\Software\Policies\Microsoft\Internet Explorer\SQM" "DisableCustomerImprovementProgram"
call :BackupSlave "HKLM\SOFTWARE\Microsoft\UEV\Agent" "Enabled"
call :BackupSlave "HKLM\SOFTWARE\Microsoft\UEV\Agent\Configuration" "CustomerExperienceImprovementProgram SyncEnabled" -MSM_KEYS
call :GUI_DrawPointPB 1 2
call :BackupSlave "HKCU\Software\Policies\Microsoft\Office\15.0\osm" "enablelogging enablefileobfuscation enableupload enablelogging enablefileobfuscation" -MSM_KEYS
call :BackupSlave "HKCU\Software\Policies\Microsoft\Office\16.0\osm" "enablelogging enablefileobfuscation enableupload enablelogging enablefileobfuscation" -MSM_KEYS
call :BackupSlave "HKCU\SOFTWARE\Microsoft\Personalization\Settings" "AcceptedPrivacyPolicy"
call :BackupSlave "HKLM\SOFTWARE\Policies\Microsoft\Windows\CredUI" "DisablePasswordReveal"
call :BackupSlave "HKLM\Software\Policies\Microsoft\Windows\BITS" "DisablePeerCachingClient DisablePeerCachingServer" -MSM_KEYS
call :BackupSlave "HKCU\SOFTWARE\Microsoft\InputPersonalization" "RestrictImplicitTextCollection RestrictImplicitInkCollection" -MSM_KEYS
call :BackupSlave "HKLM\SOFTWARE\Policies\Microsoft\Windows\TabletPC" "PreventHandwritingDataSharing"
call :BackupSlave "HKLM\SOFTWARE\Microsoft\Input\TIPC" "Enabled"
if defined _flag-w10red3 call :BackupSlave "HKU\!UserSID!\SOFTWARE\Microsoft\Input\TIPC" "Enabled"
call :BackupSlave "HKCU\SOFTWARE\Microsoft\Messaging" "CloudServiceSyncEnabled"
call :BackupSlave "HKLM\SOFTWARE\Policies\Microsoft\Windows\CloudContent" "DisableWindowsConsumerFeatures DisableTailoredExperiencesWithDiagnosticData DisableWindowsSpotlightFeatures" -MSM_KEYS
call :BackupSlave "HKCU\SOFTWARE\Policies\Microsoft\Windows\CloudContent" "DisableWindowsConsumerFeatures DisableTailoredExperiencesWithDiagnosticData DisableWindowsSpotlightFeatures" -MSM_KEYS
call :BackupSlave "HKU\!UserSID!\SOFTWARE\Policies\Microsoft\Windows\CloudContent" "DisableWindowsConsumerFeatures DisableTailoredExperiencesWithDiagnosticData DisableWindowsSpotlightFeatures" -MSM_KEYS
call :BackupSlave "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\CloudExperienceHost" "ETWLoggingEnabled"
call :BackupSlave "HKCU\SOFTWARE\Microsoft\InputPersonalization\TrainedDataStore" "HarvestContacts"
call :BackupSlave "HKLM\SOFTWARE\Policies\Microsoft\Windows\LocationAndSensors" "DisableLocation DisableSensors" -MSM_KEYS
call :BackupSlave "HKLM\SOFTWARE\Microsoft\Settings\FindMyDevice" "LocationSyncEnabled"
rem call :BackupSlave "HKLM\SYSTEM\ControlSet001\Control\Storage\EnabledDenyGP" "DenyAllGPState"
call :BackupSlave "HKCU\Control Panel\International\User Profile" "HttpAcceptLanguageOptOut"
call :BackupSlave "HKU\!UserSID!\Control Panel\International\User Profile" "HttpAcceptLanguageOptOut"
call :BackupSlave "HKCU\Software\Microsoft\Input\Settings" "InsightsEnabled"
call :BackupSlave "HKLM\Software\Microsoft\Input\Settings" "InsightsEnabled"
call :BackupSlave "HKLM\Software\Microsoft\Input\Settings" "HarvestContacts"
call :BackupSlave "HKLM\Software\Microsoft\Input\Settings" "LMDataLoggerEnabled"
call :BackupSlave "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\DeviceAccess\Global\LooselyCoupled" "Value"
call :BackupSlave "HKU\!UserSID!\SOFTWARE\Microsoft\Windows\CurrentVersion\DeviceAccess\Global\LooselyCoupled" "Value"
call :BackupSlave "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Diagnostics\DiagTrack" "DiagTrackAuthorization ConnectivityNoNetworkTime UploadPermissionReceived" -MSM_KEYS
call :BackupSlave "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Diagnostics\DiagTrack\HeartBeats\Aria" "EventDroppedUploader SettingsHttpAttempts VortexHttpAttempts EventsUploaded" -MSM_KEYS
call :BackupSlave "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Diagnostics\DiagTrack\HeartBeats\Default" "EventDroppedConsumer EventDroppedUploader SettingsHttpAttempts VortexHttpAttempts EventsUploaded MaxActiveAgentConnections" -MSM_KEYS
call :GUI_DrawPointPB 1 2
call :BackupSlave "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Diagnostics\DiagTrack\HeartBeats\Seville" "EventDroppedConsumer EventDroppedUploader SettingsHttpAttempts VortexHttpAttempts EventsUploaded" -MSM_KEYS
call :BackupSlave "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Diagnostics\DiagTrack\TraceManager" "MiniTraceSlotEnabled aotStartTime aotSessionStartTime miniTraceStartTime miniTraceSessionStartTime" -MSM_KEYS
rem call :BackupSlave "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Diagnostics\DiagTrack\SettingsRequests" "LastTelSettingsRingName LastTelSettingsRingId" -MSM_KEYS
if not defined _flag-w10red5 goto Backup_REGISTRY_skipLOCINS
for /F "tokens=* usebackq delims=" %%a in (`reg query "HKEY_CURRENT_USER\Software\Microsoft\Input\Locales" ^| findstr /ir ".*\\Locales\\loc.*"`) do (
	set _BackupMode_RegHKCU_IAT_FullPath=%%a
	set "_BackupMode_RegHKCU_IAT_CutPath=!_BackupMode_RegHKCU_IAT_FullPath:HKEY_CURRENT_USER\Software\Microsoft\Input\Locales\=!"
	if defined _BackupMode_RegHKCU_IAT_CutPath ( call :BackupSlave "HKEY_CURRENT_USER\Software\Microsoft\Input\Locales\!_BackupMode_RegHKCU_IAT_CutPath!" "UseFluency" -FORCE_SingleKey )
)
for /F "tokens=* usebackq delims=" %%b in (`reg query "HKEY_LOCAL_MACHINE\Software\Microsoft\Input\Locales" ^| findstr /ir ".*\\Locales\\loc.*"`) do (
	set _BackupMode_RegHKLM_IAT_FullPath=%%b
	set "_BackupMode_RegHKLM_IAT_CutPath=!_BackupMode_RegHKLM_IAT_FullPath:HKEY_LOCAL_MACHINE\Software\Microsoft\Input\Locales\=!"
	if defined _BackupMode_RegHKLM_IAT_CutPath ( call :BackupSlave "HKEY_LOCAL_MACHINE\Software\Microsoft\Input\Locales\!_BackupMode_RegHKLM_IAT_CutPath!" "UseFluency" -FORCE_SingleKey )
)
:Backup_REGISTRY_skipLOCINS
call :GUI_DrawPointPB 1 2
if defined _flag-w10red5 goto Backup_REGISTRY_skipSIDDAG
call :GetTreeBranch "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\DeviceAccess\Global" __GTB_FullBranch
set "__GTB_FullBranch=%__GTB_FullBranch:##=!LineBreak!%"
for /F "delims=##" %%A in ("!__GTB_FullBranch!") do (
	call :BackupSlave "%%A" "Value" -FORCE_SingleKey
)
if /i not [!username!]==[!_blackname!] goto Backup_REGISTRY_skipSIDDAG
call :GetTreeBranch "HKEY_USERS\!UserSID!\Software\Microsoft\Windows\CurrentVersion\DeviceAccess\Global" __GTB_FullBranch
set "__GTB_FullBranch=%__GTB_FullBranch:##=!LineBreak!%"
for /F "delims=##" %%A in ("!__GTB_FullBranch!") do (
	call :BackupSlave "%%A" "Value" -FORCE_SingleKey
)
:Backup_REGISTRY_skipSIDDAG
if not defined _flag-w10red3 goto Backup_REGISTRY_skipARIA
call :GUI_DrawPointPB 1 2
for /F "tokens=* usebackq delims=" %%a in (`reg query "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Diagnostics\DiagTrack\Tenants\P-ARIA" ^| findstr /ir ".*Tenants\\P-ARIA\\.*"`) do (
	set _BackupMode_RegDTA_FullPath=%%a
	set "_BackupMode_RegDTA_CutPath=!_BackupMode_RegDTA_FullPath:HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Diagnostics\DiagTrack\Tenants\P-ARIA\=!"
	if defined _BackupMode_RegDTA_CutPath ( call :BackupSlave "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Diagnostics\DiagTrack\Tenants\P-ARIA\!_BackupMode_RegDTA_CutPath!" "Enabled" -FORCE_SingleKey )
)
:Backup_REGISTRY_skipARIA
call :GUI_DrawPointPB 1 2
if defined _flag-w10red (
	for /F "tokens=* usebackq delims=" %%a in (`reg query "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\BackgroundAccessApplications" ^| findstr /ir ".*CurrentVersion\\BackgroundAccessApplications\\.*"`) do (
		set _BackupMode_RegBAA_FullPath=%%a
		set "_BackupMode_RegBAA_CutPath=!_BackupMode_RegBAA_FullPath:HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\BackgroundAccessApplications\=!"
		if defined _BackupMode_RegBAA_CutPath (
			call :BackupSlave "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\BackgroundAccessApplications\!_BackupMode_RegBAA_CutPath!" "Disabled" -FORCE_SingleKey
			call :BackupSlave "HKEY_USERS\!UserSID!\Software\Microsoft\Windows\CurrentVersion\BackgroundAccessApplications\!_BackupMode_RegBAA_CutPath!" "Disabled"
)))
call :GUI_DrawPointPB 1 2
for /F "tokens=* usebackq delims=" %%a in (`reg query "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Diagnostics\DiagTrack\HeartBeats" ^| findstr /ir ".*DiagTrack\\HeartBeats\\.*"`) do (
	set _BackupMode_RegDHB_FullPath=%%a
	set "_BackupMode_RegDHB_CutPath=!_BackupMode_RegDHB_FullPath:HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Diagnostics\DiagTrack\HeartBeats\=!"
	if defined _BackupMode_RegDHB_CutPath ( call :BackupSlave "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Diagnostics\DiagTrack\HeartBeats\!_BackupMode_RegDHB_CutPath!" "EventDroppedConsumer EventDroppedUploader SettingsHttpAttempts VortexHttpAttempts EventsUploaded MaxActiveAgentConnections" -MSM_KEYS )
)
call :BackupSlave "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\SettingSync" "DeviceMetadataUploaded"
for /F "tokens=* usebackq delims=" %%a in (`reg query "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\SettingSync\Groups" ^| findstr /ir ".*SettingSync\\Groups\\.*"`) do (
	set _BackupMode_RegSSG_FullPath=%%a
	set "_BackupMode_RegSSG_CutPath=!_BackupMode_RegSSG_FullPath:HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\SettingSync\Groups\=!"
	if defined _BackupMode_RegSSG_CutPath ( call :BackupSlave "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\SettingSync\Groups\!_BackupMode_RegSSG_CutPath!" "Enabled" -FORCE_SingleKey )
)
call :BackupSlave "HKEY_USERS\!UserSID!\Software\Microsoft\Windows\CurrentVersion\SettingSync" "DeviceMetadataUploaded"
call :GetTreeBranch "HKEY_USERS\!UserSID!\Software\Microsoft\Windows\CurrentVersion\SettingSync\Groups" __GTB_FullBranch
set "__GTB_FullBranch=%__GTB_FullBranch:##=!LineBreak!%"
for /F "delims=##" %%A in ("!__GTB_FullBranch!") do (
	call :BackupSlave "%%A" "Enabled" -FORCE_SingleKey
)
call :GUI_DrawPointPB 1 2
:Backup_REGISTRY_SEKeys
call :BackupSlave "HKLM\SOFTWARE\Policies\Microsoft\MRT" "DontOfferThroughWUAU"
call :BackupSlave "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender" "DisableAntiSpyware"
call :BackupSlave "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Run" "WindowsDefender"
call :BackupSlave "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\kernel" "MitigationOptions"
call :BackupSlave "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" "MoveImages"
call :GUI_DrawPointPB 1 2
:Backup_NETCFG
set "_Backup_NETCFG_HostBlock=blackbird.hostblock#n0x1"
call :GetHostBlockState
echo !_Backup_NETCFG_HostBlock!>>"!_BDBTmp!"
set "_Backup_NETCFG_VALUE="
For /F "usebackq tokens=3" %%a In (`reg query "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile" /v "NetworkThrottlingIndex" ^| findstr /i /c:" NetworkThrottlingIndex "`) Do ( set "_Backup_NETCFG_VALUE=%%a" )
echo net.throttling#n0x_!_Backup_NETCFG_VALUE!>>"!_BDBTmp!"
set "_Backup_MLNet_DISABLED=Disabled"
if defined _BirdLangString if defined _Bird_ExtPS call :GetMLSET _Backup_MLNet_DISABLED -SCHTASKS -DISABLED
for /f "tokens=1,* delims=:" %%a in ('netsh int teredo show state^|findstr /n "^"^|findstr /l /b /c:"3:"') do set "_BackupNET_TeredoStateRAW=%%b"
for /f "tokens=3" %%A in ("!_BackupNET_TeredoStateRAW!") do set "_BackupNET_TeredoState=%%A"
if /i "!_BackupNET_TeredoState!"=="!_Backup_MLNet_DISABLED!" (echo net.teredo#n0x0>>"!_BDBTmp!") else (echo net.teredo#n0x1>>"!_BDBTmp!")
for /f "tokens=1,* delims=:" %%a in ('netsh int tcp show heuristics^|findstr /n "^"^|findstr /l /b /c:"3:"') do set "_BackupNET_HeuristicsStateRAW=%%b"
for /f "tokens=1,* delims=:" %%A in ("!_BackupNET_HeuristicsStateRAW!") do set "_BackupNET_HeuristicsState=%%B"
if /i "!_BackupNET_HeuristicsState!"==" !_Backup_MLNet_DISABLED! " (echo tcp.heuristics#n0x0>>"!_BDBTmp!") else (echo tcp.heuristics#n0x1>>"!_BDBTmp!")
for /f "tokens=1,* delims=:" %%a in ('netsh int tcp show global^|findstr /n "^"^|findstr /l /b /c:"5:"') do set "_BackupNET_RSScalingStateRAW=%%b"
for /f "tokens=1,* delims=:" %%A in ("!_BackupNET_RSScalingStateRAW!") do set "_BackupNET_RSScalingState=%%B"
if /i "!_BackupNET_RSScalingState!"==" !_Backup_MLNet_DISABLED! " (echo tcp.rss#n0x0>>"!_BDBTmp!") else (echo tcp.rss#n0x1>>"!_BDBTmp!")
netsh int tcp show global | findstr /irc:".*Chimney.*enabled" >nul && (echo tcp.chimney#n0x1>>"!_BDBTmp!")
if errorlevel 1 (echo tcp.chimney#n0x0>>"!_BDBTmp!")
netsh int tcp show global | findstr /irc:".*ECN.*enabled" >nul && (echo tcp.ecn#n0x1>>"!_BDBTmp!")
if errorlevel 1 (echo tcp.ecn#n0x0>>"!_BDBTmp!")
set _Backup_NETCFG_STATE=
for /f "eol=; usebackq tokens=2 delims=:" %%a in (`netsh int tcp show global ^| findstr /irc:".*Add-On.*"`) do (
	set _Backup_NETCFG_STATE=%%a
	set "_Backup_NETCFG_STATE=!_Backup_NETCFG_STATE: =!"
	echo tcp.congestion#n0x_!_Backup_NETCFG_STATE!>>"!_BDBTmp!"
)
call :GUI_DrawPointPB 1 2
set /a _BackupMode_ProgressOrientationPoint=!_BackupMode_ProgressOrientationPoint_DIF!+1
set /a _BackupMode_ProgressOrientationPoint_DIF=100
call :drawProgressBar !_BackupMode_ProgressOrientationPoint! -scan_mode
for /l %%f in (!_BackupMode_ProgressOrientationPoint! 1 !_BackupMode_ProgressOrientationPoint_DIF!) do ( call :drawProgressBar %%f -scan_mode )
echo.&echo.
echo.
if exist "!_Backup_FilePath!" del /F /Q /S "!_Backup_FilePath!" >nul 2>&1
copy "!BlackTemp!\nest\bak.dblocal.tmp" "!_Backup_FilePath!" >nul 2>&1
if not exist "!_Backup_FilePath!" (
	set "ERROR_NOBACKUP_VALUE=!_Backup_FilePath!" &goto :ERROR_NOBACKUP
) else (
	del /F /Q /S "!BlackTemp!\nest\bak.*.tmp" >nul 2>&1
	<nul set /p =".!BS!  [" &call :GUI !_BC_A!!_BC_C! " Backup successfully created " &<nul set /p ="]" &echo.
	call :GUI 0f "   Saved to: "
	<nul set /p ="!_Backup_FilePath!"&echo.
	set "_Backup_FileRawBytes=" &set "_Backup_FileKBSizeLead=" &set "_Backup_FileKBSizeTrail=" &set "_BTrailKBLength="
	call :GetFileSize "!_Backup_FilePath!" __GFS_Lead __GFS_Trail
	if defined __GFS_Lead set "_Backup_FileKBSizeLead=!__GFS_Lead!"
	if defined __GFS_Trail set "_Backup_FileKBSizeTrail=!__GFS_Trail!"
	if defined _Backup_FileKBSizeTrail (
		if !_Backup_FileKBSizeTrail! gtr 999 (set /a "_Backup_FileKBSizeLead=!_Backup_FileKBSizeLead!+1" &set "_Backup_FileKBSizeTrail=0") else if !_Backup_FileKBSizeTrail! gtr 99 (set "_Backup_FileKBSizeTrail=!_Backup_FileKBSizeTrail:~0,-2!") else if !_Backup_FileKBSizeTrail! gtr 9 (set "_Backup_FileKBSizeTrail=!_Backup_FileKBSizeTrail:~0,-1!")
		call :GUI 0f "   File size: "
		<nul set /p ="!_Backup_FileKBSizeLead!,!_Backup_FileKBSizeTrail! KB"&echo.
))
if defined _DEBUG_MODE ( echo off &echo. &goto BDShell )
echo.
if defined _BirdRuntimeNoDeepSwitch (
	<nul set /p =".!BS!   Press any key to return to the main window" &call :GUI 0f " > "
	call :GetClean
	if not defined _flag-s pause>nul
	cls &goto Birdboot
) else (
	call :GetClean
	if not defined _flag-s pause>nul
	goto :eof
)

:BackupSlave
set "_BDBTmp=!BlackTemp!\nest\bak.dblocal.tmp"
set "__BackupSlave_MultiStatusMem=" &set "__BackupSlave_WildPath=" &set "__BackupSlave_WildKey="
set "__BackupSlave_CleanPath=" &set "__BackupSlave_CleanPathQuoted=" &set "__BackupSlave_CleanKey="
set "__BackupSlave_REGKeyType=" &set "__BackupSlave_REGKeyValue="
set "__BackupSlave_GLSPath_LEVEL1=" &set "__BackupSlave_GLSPath_LEVEL1Quoted="
set "__BackupSlave_GLSPath_LEVEL2=" &set "__BackupSlave_GLSPath_LEVEL2Quoted="
set "__BackupSlave_GLSPath_LEVEL3=" &set "__BackupSlave_GLSPath_LEVEL3Quoted="
set "__BackupSlave_GLSPath_LiveROOT=" &set "__BackupSlave_REGNoPath_Dirty="
set "__BackupSlave_REGNoPath_Clean=" &set "__BackupSlave_REGOut_Dirty=" &set "__BackupSlave_REGOut_Clean="
set "__BackupSlave_MSMKey=" &set "__BackupSlave_REGKeyType=" &set "__BackupSlave_REGKeyValue="
if "%~3"=="-MSM_KEYS" set __BackupSlave_MultiStatusMem=true
set "__BackupSlave_WildPath=%~1"
set __BackupSlave_CleanPath=!__BackupSlave_WildPath:"=!
set "__BackupSlave_CleanPath=!__BackupSlave_CleanPath:HKLM\=HKEY_LOCAL_MACHINE\!"
set "__BackupSlave_CleanPath=!__BackupSlave_CleanPath:HKCU\=HKEY_CURRENT_USER\!"
set "__BackupSlave_CleanPath=!__BackupSlave_CleanPath:HKCR\=HKEY_CLASSES_ROOT\!"
set "__BackupSlave_CleanPath=!__BackupSlave_CleanPath:HKU\=HKEY_USERS\!"
set "__BackupSlave_CleanPathQuoted=^"!__BackupSlave_CleanPath!^""
set "__BackupSlave_WildKey=%~2"
set __BackupSlave_CleanKey=!__BackupSlave_WildKey:"=!
if "%~3"=="-FORCE_SingleKey" (
	reg query !__BackupSlave_CleanPathQuoted! | findstr /i /c:" !__BackupSlave_CleanKey! " >nul && (
		For /F "usebackq tokens=2*" %%a In (`reg query !__BackupSlave_CleanPathQuoted! /v !__BackupSlave_CleanKey! ^| findstr /i /c:" !__BackupSlave_CleanKey! "`) Do ( set "__BackupSlave_REGKeyType=%%a" &set "__BackupSlave_REGKeyValue=%%b" )
		if not "!__BackupSlave_REGKeyValue!"=="" if not "!__BackupSlave_REGKeyType!"=="REG_SZ" echo !__BackupSlave_REGKeyValue! | findstr "0x" >nul && (
			set "__BackupSlave_REGKeyValue=!__BackupSlave_REGKeyValue:0x=!"
			call :Hex2Dec !__BackupSlave_REGKeyValue! DecValue
			set "__BackupSlave_REGKeyValue=!DecValue!"
		)
		if "!__BackupSlave_REGKeyValue!"=="" set __BackupSlave_REGKeyValue=NULL-VALUE
		set "__BackupSlave_REGOut_Dirty=!__BackupSlave_CleanPath!#!__BackupSlave_CleanKey!#!__BackupSlave_REGKeyType!#!__BackupSlave_REGKeyValue!"
		set "__BackupSlave_REGOut_Dirty=!__BackupSlave_REGOut_Dirty:%_blackname%=-BIRDUSER-!"
		set "__BackupSlave_REGOut_Dirty=!__BackupSlave_REGOut_Dirty:%username%=-BIGBIRDUSER-!"
		set "__BackupSlave_REGOut_Clean=!__BackupSlave_REGOut_Dirty:%UserSID%=-BIRDSID-!"
		echo !__BackupSlave_REGOut_Clean!>>"!_BDBTmp!"
		set "__BackupSlave_REGOut_Dirty=" &set "__BackupSlave_REGOut_Clean="
		goto:eof
	) || (
		set "__BackupSlave_REGOut_Dirty=!__BackupSlave_CleanPath!#!__BackupSlave_CleanKey!#null#NO-KEY"
		set "__BackupSlave_REGOut_Dirty=!__BackupSlave_REGOut_Dirty:%_blackname%=-BIRDUSER-!"
		set "__BackupSlave_REGOut_Dirty=!__BackupSlave_REGOut_Dirty:%username%=-BIGBIRDUSER-!"
		set "__BackupSlave_REGOut_Clean=!__BackupSlave_REGOut_Dirty:%UserSID%=-BIRDSID-!"
		echo !__BackupSlave_REGOut_Clean!>>"!_BDBTmp!"
		set "__BackupSlave_REGOut_Dirty=" &set "__BackupSlave_REGOut_Clean="
		goto:eof
	)
	goto:eof
)
set "__GLS_ResultLEVEL1=" &set "__GLS_ResultLEVEL2=" &set "__GLS_ResultLEVEL3="
call :GetLastString "!__BackupSlave_CleanPath!" __GLS_ResultLEVEL1
set "__BackupSlave_GLSPath_LEVEL1=!__BackupSlave_CleanPath:\%__GLS_ResultLEVEL1%=!"
set "__BackupSlave_GLSPath_LEVEL1Quoted=^"!__BackupSlave_GLSPath_LEVEL1!^""
call :GetLastString "!__BackupSlave_GLSPath_LEVEL1!" __GLS_ResultLEVEL2
set "__BackupSlave_GLSPath_LEVEL2=!__BackupSlave_GLSPath_LEVEL1:\%__GLS_ResultLEVEL2%=!"
set "__BackupSlave_GLSPath_LEVEL2Quoted=^"!__BackupSlave_GLSPath_LEVEL2!^""
call :GetLastString "!__BackupSlave_GLSPath_LEVEL2!" __GLS_ResultLEVEL3
set "__BackupSlave_GLSPath_LEVEL3=!__BackupSlave_GLSPath_LEVEL2:\%__GLS_ResultLEVEL3%=!"
set "__BackupSlave_GLSPath_LEVEL3Quoted=^"!__BackupSlave_GLSPath_LEVEL3!^""
reg query !__BackupSlave_GLSPath_LEVEL3Quoted! | findstr /ic:"!__BackupSlave_GLSPath_LEVEL2!" >nul && (
	reg query !__BackupSlave_GLSPath_LEVEL2Quoted! | findstr /ic:"!__BackupSlave_GLSPath_LEVEL1!" >nul && (
		reg query !__BackupSlave_GLSPath_LEVEL1Quoted! | findstr /ixc:"!__BackupSlave_CleanPath!" >nul && (
			set "__BackupSlave_GLSPath_LiveROOT=^"!__BackupSlave_CleanPath!^""
		) || (
			set "__BackupSlave_REGNoPath_Dirty=!__BackupSlave_CleanPath!#null#NO-PATH"
			set "__BackupSlave_REGNoPath_Dirty=!__BackupSlave_REGNoPath_Dirty:%_blackname%=-BIRDUSER-!"
			set "__BackupSlave_REGNoPath_Dirty=!__BackupSlave_REGNoPath_Dirty:%username%=-BIGBIRDUSER-!"
			set "__BackupSlave_REGNoPath_Clean=!__BackupSlave_REGNoPath_Dirty:%UserSID%=-BIRDSID-!"
			echo !__BackupSlave_REGNoPath_Clean!>>"!_BDBTmp!"
			set "__BackupSlave_REGNoPath_Dirty=" &set "__BackupSlave_REGNoPath_Clean="
			goto:eof
		)
	) || (
		set "__BackupSlave_REGNoPath_Dirty=!__BackupSlave_CleanPath!#null#NO-PATH"
		set "__BackupSlave_REGNoPath_Dirty=!__BackupSlave_REGNoPath_Dirty:%_blackname%=-BIRDUSER-!"
		set "__BackupSlave_REGNoPath_Dirty=!__BackupSlave_REGNoPath_Dirty:%username%=-BIGBIRDUSER-!"
		set "__BackupSlave_REGNoPath_Clean=!__BackupSlave_REGNoPath_Dirty:%UserSID%=-BIRDSID-!"
		echo !__BackupSlave_REGNoPath_Clean!>>"!_BDBTmp!"
		set "__BackupSlave_REGNoPath_Dirty=" &set "__BackupSlave_REGNoPath_Clean="
		goto:eof
	)
) || (
	set "__BackupSlave_REGNoPath_Dirty=!__BackupSlave_CleanPath!#null#NO-PATH"
	set "__BackupSlave_REGNoPath_Dirty=!__BackupSlave_REGNoPath_Dirty:%_blackname%=-BIRDUSER-!"
	set "__BackupSlave_REGNoPath_Dirty=!__BackupSlave_REGNoPath_Dirty:%username%=-BIGBIRDUSER-!"
	set "__BackupSlave_REGNoPath_Clean=!__BackupSlave_REGNoPath_Dirty:%UserSID%=-BIRDSID-!"
	echo !__BackupSlave_REGNoPath_Clean!>>"!_BDBTmp!"
	set "__BackupSlave_REGNoPath_Dirty=" &set "__BackupSlave_REGNoPath_Clean="
	goto:eof
)
if defined __BackupSlave_MultiStatusMem (
	for %%M in (!__BackupSlave_CleanKey!) do (
		set "__BackupSlave_MSMKey=%%M"
		reg query !__BackupSlave_GLSPath_LiveROOT! | findstr /i /c:" !__BackupSlave_MSMKey! " >nul && (
			For /F "usebackq tokens=2*" %%a In (`reg query !__BackupSlave_GLSPath_LiveROOT! /v !__BackupSlave_MSMKey! ^| findstr /i /c:" !__BackupSlave_MSMKey! "`) Do ( set "__BackupSlave_REGKeyType=%%a" &set "__BackupSlave_REGKeyValue=%%b" )
			if not [!__BackupSlave_REGKeyValue!]==[] if not [!__BackupSlave_REGKeyType!]==[REG_SZ] echo !__BackupSlave_REGKeyValue! | findstr "0x" >nul && (
				set "__BackupSlave_REGKeyValue=!__BackupSlave_REGKeyValue:0x=!"
				call :Hex2Dec !__BackupSlave_REGKeyValue! DecValue
				set "__BackupSlave_REGKeyValue=!DecValue!"
			)
			if [!__BackupSlave_REGKeyValue!]==[] set __BackupSlave_REGKeyValue=NULL-VALUE
			set "__BackupSlave_REGOut_Dirty=!__BackupSlave_CleanPath!#!__BackupSlave_MSMKey!#!__BackupSlave_REGKeyType!#!__BackupSlave_REGKeyValue!"
			set "__BackupSlave_REGOut_Dirty=!__BackupSlave_REGOut_Dirty:%_blackname%=-BIRDUSER-!"
			set "__BackupSlave_REGOut_Dirty=!__BackupSlave_REGOut_Dirty:%username%=-BIGBIRDUSER-!"
			set "__BackupSlave_REGOut_Clean=!__BackupSlave_REGOut_Dirty:%UserSID%=-BIRDSID-!"
			echo !__BackupSlave_REGOut_Clean!>>"!_BDBTmp!"
			set "__BackupSlave_REGOut_Dirty=" &set "__BackupSlave_REGOut_Clean="
		) || (
			set "__BackupSlave_REGOut_Dirty=!__BackupSlave_CleanPath!#!__BackupSlave_MSMKey!#null#NO-KEY"
			set "__BackupSlave_REGOut_Dirty=!__BackupSlave_REGOut_Dirty:%_blackname%=-BIRDUSER-!"
			set "__BackupSlave_REGOut_Dirty=!__BackupSlave_REGOut_Dirty:%username%=-BIGBIRDUSER-!"
			set "__BackupSlave_REGOut_Clean=!__BackupSlave_REGOut_Dirty:%UserSID%=-BIRDSID-!"
			echo !__BackupSlave_REGOut_Clean!>>"!_BDBTmp!"
			set "__BackupSlave_REGOut_Dirty=" &set "__BackupSlave_REGOut_Clean="
		)
	)
	goto:eof
)
reg query !__BackupSlave_GLSPath_LiveROOT! | findstr /i /c:" !__BackupSlave_CleanKey! " >nul && (
	For /F "usebackq tokens=2*" %%a In (`reg query !__BackupSlave_GLSPath_LiveROOT! /v !__BackupSlave_CleanKey! ^| findstr /i /c:" !__BackupSlave_CleanKey! "`) Do ( set "__BackupSlave_REGKeyType=%%a" &set "__BackupSlave_REGKeyValue=%%b" )
	if not "!__BackupSlave_REGKeyValue!"=="" if not "!__BackupSlave_REGKeyType!"=="REG_SZ" echo !__BackupSlave_REGKeyValue! | findstr "0x" >nul && (
		set "__BackupSlave_REGKeyValue=!__BackupSlave_REGKeyValue:0x=!"
		call :Hex2Dec !__BackupSlave_REGKeyValue! DecValue
		set "__BackupSlave_REGKeyValue=!DecValue!"
	)
	if "!__BackupSlave_REGKeyValue!"=="" set __BackupSlave_REGKeyValue=NULL-VALUE
	set "__BackupSlave_REGOut_Dirty=!__BackupSlave_CleanPath!#!__BackupSlave_CleanKey!#!__BackupSlave_REGKeyType!#!__BackupSlave_REGKeyValue!"
	set "__BackupSlave_REGOut_Dirty=!__BackupSlave_REGOut_Dirty:%_blackname%=-BIRDUSER-!"
	set "__BackupSlave_REGOut_Dirty=!__BackupSlave_REGOut_Dirty:%username%=-BIGBIRDUSER-!"
	set "__BackupSlave_REGOut_Clean=!__BackupSlave_REGOut_Dirty:%UserSID%=-BIRDSID-!"
	echo !__BackupSlave_REGOut_Clean!>>"!_BDBTmp!"
	set "__BackupSlave_REGOut_Dirty=" &set "__BackupSlave_REGOut_Clean="
	goto:eof
) || (
	set "__BackupSlave_REGOut_Dirty=!__BackupSlave_CleanPath!#!__BackupSlave_CleanKey!#null#NO-KEY"
	set "__BackupSlave_REGOut_Dirty=!__BackupSlave_REGOut_Dirty:%_blackname%=-BIRDUSER-!"
	set "__BackupSlave_REGOut_Dirty=!__BackupSlave_REGOut_Dirty:%username%=-BIGBIRDUSER-!"
	set "__BackupSlave_REGOut_Clean=!__BackupSlave_REGOut_Dirty:%UserSID%=-BIRDSID-!"
	echo !__BackupSlave_REGOut_Clean!>>"!_BDBTmp!"
	set "__BackupSlave_REGOut_Dirty=" &set "__BackupSlave_REGOut_Clean="
	goto:eof
)
goto:eof

rem Blackbird STD ("GreyFox") BETA
:Blackbird_STD
title Blackbird STD
if defined _BirdRuntimeNoDeepSwitch cls
echo.
<nul set /p =".!BS!  "&call :GUI !_BC_B!!_BC_D! " B l a c k b i r d  STD "
<nul set /p =".!BS!!__SIZE_Debug!     "&call :GUI 0f "Windows privacy, security and performance" /n
<nul set /p =".!BS!!__SIZE_Debug!                                                        "&call :GUI 06 "Version !blackbird_ver!" /n
call :DrawBird 1 -LOOP 2
call :DrawBird 3 _STD_BootLogoFill
<nul set /p =".!BS!!_STD_BootLogoFill! "&call :GUI 0f "SpyTask Destroyer" /n
call :DrawBird 4 _STD_BootLogoFill
<nul set /p =".!BS!!_STD_BootLogoFill! "&echo.
call :DrawBird 5 _STD_BootLogoFill
<nul set /p =".!BS!!_STD_BootLogoFill! ["&call :GUI !_BC_B!!_BC_D! " WARNING "
<nul set /p ="]"&echo.
call :DrawBird 6 _STD_BootLogoFill
if not defined __SIZE_Debug (
	<nul set /p =".!BS!!_STD_BootLogoFill! STD attempts to permanently remove any spy tasks "&echo.
	call :DrawBird 7 _STD_BootLogoFill
	<nul set /p =".!BS!!_STD_BootLogoFill! that cannot be disabled otherwise."&echo.
	call :DrawBird 8 _STD_BootLogoFill
	<nul set /p =".!BS!!_STD_BootLogoFill! Any tasks explicitly removed CANNOT be restored^!"&echo.
	call :DrawBird 9 -LOOP 10
)
if defined __SIZE_Debug (
	<nul set /p =".!BS!!_STD_BootLogoFill! STD attempts to permanently remove any spy tasks that cannot be disabled otherwise."&echo.
	call :DrawBird 7 _STD_BootLogoFill
	<nul set /p =".!BS!!_STD_BootLogoFill! Any tasks explicitly removed CANNOT be restored^!"&echo.
	call :DrawBird 8 -LOOP 10
)
if not defined _flag-s if not defined _FEED (
	echo.&echo.
	call :GUI 0f "   Press any key to run"&call :GUI 06 " Blackbird STD "&call :GUI 0f "> " 
	pause>nul
	goto STD_Init
)
if not defined _flag-s if defined _FEED (
	set "_BirdInput=" &echo.
	<nul set /p =".!BS!   [" &call :GUI 0f " > " &<nul set /p ="] Press" &call :GUI 0f " Q "
	if defined _BirdRuntimeNoDeepSwitch (<nul set /p ="to quit and return to the main window."&echo.)
	if not defined _BirdRuntimeNoDeepSwitch (<nul set /p ="to quit."&echo.)
	echo.&echo.
	call :GUI 0f "   Press any other key to run"&call :GUI 06 " Blackbird STD "&call :GUI 0f "> " 
	for /F "delims=" %%B in ('xcopy /L /w "!_FEED!" "!_FEED!" 2^>NUL') do ( if not defined _BirdInput set "_BirdInput=%%B" )
	set "_BirdInput=!_BirdInput:~-1!"
	if defined _BirdRuntimeNoDeepSwitch if /i [!_BirdInput!]==[q] ( cls & goto Birdboot )
	if not defined _BirdRuntimeNoDeepSwitch if /i [!_BirdInput!]==[q] ( echo. & goto :eof )
	goto STD_Init
)
:STD_Init
echo.&echo.
echo    - Scanning system scheduled tasks . . . &echo.
del /F /Q /S "!BlackTemp!\blackbird.std*" >nul 2>&1
if not exist "!BlackTemp!\" MD "!BlackTemp!" >nul 2>&1
set "_STD_TaskML_DISABLED=Disabled"
if defined _BirdLangString if defined _Bird_ExtPS call :GetMLSET _STD_TaskML_DISABLED -SCHTASKS -DISABLED
schtasks /query /fo list>>"!BlackTemp!\blackbird.stdtmp1.tmp"
if not exist "!BlackTemp!\blackbird.stdtmp1.tmp" ( set "ERROR_NOTEMP_VALUE=!BlackTemp!\blackbird.stdtmp1.tmp" &goto ERROR_NOTEMP )
for %%A in (!_Bird_BigTaskPool!) do (
	set "_STD_LiveQueryPath=%%A"
	set "_STD_LiveQueryPath=!_STD_LiveQueryPath:$= !" &set "_STD_LiveQueryPath=!_STD_LiveQueryPath:[=(!"
	set "_STD_LiveQueryPath=!_STD_LiveQueryPath:]=)!" &set "_STD_LiveQueryPath=!_STD_LiveQueryPath:\=\\!"
	findstr /irc:".*\:.*  !_STD_LiveQueryPath!$" "!BlackTemp!\blackbird.stdtmp1.tmp" >nul && (
		set "_STD_LiveQueryPath=!_STD_LiveQueryPath:\\=\!" &set "_STD_LiveQueryPathQuoted=^"!_STD_LiveQueryPath!^""
		schtasks /query /TN !_STD_LiveQueryPathQuoted! | findstr /ir ".*!_STD_TaskML_DISABLED!\>">nul || (
			set "_STD_LiveQueryPath=!_STD_LiveQueryPathQuoted:"=!"
			set "_STD_LiveDisplayRoot=!_STD_LiveQueryPath:-%UserSID%=!"
			call :GetLastString "!_STD_LiveDisplayRoot!" __GLS_Result
			set "_STD_LiveDisplayTaskName=!__GLS_Result!"
			<nul set /p =".!BS!  "&call :GUI 0f " > " &call :GUI !_BC_B!!_BC_D! " Found "&call :GUI 0E " !_STD_LiveDisplayTaskName! "
			<nul set /p ="[!_STD_LiveDisplayRoot!]"&echo.
			schtasks /End /TN !_STD_LiveQueryPathQuoted! >nul 2>&1
			schtasks /Change /TN !_STD_LiveQueryPathQuoted! /Disable >nul 2>&1
			if defined _Bird_ExtPS (
				call :GetLastString "!_STD_LiveQueryPath!" __GLS_Result
				set "_STD_DisableEXTTaskName=!__GLS_Result!" &set "_STD_DisableEXTPath=!_STD_LiveQueryPath!"
				for %%a in ("!_STD_DisableEXTTaskName!") do set "_STD_DisableLiveEXTPath=!_STD_DisableEXTPath:%%~a=!"
				powershell "Disable-ScheduledTask -TaskName '!_STD_DisableEXTTaskName!' -TaskPath '!_STD_DisableLiveEXTPath!'" >nul 2>&1
			)
			schtasks /query /TN !_STD_LiveQueryPathQuoted! | findstr /ir ".*!_STD_TaskML_DISABLED!\>" >nul && (
				<nul set /p =".!BS!     "&call :GUI !_BC_A!!_BC_C! " - "&call :GUI 0f " Task successfully disabled. No removal required." /n
			)
			schtasks /query /TN !_STD_LiveQueryPathQuoted! | findstr /ir ".*!_STD_TaskML_DISABLED!\>" >nul || (
				if defined _flag-s ( <nul set /p =".!BS!     "&call :GUI !_BC_B!!_BC_D! " X "&call :GUI 0f " Task cannot be disabled. Attempting forced removal . . ." /n )
				set _STD_ForceRemoveTask=true
				if not defined _flag-s if defined _FEED ( 
					set _STDInput=
					<nul set /p =".!BS!     "&call :GUI !_BC_B!!_BC_D! " X "&call :GUI 0f " Task cannot be disabled." /n
					<nul set /p =".!BS!     "&call :GUI 07 "[>] Press "&call :GUI 0f "F"&call :GUI 07 " to attempt force removal"&call :GUI 06 " > "
					for /F "delims=" %%x in ('xcopy /L /w "!_FEED!" "!_FEED!" 2^>NUL') do ( if not defined _STDInput set "_STDInput=%%x" )
					set "_STDInput=!_STDInput:~-1!" &echo.
					if /i not [!_STDInput!]==[F] ( echo       - Skipping task - &set "_STD_ForceRemoveTask=" )
				)
				if defined _STD_ForceRemoveTask (
					schtasks /Delete /TN !_STD_LiveQueryPathQuoted! /F >nul 2>&1
					start "Blackbird_STD" /separate /wait /b schtasks /end /TN !_STD_LiveQueryPathQuoted! >nul 2>&1
					start "Blackbird_STD" /separate /wait /b schtasks /Delete /TN !_STD_LiveQueryPathQuoted! /F >nul 2>&1
					if defined _Bird_ExtPS (
						call :GetLastString "!_STD_LiveQueryPath!" __GLS_Result
						set "_STD_DeleteEXTTaskName=!__GLS_Result!" &set "_STD_DeleteEXTPath=!_STD_LiveQueryPath!"
						for %%b in ("!_STD_DeleteEXTTaskName!") do set "_STD_DeleteLiveEXTPath=!_STD_DeleteEXTPath:%%~b=!"
						powershell "Unregister-ScheduledTask -TaskName '!_STD_DeleteEXTTaskName!' -TaskPath '!_STD_DeleteLiveEXTPath!' -Confirm:$false" >nul 2>&1
					)
					set _STD_NotRemoved=
					set "_STD_LiveQueryPath=!_STD_LiveQueryPath:\=\\!"
					schtasks /query /fo list | findstr /irc:".*\:.*  !_STD_LiveQueryPath!$" && set _STD_NotRemoved=true
					if defined _STD_NotRemoved (
						<nul set /p =".!BS!     "&call :GUI !_BC_B!!_BC_D! " X "&call :GUI 0f " Failed to remove task." /n
					)
					if not defined _STD_NotRemoved (
						<nul set /p =".!BS!     "&call :GUI !_BC_A!!_BC_C! " - "&call :GUI 0f " Task successfully removed." /n
			)))
			set "STD_IAI=true" &echo.
)))
if not defined STD_IAI (
	echo. &call :GUI 0f "   Scan complete  "
	<nul set /p ="[" &call :GUI !_BC_A!!_BC_C! " PC clean " &<nul set /p ="]"&echo.
	<nul set /p =".!BS!   No running spy tasks found." &echo.
) 
if defined STD_IAI (
	echo. &call :GUI 0f "   Scan complete" /n
	<nul set /p =".!BS!   Please restart your computer for changes to take effect." &echo.
)
if defined _BirdRuntimeNoDeepSwitch (
	echo.
	<nul set /p =".!BS!   Press any key to return to the main window" &call :GUI 0f " > "
	call :GetClean
	if not defined _flag-s pause>nul
	cls &goto Birdboot
) else (
	call :GetClean
	if not defined _flag-s pause>nul
	goto :eof
)

rem Blackbird ApplicationManager ("CyanWarthog")
:Blackbird_AppMan
title Blackbird App Manager
if defined _BirdRuntimeNoDeepSwitch cls
if defined __SIZE_Debug set "__SIZE_Debug=!__SIZE_Debug:~0,-1!"
set "_AMPermSearchConfig=!computername!.*!username!.*(F)"
set "_AMLocalAppPath=!LOCALAPPDATA!"
set "_AppMan_PermsCfgFAIL=" &set "_AppMan_PermsIAI="
set "_AppMan_SysPermsIAI=" &set "_AppMan_WinPermsIAI=" &set "_AppMan_LPPermsIAI="
echo.
call :GUI 0f "  B l a c k b i r d  "&call :GUI 03 "App Manager"
<nul set /p =".!BS!!__SIZE_Debug!"&call :GUI 0f "Windows privacy, security and performance" /n
<nul set /p =".!BS!!__SIZE_Debug!                                                        "&call :GUI 06 "Version !blackbird_ver!" /n
icacls "!systemroot!\SystemApps" | findstr /irc:"!computername!.*!username!.*(F)" >nul || (set "_AppMan_PermsIAI=true" &set "_AppMan_SysPermsIAI=true")
icacls "!programfiles!\WindowsApps" | findstr /irc:"!computername!.*!username!.*(F)" >nul || (set "_AppMan_PermsIAI=true" &set "_AppMan_WinPermsIAI=true")
icacls "!_AMLocalAppPath!\Packages" | findstr /irc:"!computername!.*!username!.*(F)" >nul || (set "_AppMan_PermsIAI=true" &set "_AppMan_LPPermsIAI=true")
call :DrawBird 1 -LOOP 2
call :DrawBird 3 _AppMan_BootLogoFill
<nul set /p =".!BS!!_AppMan_BootLogoFill! [ A ] = "&call :GUI 0E "Active" /n
call :DrawBird 4 _AppMan_BootLogoFill
<nul set /p =".!BS!!_AppMan_BootLogoFill! ["&call :GUI !_BC_A!!_BC_C! " B "
<nul set /p ="] = "&call :GUI !_BC_E!!_BC_F! "Blocked" /n
call :DrawBird 5 -LOOP 6
call :DrawBird 7 _AppMan_BootLogoFill
if defined _AppMan_PermsIAI (
	<nul set /p =".!BS!!_AppMan_BootLogoFill! ["&call :GUI 0f " Configuring folder permissions . . . "
	if defined _AppMan_SysPermsIAI (
		call :GetOwnership "!systemroot!\SystemApps"
		icacls "!systemroot!\SystemApps" | findstr /irc:"!computername!.*!username!.*(F)" >nul || set _AppMan_PermsCfgFAIL=true
	)
	if defined _AppMan_WinPermsIAI (
		call :GetOwnership "!programfiles!\WindowsApps"
		icacls "!programfiles!\WindowsApps" | findstr /irc:"!computername!.*!username!.*(F)" >nul || set _AppMan_PermsCfgFAIL=true
	)
	if defined _AppMan_LPPermsIAI (
		call :GetOwnership "!_AMLocalAppPath!\Packages"
		icacls "!_AMLocalAppPath!\Packages" | findstr /irc:"!computername!.*!username!.*(F)" >nul || set _AppMan_PermsCfgFAIL=true
	)
	if not defined _AppMan_PermsCfgFAIL call :GUI !_BC_A!!_BC_C! " OK "
	if defined _AppMan_PermsCfgFAIL call :GUI !_BC_B!!_BC_D! " Failed "
	<nul set /p ="]"&echo.
	call :DrawBird 8 _AppMan_BootLogoFill
	<nul set /p =".!BS!!_AppMan_BootLogoFill! ["&call :GUI 30 " Populating app list - Please wait "
	<nul set /p ="]"&echo.
	call :DrawBird 9 -LOOP 10
)
if not defined _AppMan_PermsIAI (
	<nul set /p =".!BS!!_AppMan_BootLogoFill! ["&call :GUI 30 " Populating app list - Please wait "
	<nul set /p ="]"&echo.
	call :DrawBird 8 -LOOP 10
)
:AppMan_Refresh
set "_AppManCounter=0" &set "_AppManCounter_DBwin=0" &set "_AppManCounter_DBsys=0" &set "_AppManCounter_ALL_static=0"
set "_AMPathRawDIR_Win=!BlackTemp!\bird.aman_wad.tmp" &set "_AMPathRawDIR_Sys=!BlackTemp!\bird.aman_sad.tmp"
set "_AMPathRawDB_Win=!BlackTemp!\bird.amandb_rw.tmp" &set "_AMPathRawDB_Sys=!BlackTemp!\bird.amandb_rs.tmp"
set "_AMPathLiveDB_Win=!BlackTemp!\bird.amandb_lw.tmp" &set "_AMPathLiveDB_Sys=!BlackTemp!\bird.amandb_ls.tmp"
del /F /Q /S "!BlackTemp!\bird.aman*" >nul 2>&1
dir /a:d /b "!programfiles!\WindowsApps" | findstr /i /v "Deleted MovedPackages">>"!BlackTemp!\bird.aman_wad.tmp"
For /F "usebackq tokens=1 delims=_" %%W in ("!_AMPathRawDIR_Win!") do (
	set _AppManDB_Win=%%W
	set "_AppManDB_Win=!_AppManDB_Win:Microsoft.=!"
	if not "!_AppManDB_Win!"=="!_AppManDB_WinCOMPARE!" (
		set /A _AppManCounter_DBwin=!_AppManCounter_DBwin! + 1
		echo !_AppManDB_Win!>>!_AMPathRawDB_Win!
		set "_AppMan_WINSIG!_AppManCounter_DBwin!=!_AppManDB_Win!"
	)
	set "_AppManDB_WinCOMPARE=!_AppManDB_Win!"
)
dir /a:d /b "!systemroot!\SystemApps">>"!BlackTemp!\bird.aman_sad.tmp"
For /F "usebackq tokens=1 delims=_" %%S in ("!_AMPathRawDIR_Sys!") do (
	set _AppManDB_Sys=%%S
	set "_AppManDB_Sys=!_AppManDB_Sys:Microsoft.=!"
	set "_AppManDB_Sys=!_AppManDB_Sys:Windows.=!"
	if not "!_AppManDB_Sys!"=="!_AppManDB_SysCOMPARE!" (
		set /A _AppManCounter_DBsys=!_AppManCounter_DBsys! + 1
		echo !_AppManDB_Sys!>>!_AMPathRawDB_Sys!
		set "_AppMan_SYSSIG!_AppManCounter_DBsys!=!_AppManDB_Sys!"
	)
	set "_AppManDB_SysCOMPARE=!_AppManDB_Sys!"
)
if defined __SIZE_Debug set "__SIZE_Debug=______"
if defined __SIZE_Debug set "__SIZE_AltDebug=_"
if exist "!BlackTemp!\bird.amandb_rw.tmp" (
	<nul set /p =".!BS!  ___________!__SIZE_Debug!"&call :GUI 03 " Windows Apps "&<nul set /p ="!__SIZE_Debug!___________!__SIZE_AltDebug!|"
)
if exist "!BlackTemp!\bird.amandb_rs.tmp" (
	<nul set /p ="!__SIZE_AltDebug!___________!__SIZE_Debug!"&call :GUI 03 " System Apps "&<nul set /p ="!__SIZE_Debug!___________"&echo.
)
if defined __SIZE_Debug set "__SIZE_Debug=            "
set /A _AppManCounter_ALL_static=!_AppManCounter_DBwin! + !_AppManCounter_DBsys!
if exist "!BlackTemp!\bird.amandb_rw.tmp" (sort < "!BlackTemp!\bird.amandb_rw.tmp" > "!BlackTemp!\bird.amandb_lw.tmp")
if exist "!BlackTemp!\bird.amandb_rs.tmp" (sort < "!BlackTemp!\bird.amandb_rs.tmp" > "!BlackTemp!\bird.amandb_ls.tmp")
set _AppManCounter_LiveSHOWN=0
set "_BakString=BlackbirdBackup"
set "_AppManPath_WinROOT=!programfiles!\WindowsApps"
set "_AppManPath_SysROOT=!systemroot!\SystemApps"
set "_AppManPath_ALPROOT=!LOCALAPPDATA!\packages"
for /l %%a in (1 1 %_AppManCounter_ALL_static%) do (
	if not defined _AppMan_WINSIG%%a if not defined _AppMan_SYSSIG%%a goto AppManPrePrompt
	set "_AppMan_ResizerNum=" &set "_AppMan_RESIZEDSPACE="
	if defined _AppMan_WINSIG%%a type "!BlackTemp!\bird.amandb_lw.tmp" | find "!_AppMan_WINSIG%%a!" >nul && (
		set /A _AppManCounter_LiveSHOWN=!_AppManCounter_LiveSHOWN! + 1
		set _AMSCode=
		for /f "usebackq tokens=* delims=" %%B in (`dir /a:d /b "!_AppManPath_WinROOT!" ^| findstr /i ".*!_AppMan_WINSIG%%a!.*"`) do (
			if not defined !_BCPartialPath_Win! set "_BCPartialPath_Win=%%B"
			if defined !_BCPartialPath_Win! set "_BCPartialPath_Win=!_BCPartialPath_Win!"
			if defined _BCPartialPath_Win set "_AMSCode= A "
			echo !_BCPartialPath_Win! | findstr /i ".*!_BakString!">nul && (
				set "_BCRPartialPath_Win=!_BCPartialPath_Win:.BlackbirdBackup=!"
				if exist "!_AppManPath_WinROOT!\!_BCRPartialPath_Win!\" set "_AMSCode= A "
				if not exist "!_AppManPath_WinROOT!\!_BCRPartialPath_Win!\" set "_AMSCode= B "
		))
		set "_AMIndex!_AppManCounter_LiveSHOWN!=!_AppMan_WINSIG%%a!_amsc-w"
		<nul set /p =".!BS!  !_AppManCounter_LiveSHOWN!. !_AppMan_WINSIG%%a!"
		if !_AppManCounter_LiveSHOWN! leq 9 <nul set /p =".!BS! "
		if !_AppManCounter_LiveSHOWN! leq 99 <nul set /p =".!BS!  "
		if !_AppManCounter_LiveSHOWN! geq 100 <nul set /p =".!BS! "
		set "__INPUT-LengthCalcValue=!_AppMan_WINSIG%%a!"
		set "__AppMan_ResizerDefaultSpace=                                     "
		call :StringCalc __INPUT-LengthCalcValue _LengthResult
		set _AppMan_AppStringSizeNum=!_LengthResult!
		call :StringCalc __AppMan_ResizerDefaultSpace _LengthResult
		set _AppMan_DefaultSpaceSizeNum=!_LengthResult!
		set /a "_AppMan_ResizerNum=!_AppMan_DefaultSpaceSizeNum!-!_AppMan_AppStringSizeNum!"
		for /l %%r in (1 1 !_AppMan_ResizerNum!) do ( set "_AppMan_RESIZEDSPACE=!_AppMan_RESIZEDSPACE! " )
		if "!_AMSCode!"==" A " ( <nul set /p =".!BS!!_AppMan_RESIZEDSPACE![!_AMSCode!] |" )
		if "!_AMSCode!"==" B " (
			<nul set /p =".!BS!!_AppMan_RESIZEDSPACE!["&call :GUI !_BC_A!!_BC_C! "!_AMSCode!"
			<nul set /p =".!BS!] |"
	))
	set "_AppMan_ResizerNum=" &set "_AppMan_RESIZEDSPACE="
	if defined _AppMan_SYSSIG%%a type "!BlackTemp!\bird.amandb_ls.tmp" | find "!_AppMan_SYSSIG%%a!" >nul && (
		set /A _AppManCounter_LiveSHOWN=!_AppManCounter_LiveSHOWN! + 1
		set _AMSCode=
		for /f "usebackq tokens=* delims=" %%C in (`dir /a:d /b "!_AppManPath_SysROOT!" ^| findstr /i ".*!_AppMan_SYSSIG%%a!.*"`) do (
			if not defined !_BCPartialPath_Sys! set "_BCPartialPath_Sys=%%C"
			if defined !_BCPartialPath_Sys! set "_BCPartialPath_Sys=!_BCPartialPath_Sys!"
			if defined _BCPartialPath_Sys set "_AMSCode= A "
			echo !_BCPartialPath_Sys! | findstr /i ".*!_BakString!">nul && (
				set "_BCRPartialPath_Sys=!_BCPartialPath_Sys:.BlackbirdBackup=!"
				if exist "!_AppManPath_SysROOT!\!_BCRPartialPath_Sys!\" set "_AMSCode= A "
				if not exist "!_AppManPath_SysROOT!\!_BCRPartialPath_Sys!\" set "_AMSCode= B "
		))
		set "_AMIndex!_AppManCounter_LiveSHOWN!=!_AppMan_SYSSIG%%a!_amsc-s"
		<nul set /p =".!BS! !_AppManCounter_LiveSHOWN!. !_AppMan_SYSSIG%%a!"
		if !_AppManCounter_LiveSHOWN! leq 9 <nul set /p =".!BS! "
		if !_AppManCounter_LiveSHOWN! leq 99 <nul set /p =".!BS!  "
		if !_AppManCounter_LiveSHOWN! geq 100 <nul set /p =".!BS! "
		set "__INPUT-LengthCalcValue=!_AppMan_SYSSIG%%a!"
		set "__AppMan_ResizerDefaultSpace=                                     "
		call :StringCalc __INPUT-LengthCalcValue _LengthResult
		set _AppMan_AppStringSizeNum=!_LengthResult!
		call :StringCalc __AppMan_ResizerDefaultSpace _LengthResult
		set _AppMan_DefaultSpaceSizeNum=!_LengthResult!
		set /a "_AppMan_ResizerNum=!_AppMan_DefaultSpaceSizeNum!-!_AppMan_AppStringSizeNum!"
		for /l %%r in (1 1 !_AppMan_ResizerNum!) do (
			set "_AppMan_RESIZEDSPACE=!_AppMan_RESIZEDSPACE! "
		)
		if "!_AMSCode!"==" A " ( <nul set /p =".!BS!!_AppMan_RESIZEDSPACE![!_AMSCode!]" )
		if "!_AMSCode!"==" B " (
			<nul set /p =".!BS!!_AppMan_RESIZEDSPACE!["&call :GUI !_BC_A!!_BC_C! "!_AMSCode!"
			<nul set /p =".!BS!]"
		)
		echo.
	)
	if defined _AppMan_WINSIG%%a if not defined _AppMan_SYSSIG%%a echo.
	set "_AppMan_ResizerNum=" &set "_AppMan_RESIZEDSPACE="
)
:AppManPrePrompt
echo.
call :GUI 0f "  Select an application by entering it's assigned number (from 1 to !_AppManCounter_LiveSHOWN!)." /n
call :GUI 0f "  The desired application is blocked or recovered, depending on it's current state." /n
:AppmanShell
echo.
set "_AppInput_RangeFROM=" &set "_AppInput_RangeTO="
set "_LIVEPartialPath=" &set "_LIVEStateQueryPath=" &set "_LIVERecoveryPath="
set "_AppMan_LiveSELECT_State=" &set "_AppMan_LiveSELECT_IsActive=" &set "_AppMan_LiveSELECT_IsDisabled="
set "_AppMan_LiveDISABLE_FAIL=" &set "_AppMan_LiveRECOVERY_FAIL=" &set "_AppInput="
<nul set /p =".!BS!  (1-!_AppManCounter_LiveSHOWN!) Application,"
<nul set /p =".!BS!  (R)efresh list,"
<nul set /p =".!BS!  (Q)uit"&echo.
set /P "_AppInput=.!BS!  Select > "
if not defined _AppInput goto AppMan_ERROR_INPUT
set "_AppInputTemp=!_AppInput:;= !"
if /i "!_AppInputTemp!" == "R" (
	echo. &<nul set /p =".!BS!  - Refreshing app list . . ." &echo.
	echo. &goto AppMan_Refresh
)
if /i "!_AppInputTemp!"=="Q" ( if defined _BirdRuntimeNoDeepSwitch ( cls &goto Birdboot ) else if not defined _BirdRuntimeNoDeepSwitch ( echo. &goto :eof ) )
set "_FeedDebug=" & for /f "delims=0123456789" %%i in ("!_AppInputTemp!") do set _FeedDebug=%%i
if "!_FeedDebug!"=="-" (
	for /f "tokens=1,2 delims=-" %%A in ("!_AppInputTemp!") do (set "_AppInput_RangeFROM=%%A" & set "_AppInput_RangeTO=%%B")
	if !_AppInput_RangeTO! gtr !_AppManCounter_LiveSHOWN! goto AppMan_ERROR_RANGE
	if !_AppInput_RangeFROM! gtr !_AppInput_RangeTO! goto AppMan_ERROR_RANGE
) else if not defined _FeedDebug (
	if !_AppInputTemp! equ 0 goto AppMan_ERROR_INPUT
	set /A _AppInputFeed="!_AppInputTemp!" * 1
	if !_AppInputFeed! gtr !_AppManCounter_LiveSHOWN! goto AppMan_ERROR_INPUT
	if !_AppInputFeed! gtr 0 ( set "_AppInput_RangeFROM=!_AppInputFeed!" & set "_AppInput_RangeTO=!_AppInputFeed!" )
)
if defined _AppInput_RangeFROM if defined _AppInput_RangeTO (
	for /l %%a in (!_AppInput_RangeFROM! 1 !_AppInput_RangeTO!) do (
		set "_AppMan_LiveSELECT=!_AMIndex%%a!"
		echo !_AppMan_LiveSELECT! | findstr "amsc-s">nul && ( set "_AppMan_LiveSELECT_Kind=System" &set "_AppMan_LiveWORKDIR=!_AppManPath_SysROOT!" )
		echo !_AppMan_LiveSELECT! | findstr "amsc-w">nul && ( set "_AppMan_LiveSELECT_Kind=Windows" &set "_AppMan_LiveWORKDIR=!_AppManPath_WinROOT!" )
		set "_AppMan_LiveSELECT=!_AppMan_LiveSELECT:_amsc-s=!"
		set "_AppMan_LiveSELECT=!_AppMan_LiveSELECT:_amsc-w=!"
		echo.
		for /f "usebackq tokens=* delims=" %%L in (`dir /a:d /b "!_AppMan_LiveWORKDIR!" ^| findstr /i ".*!_AppMan_LiveSELECT!_.*"`) do (
			if not defined !_LIVEPartialPath! set "_LIVEPartialPath=%%L"
			if defined !_LIVEPartialPath! set "_LIVEPartialPath=!_LIVEPartialPath!"
			if defined _LIVEPartialPath ( set "_AppMan_LiveSELECT_State=Active" &set "_AMLCCode=0E" )
			echo !_LIVEPartialPath! | findstr /i ".*!_BakString!">nul && (
				set "_LIVEStateQueryPath=!_LIVEPartialPath:.BlackbirdBackup=!"
				if exist "!_AppMan_LiveWORKDIR!\!_LIVEStateQueryPath!\" ( set "_AppMan_LiveSELECT_State=Active" &set "_AMLCCode=0E" )
				if not exist "!_AppMan_LiveWORKDIR!\!_LIVEStateQueryPath!\" ( set "_AppMan_LiveSELECT_State=Disabled" &set "_AMLCCode=02" )
		))
		call :GUI 03 "  !_AppMan_LiveSELECT!  "
		<nul set /p ="-  !_AppMan_LiveSELECT_Kind! application, Current state: "
		call :GUI !_AMLCCode! "!_AppMan_LiveSELECT_State!" /n
		if "!_AppMan_LiveSELECT_State!" == "Active" set _AppMan_LiveSELECT_IsActive=true
		if "!_AppMan_LiveSELECT_State!" == "Disabled" set _AppMan_LiveSELECT_IsDisabled=true
		if defined _AppMan_LiveSELECT_IsDisabled (
			call :GUI 0f "  - Restoring !_AppMan_LiveSELECT! . . . "
			dir /a:d /b "!_AppManPath_ALPROOT!" | findstr /i ".*!_AppMan_LiveSELECT!.*">nul && (
				for /f "usebackq tokens=* delims=" %%Z in (`dir /a:d /b "!_AppManPath_ALPROOT!" ^| findstr /i ".*!_AppMan_LiveSELECT!_.*"`) do (
					if not defined !_LIVERecoveryALP_Partial! set "_LIVERecoveryALP_Partial=%%Z"
					if defined !_LIVERecoveryALP_Partial! set "_LIVERecoveryALP_Partial=!_LIVERecoveryALP_Partial!"
					echo !_LIVERecoveryALP_Partial! | findstr /i ".*!_BakString!">nul && (
						set "_LIVERecoveryALP_PartialSansBak=!_LIVERecoveryALP_Partial:.BlackbirdBackup=!"
						set "_LIVERecoveryALP_FullPath=!_AppManPath_ALPROOT!\!_LIVERecoveryALP_Partial!"
						if exist "!_LIVERecoveryALP_FullPath!\" (
							icacls "!_LIVERecoveryALP_FullPath!" /grant system:F /T /C /Q >nul 2>&1
							icacls "!_LIVERecoveryALP_FullPath!" /grant TrustedInstaller:F /T /C /Q >nul 2>&1
							icacls "!_LIVERecoveryALP_FullPath!" /grant "APPLICATION PACKAGE AUTHORITY":F /T /C /Q >nul 2>&1
							icacls "!_LIVERecoveryALP_FullPath!" /grant "ALL APPLICATION PACKAGES":F /T /C /Q >nul 2>&1
							icacls "!_LIVERecoveryALP_FullPath!" /grant "ALL RESTRICTED APPLICATION PACKAGES":F /T /C /Q >nul 2>&1
							ren "!_LIVERecoveryALP_FullPath!" !_LIVERecoveryALP_PartialSansBak! >nul 2>&1
			))))
			for /f "usebackq tokens=* delims=" %%Y in (`dir /a:d /b "!_AppMan_LiveWORKDIR!" ^| findstr /i ".*!_AppMan_LiveSELECT!_.*"`) do (
				set _LIVEPartialPath=
				if not defined !_LIVEPartialPath! set "_LIVEPartialPath=%%Y"
				if defined !_LIVEPartialPath! set "_LIVEPartialPath=!_LIVEPartialPath!"
				echo !_LIVEPartialPath! | findstr /i ".*!_BakString!">nul && (
					set "_LIVERecoveryPath=!_LIVEPartialPath:.BlackbirdBackup=!"
					icacls "!_AppMan_LiveWORKDIR!\!_LIVEPartialPath!" /grant system:F /T /C /Q >nul 2>&1
					icacls "!_AppMan_LiveWORKDIR!\!_LIVEPartialPath!" /grant TrustedInstaller:F /T /C /Q >nul 2>&1
					icacls "!_AppMan_LiveWORKDIR!\!_LIVEPartialPath!" /grant "APPLICATION PACKAGE AUTHORITY":F /T /C /Q >nul 2>&1
					icacls "!_AppMan_LiveWORKDIR!\!_LIVEPartialPath!" /grant "ALL APPLICATION PACKAGES":F /T /C /Q >nul 2>&1
					icacls "!_AppMan_LiveWORKDIR!\!_LIVEPartialPath!" /grant "ALL RESTRICTED APPLICATION PACKAGES":F /T /C /Q >nul 2>&1
					if "!_AppMan_LiveSELECT!" == "CortanaListenUIApp" ren "!systemroot!\System32\backgroundTaskHost.exe.!_Bakstring!" backgroundTaskHost.exe >nul 2>&1
					ren "!_AppMan_LiveWORKDIR!\!_LIVEPartialPath!" !_LIVERecoveryPath! >nul 2>&1
					if exist "!_AppMan_LiveWORKDIR!\!_LIVERecoveryPath!" icacls "!_AppMan_LiveWORKDIR!\!_LIVERecoveryPath!" /T /C /Q /reset >nul 2>&1
					if exist "!_AppMan_LiveWORKDIR!\!_LIVERecoveryPath!.!_BakString!\" set _AppMan_LiveRECOVERY_FAIL=true
			))
			<nul set /p ="["
			if defined _AppMan_LiveRECOVERY_FAIL call :GUI !_BC_B!!_BC_D! " Failed to restore "
			if not defined _AppMan_LiveRECOVERY_FAIL call :GUI !_BC_A!!_BC_C! " Successfully restored "
			<nul set /p ="]" &echo. &echo.
		)
		if defined _AppMan_LiveSELECT_IsActive (
			call :GUI 0f "  - Disabling !_AppMan_LiveSELECT! . . . "
			dir /a:d /b "!_AppManPath_ALPROOT!" | findstr /i ".*!_AppMan_LiveSELECT!.*">nul && (
				for /f "usebackq tokens=* delims=" %%Z in (`dir /a:d /b "!_AppManPath_ALPROOT!" ^| findstr /i ".*!_AppMan_LiveSELECT!_.*" ^| findstr /iv ".*BlackbirdBackup"`) do (
					set "_LIVEKillALP_Partial="
					set "_LIVEKillALP_Partial=%%Z"
					if defined _LIVEKillALP_Partial (
						call :GetDeepOwnership "!_AppManPath_ALPROOT!\!_LIVEKillALP_Partial!" -MAKE_BACKUP
						if not exist "!_AppManPath_ALPROOT!\!_LIVEKillALP_Partial!.!_BakString!\" set _AppMan_LiveDISABLE_FAIL=true
			)))
			for /f "usebackq tokens=* delims=" %%Y in (`dir /a:d /b "!_AppMan_LiveWORKDIR!" ^| findstr /i ".*!_AppMan_LiveSELECT!_.*" ^| findstr /iv ".*BlackbirdBackup"`) do (
				set "_LIVEPartialPath="
				set "_LIVEPartialPath=%%Y"
				if defined _LIVEPartialPath (
					call :GetDeepOwnership "!_AppMan_LiveWORKDIR!\!_LIVEPartialPath!" -MAKE_BACKUP
					if "!_AppMan_LiveSELECT!" == "CortanaListenUIApp" (
						takeown /a /f "!systemroot!\System32\backgroundTaskHost.exe" >nul 2>&1
						icacls "!systemroot!\System32\backgroundTaskHost.exe" /grant "!username!:F" /T /C /Q >nul 2>&1
						ren "!systemroot!\System32\backgroundTaskHost.exe" backgroundTaskHost.exe.!_BakString! >nul 2>&1
					)
					if not exist "!_AppMan_LiveWORKDIR!\!_LIVEPartialPath!.!_BakString!\" set _AppMan_LiveDISABLE_FAIL=true
			))
			<nul set /p ="["
			if defined _AppMan_LiveDISABLE_FAIL ( call :GUI !_BC_B!!_BC_D! " Failed to disable " ) else ( call :GUI !_BC_A!!_BC_C! " Successfully disabled " )
			<nul set /p ="]" &echo. &echo.
)))
goto AppmanShell
:AppMan_ERROR_INPUT
call :GUI 0f "  - Invalid input." /n & goto AppmanShell
:AppMan_ERROR_RANGE
call :GUI 0f "  - Invalid range." /n & goto AppmanShell
:AppMan_ERROR_NOAPP
call :GUI 0f "  - !_AppSELECT! not found." /n & goto AppmanShell
:AppMan_ERROR_OS
call :GUI 0f "  - Invalid OS. "&<nul set /p ="App Manager only runs on Windows 10 systems." &echo. &goto :eof

rem Blackbird FullScan ("WhiteParakeet")
:Blackbird_Scan
set "_ScanMode_ResizerDefaultSpace=" &set "_VerboseEdition="
set "_ScanMode_ResizerDefault=28" &set "_ScanMode_SoftOutputLimit=27" &set "_ScanMode_SecondarySoftOutputLimit=25"
set "_ScanMode_HardOutputLimit=40" &set "_ScanMode_BarConfig=-scan_mode"
if !_BirdSessionColumns! geq 120 (
	set "_ScanMode_ResizerDefault=50" &set "_ScanMode_ResizerCompact=40" &set "_ScanMode_ExtraRegSpace= "
	set "_ScanMode_SoftOutputLimit=50" &set "_ScanMode_HardOutputLimit=60"
	set "_ScanMode_BarConfig=-scan_mode_widedisp" &set "_ScanMode_SecondarySoftOutputLimit="
)
if defined _BirdRuntimeNoDeepSwitch cls
if defined _ScanMode_ResizerDefault (set "_ScanMode_SessionFixedSpaceNum=!_ScanMode_ResizerDefault!") else (set "_ScanMode_SessionFixedSpaceNum=!_ScanMode_HardOutputLimit!")
echo.
call :GUI 0f "  B l a c k b i r d  "&call :GUI 06 "V6"
<nul set /p =".!BS!!__SIZE_Debug!        "&call :GUI 0f "Windows privacy, security and performance" /n
<nul set /p =".!BS!!__SIZE_Debug!                                                        "&call :GUI 06 "Version !blackbird_ver!" /n
if not defined _OS-UNKNOWN (
	wmic os get Caption /value | findstr "Home" >nul && ( set "_VerboseEdition=Home " )
	wmic os get Caption /value | findstr "Pro" >nul && ( set "_VerboseEdition=Pro " )
	wmic os get Caption /value | findstr "Ultimate" >nul && ( set "_VerboseEdition=Ultimate " )
	wmic os get Caption /value | findstr "Enterprise" >nul && ( set "_VerboseEdition=Enterprise " )
	wmic os get Caption /value | findstr "Education" >nul && ( set "_VerboseEdition=Education " )
)
if /i [!username!]==[!_blackname!] (set "_ScanMode_UserGroupState=(Admin)") else (set "_ScanMode_UserGroupState=(Non-admin)")
call :DrawBird 1 -LOOP 2
call :DrawBird 3 _ScanMode_BootLogoFill
<nul set /p =".!BS!!_ScanMode_BootLogoFill! ["&call :GUI !_BC_E!!_BC_J! " Full system scan "
<nul set /p ="]"&echo.
call :DrawBird 4 _ScanMode_BootLogoFill
if not defined _OS-UNKNOWN (
	<nul set /p =".!BS!!_ScanMode_BootLogoFill!"&echo.
	call :DrawBird 5 _ScanMode_BootLogoFill
	<nul set /p =".!BS!!_ScanMode_BootLogoFill! "&call :GUI 0f "OS: "
	<nul set /p ="!_VerboseOS! !_VerboseEdition!!osbit!bit"&echo.
	call :DrawBird 6 _ScanMode_BootLogoFill
	<nul set /p =".!BS!!_ScanMode_BootLogoFill! "&call :GUI 0f "User !_ScanMode_UserGroupState!: "
	<nul set /p ="!_blackname!"&echo.
	call :DrawBird 7 _ScanMode_BootLogoFill
	<nul set /p =".!BS!!_ScanMode_BootLogoFill! "&call :GUI 0f "SID: "
	<nul set /p ="!UserSID!"&echo.
	call :DrawBird 8 _ScanMode_BootLogoFill
	<nul set /p =".!BS!!_ScanMode_BootLogoFill! "&call :GUI 0f "Blackbird version: "
	<nul set /p ="!blackbird_ver!, V6 engine"&echo.
	call :DrawBird 9 -LOOP 10
)
if defined _OS-UNKNOWN (
	<nul set /p =".!BS!!_ScanMode_BootLogoFill!  ____________________________________________"&echo.
	call :DrawBird 5 _ScanMode_BootLogoFill
	<nul set /p =".!BS!!_ScanMode_BootLogoFill! |"&call :GUI !_BC_B!!_BC_D! " WARNING "&call :GUI 0f " Unknown Windows version detected"
	<nul set /p ="^! |"&echo.
	call :DrawBird 6 _ScanMode_BootLogoFill
	<nul set /p =".!BS!!_ScanMode_BootLogoFill! |"&call :GUI 0f "          Results may not be accurate.      "
	<nul set /p ="|"&echo.
	call :DrawBird 7 _ScanMode_BootLogoFill
	<nul set /p =".!BS!!_ScanMode_BootLogoFill! |____________________________________________^|"&echo.
	call :DrawBird 8 -LOOP 10
)
echo.
call :initProgressBar "|" " " !_ScanMode_BarConfig!
call :drawProgressBar 0 -scan_mode
for /l %%f in (0 1 8) do ( call :drawProgressBar %%f -scan_mode )
set "_Scan_IAI_Hosts=" &set "_Scan_IAI_KBUpdates=" &set "_Scan_IAI_Superfish=" &set "_Scan_IAI_DiagDir="
set "_Scan_IAI_WSUS=" &set "_Scan_IAI_WUProxy=" &set "_Scan_IAI_WUStatus=" &set "_Scan_IAI_WUNonAdmin=" &set "_Scan_IAI_GameUx="
set "_Scan_IAI_Cert_eDellRoot=" &set "_Scan_IAI_Cert_eDellRoot_Root=" &set "_Scan_IAI_Cert_eDellRoot_CA=" &set "_Scan_IAI_Cert_eDellRoot_SPC="
set "_Scan_DIAG_DirPerm=.*SYSTEM\:(OI)(CI)(IO)(N)"
if exist "!ALLUSERSPROFILE!\Microsoft\Diagnosis\" (
	icacls "!ALLUSERSPROFILE!\Microsoft\Diagnosis" | findstr /irc:"!_Scan_DIAG_DirPerm!">nul || set _Scan_IAI_DiagDir=true
)
if exist "!systemroot!\SysWOW64\gameux.dll" set _Scan_IAI_GameUx=true
if exist "!systemroot!\SysWOW64\GameUXLegacyGDFs.dll" set _Scan_IAI_GameUx=true
if exist "!systemroot!\System32\gameux.dll" set _Scan_IAI_GameUx=true
if exist "!systemroot!\System32\GameUXLegacyGDFs.dll" set _Scan_IAI_GameUx=true
if exist "!systemroot!\SysWOW64\VisualDiscovery.ini" set _Scan_IAI_Superfish=true
if exist "!systemroot!\SysWOW64\VisualDiscoveryOff.ini" set _Scan_IAI_Superfish=true
if exist "!systemroot!\System32\VisualDiscoveryOff.ini" set _Scan_IAI_Superfish=true
if exist "!systemroot!\System32\VDWFP.sys" set _Scan_IAI_Superfish=true
if exist "!systemroot!\System32\VDWFP64.sys" set _Scan_IAI_Superfish=true
if exist "!systemroot!\SysWOW64\DWFP.sys" set _Scan_IAI_Superfish=true
if exist "!systemroot!\SysWOW64\DWFP64.sys" set _Scan_IAI_Superfish=true
if exist "!temp!\VisualDiscoveryr.log" set _Scan_IAI_Superfish=true
certutil -store root | findstr /i "superfish">nul && set _Scan_IAI_Superfish=true
certutil -store ca | findstr /i "superfish">nul && set _Scan_IAI_Superfish=true
certutil -store spc | findstr /i "superfish">nul && set _Scan_IAI_Superfish=true
certutil -store root | findstr /i "edellroot">nul && ( set "_Scan_IAI_Cert_eDellRoot=true" &set "_Scan_IAI_Cert_eDellRoot_Root=true" )
certutil -store ca | findstr /i "edellroot">nul && ( set "_Scan_IAI_Cert_eDellRoot=true" &set "_Scan_IAI_Cert_eDellRoot_CA=true" )
certutil -store spc | findstr /i "edellroot">nul && ( set "_Scan_IAI_Cert_eDellRoot=true" &set "_Scan_IAI_Cert_eDellRoot_SPC=true" )
sc qc VisualDiscovery | findstr /i "start_type.*4 start_type.*3 start_type.*2 start_type.*1">nul && set _Scan_IAI_Superfish=true
sc qc VDWFP | findstr /i "start_type.*4 start_type.*3 start_type.*2 start_type.*1">nul && set _Scan_IAI_Superfish=true
reg query HKLM\Software | findstr /ixc:"HKEY_LOCAL_MACHINE\Software\VisualDiscovery" >nul && set _Scan_IAI_Superfish=true
if defined os64bit (
	reg query HKLM\Software\Wow6432Node | findstr /ixc:"HKEY_LOCAL_MACHINE\Software\Wow6432Node\VisualDiscovery" >nul && set _Scan_IAI_Superfish=true
)
call :drawProgressBar 9 -scan_mode
for /l %%f in (9 1 16) do ( call :drawProgressBar %%f -scan_mode )
if exist "!BlackTemp!\blackbird.tempsch_raw.tmp" del /F /Q /S "!BlackTemp!\blackbird.tempsch_raw.tmp" >nul 2>&1
call :drawProgressBar 17 -scan_mode
for /l %%f in (17 1 19) do ( call :drawProgressBar %%f -scan_mode )
if not exist "!BlackTemp!\blackbird.tempsch_raw.tmp" schtasks /query /fo list>>"!BlackTemp!\blackbird.tempsch_raw.tmp"
if not exist "!BlackTemp!\blackbird.tempsch_raw.tmp" ( set "ERROR_NOTEMP_VALUE=!BlackTemp!\blackbird.tempsch_raw.tmp" &goto ERROR_NOTEMP )
call :drawProgressBar 20 -scan_mode
for /l %%f in (20 1 26) do ( call :drawProgressBar %%f -scan_mode )
call :drawProgressBar 27 -scan_mode
for /l %%f in (27 1 35) do ( call :drawProgressBar %%f -scan_mode )
set "__Scan_ServicesPool=!_Bird_BigServicePool!"
if defined _flag-w10 (
	set _ScanSubjectDSN=
	for %%A in (!_Bird_BigServicePool!) do (
		set "_ScanSubjectDSN=%%A" &set "_GDNFullName="
		sc qc !_ScanSubjectDSN! | findstr ".*SERVICE_NAME.*">nul && (
			echo !_ScanSubjectDSN! | findstr /i "!_Bird_DynamicServicePool!">nul && (
				call :GetDSN "!_ScanSubjectDSN!" _GDNFullName
				if defined _GDNFullName ( set "__Scan_ServicesPool=!__Scan_ServicesPool! !_GDNFullName!" )
))))
call :drawProgressBar 36 -scan_mode
for /l %%f in (36 1 41) do ( call :drawProgressBar %%f -scan_mode )
reg query HKLM\SOFTWARE\Policies\Microsoft\Windows | findstr /ixc:"HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate">nul && (
	reg query HKLM\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate | findstr /i "WUServer WUStatusServer ElevateNonAdmins">nul && (
		reg query HKLM\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate | findstr /i "WUServer">nul && (
			For /F "usebackq tokens=3" %%W In (`reg query HKLM\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate /v WUServer ^| find /i "WUServer"`) Do ( set "_Scan_WUProxy_ALERT=%%W" &set "_Scan_IAI_WUProxy=true" )
		)
		reg query HKLM\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate | findstr /i "WUStatusServer">nul && (
			For /F "usebackq tokens=3" %%W In (`reg query HKLM\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate /v WUStatusServer ^| find /i "WUStatusServer"`) Do ( set "_Scan_WUStatus_ALERT=%%W" &set "_Scan_IAI_WUStatus=true" )
		)
		reg query HKLM\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate | findstr /i "ElevateNonAdmins">nul && (
			reg query HKLM\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate /v ElevateNonAdmins | findstr /i "0x1">nul && set _Scan_IAI_WUNonAdmin=true
)))
call :drawProgressBar 42 -scan_mode
for /l %%f in (42 1 53) do ( call :drawProgressBar %%f -scan_mode )
if not defined _flag-w10 (
	REG QUERY "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Component Based Servicing\Packages" | findstr "!_Bird_BigKBPool!" >nul && ( set "_Scan_IAI_KBUpdates=true" )
)
call :drawProgressBar 54 -scan_mode
for /l %%f in (54 1 58) do ( call :drawProgressBar %%f -scan_mode )
set "_ScanMode_PolicyExists_Defender=" &set "_ScanMode_PolicyExists_MRT=" &set "_ScanMode_MSROOTExists_RemovalTools="
reg query HKEY_LOCAL_MACHINE\Software\Policies\Microsoft | findstr /ixc:"HKEY_LOCAL_MACHINE\Software\Policies\Microsoft\Windows Defender" >nul && set _ScanMode_PolicyExists_Defender=true
if defined _ScanMode_PolicyExists_Defender (reg query "HKEY_LOCAL_MACHINE\Software\Policies\Microsoft\Windows Defender" | findstr /ixc:"HKEY_LOCAL_MACHINE\Software\Policies\Microsoft\Windows Defender\SmartScreen" >nul && set _ScanMode_PolicyExists_DefenderSmartScreen=true)
reg query HKEY_LOCAL_MACHINE\Software\Policies\Microsoft | findstr /ixc:"HKEY_LOCAL_MACHINE\Software\Policies\Microsoft\MicrosoftEdge" >nul && set _ScanMode_PolicyExists_Edge=true
reg query HKEY_LOCAL_MACHINE\Software\Policies\Microsoft | findstr /ixc:"HKEY_LOCAL_MACHINE\Software\Policies\Microsoft\MRT" >nul && set _ScanMode_PolicyExists_MRT=true
reg query HKEY_LOCAL_MACHINE\Software\Microsoft | findstr /ixc:"HKEY_LOCAL_MACHINE\Software\Microsoft\RemovalTools" >nul && set _ScanMode_MSROOTExists_RemovalTools=true
call :drawProgressBar 59 -scan_mode
for /l %%f in (59 1 62) do ( call :drawProgressBar %%f -scan_mode )
if defined _flag-w10red5 ( reg query "HKCU\Software\Microsoft\Input\Settings" | findstr /i "InsightsEnabled" >nul && set "_ScanMode_InputHKCU_InsightsExists=true" )
call :drawProgressBar 63 -scan_mode
for /l %%f in (63 1 67) do ( call :drawProgressBar %%f -scan_mode )
reg query "HKEY_LOCAL_MACHINE\Software\Microsoft\Windows Defender\Spynet" | findstr /i "SpyNetReportingLocation" >nul && set _ScanMode_DefenderHKLM_SpyLocationExists=true
reg query "HKEY_LOCAL_MACHINE\Software\Microsoft\Windows Defender\Spynet" | findstr /i "SubmitSamplesConsent" >nul && set _ScanMode_DefenderHKLM_SubmitSamplesExists=true
call :drawProgressBar 68 -scan_mode
for /l %%f in (68 1 71) do ( call :drawProgressBar %%f -scan_mode )
set "_ScanMode_TaskML_DISABLED=Disabled"
if defined _BirdLangString if defined _Bird_ExtPS call :GetMLSET _ScanMode_TaskML_DISABLED -SCHTASKS -DISABLED
call :drawProgressBar 72 -scan_mode
for /l %%f in (72 1 84) do ( call :drawProgressBar %%f -scan_mode )
netsh interface ipv4 show route | findstr /rc:".* 1 .*[0-9]*\.[0-9]*\.[0-9]*\.[0-9]*/32 .* 127.0.0.0$" >nul || (
	netsh interface ipv6 show route | findstr /rc:".* 1 .*\:.*\:.*\:.*/128 .* \:\:1$" >nul || (set "_Scan_IAI_Hosts=true")
)
call :drawProgressBar 85 -scan_mode
for /l %%f in (85 1 100) do ( call :drawProgressBar %%f -scan_mode )
echo.&echo.
if not defined _Scan_IAI_Hosts ( <nul set /p =".!BS!  "&call :GUI !_BC_A!!_BC_C! " - "&call :GUI 0f " Hosts are blocked." /n ) else ( <nul set /p =".!BS!  "&call :GUI !_BC_B!!_BC_D! " > "&call :GUI 0f " Hosts are NOT blocked" & <nul set /p ="^!"&echo. )
if exist "!ALLUSERSPROFILE!\Microsoft\Diagnosis\" if not defined _Scan_IAI_DiagDir ( <nul set /p =".!BS!  "&call :GUI !_BC_A!!_BC_C! " - "&call :GUI 0f " Diagnosis folder is secure." /n )
if exist "!ALLUSERSPROFILE!\Microsoft\Diagnosis\" if defined _Scan_IAI_DiagDir ( <nul set /p =".!BS!  "&call :GUI !_BC_B!!_BC_D! " > "&call :GUI 0f " Diagnosis folder is NOT secure" & <nul set /p ="^!"&echo. )
if not defined _Scan_IAI_GameUx ( <nul set /p =".!BS!  "&call :GUI !_BC_A!!_BC_C! " - "&call :GUI 0f " Game Explorer is not active." /n )
if defined _Scan_IAI_GameUx ( <nul set /p =".!BS!  "&call :GUI !_BC_B!!_BC_D! " > "&call :GUI 0f " Game Explorer is active" & <nul set /p ="^!"&echo. )
if not defined _Scan_IAI_Superfish ( <nul set /p =".!BS!  "&call :GUI !_BC_A!!_BC_C! " - "&call :GUI 0f " No SUPERFISH vulnerabilities found." /n ) else ( <nul set /p =".!BS!  "&call :GUI !_BC_B!!_BC_D! " > "&call :GUI 0f " SUPERFISH vulnerabilities detected" & <nul set /p ="^!"&echo. )
if defined _Scan_IAI_Cert_eDellRoot if defined _Scan_IAI_Cert_eDellRoot_Root ( <nul set /p =".!BS!  "&call :GUI !_BC_B!!_BC_D! " > "&call :GUI 0f " eDellRoot ROOT certificate detected" & <nul set /p ="^!"&echo. )
if defined _Scan_IAI_Cert_eDellRoot if defined _Scan_IAI_Cert_eDellRoot_CA ( <nul set /p =".!BS!  "&call :GUI !_BC_B!!_BC_D! " > "&call :GUI 0f " eDellRoot CA certificate detected" & <nul set /p ="^!"&echo. )
if defined _Scan_IAI_Cert_eDellRoot if defined _Scan_IAI_Cert_eDellRoot_SPC ( <nul set /p =".!BS!  "&call :GUI !_BC_B!!_BC_D! " > "&call :GUI 0f " eDellRoot SPC certificate detected" & <nul set /p ="^!"&echo. )
echo.
if not defined _flag-w10 (
	set "_ScanMode_KBSubject=" &set "__Scan_KBUpdateCounter=0"
	<nul set /p =".!BS! ^|"&call :GUI !_BC_G!!_BC_I! " Windows Updates "
	<nul set /p ="|"&echo.
	if not defined _Scan_IAI_WUNonAdmin ( <nul set /p =".!BS!  "&call :GUI !_BC_A!!_BC_C! " - "&call :GUI 0f " Non-admin user elevation is disabled." /n ) else ( <nul set /p =".!BS!  "&call :GUI !_BC_B!!_BC_D! " > "&call :GUI 0f " Non-admin user elevation is enabled" & <nul set /p ="^!"&echo. )
	if not defined _Scan_IAI_WUProxy ( <nul set /p =".!BS!  "&call :GUI !_BC_A!!_BC_C! " - "&call :GUI 0f " No unauthorized proxy servers found." /n ) else ( <nul set /p =".!BS!  "&call :GUI !_BC_B!!_BC_D! " > "&call :GUI 0f " Unknown proxy detected: " & <nul set /p ="!_Scan_WUProxy_ALERT!"&echo. )
	if not defined _Scan_IAI_WUStatus ( <nul set /p =".!BS!  "&call :GUI !_BC_A!!_BC_C! " - "&call :GUI 0f " No unauthorized status servers found." /n ) else ( <nul set /p =".!BS!  "&call :GUI !_BC_B!!_BC_D! " > "&call :GUI 0f " Unknown status server detected: " & <nul set /p ="!_Scan_WUStatus_ALERT!"&echo. )
	if not defined _Scan_IAI_KBUpdates ( <nul set /p =".!BS!  "&call :GUI !_BC_A!!_BC_C! " - "&call :GUI 0f " KB updates are secure." /n )
	if defined _Scan_IAI_KBUpdates (
		echo.
		for %%A in (!_Bird_BigKBPool!) do (
			set "_ScanMode_KBSubject=%%A" &set "_KBModified_LengthValue="
			REG QUERY "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Component Based Servicing\Packages" | findstr "!_ScanMode_KBSubject!" >nul && (
				call :StringCalc _ScanMode_KBSubject _KBUpdateStringLength
				if !_KBUpdateStringLength! equ 8 set /a "_KBModified_LengthValue=!_KBUpdateStringLength!+4"
				if !_KBUpdateStringLength! equ 9 set /a "_KBModified_LengthValue=!_KBUpdateStringLength!+5"
				set /a __Scan_KBUpdateCounter=!__Scan_KBUpdateCounter!+1
				<nul set /p =".!BS! ["&call :GUI !_BC_B!!_BC_D! " Installed "
				<nul set /p ="] !_ScanMode_KBSubject!"
				if !__Scan_KBUpdateCounter! equ 1 (
					set /a "_ScanMode_ResizerNum=!_ScanMode_SessionFixedSpaceNum!-!_KBModified_LengthValue!"
					for /l %%r in (1 1 !_ScanMode_ResizerNum!) do ( set "_ScanMode_SessionResizedSpace=!_ScanMode_SessionResizedSpace! " )
					<nul set /p =".!BS!!_ScanMode_SessionResizedSpace!"
				)
				if !__Scan_KBUpdateCounter! equ 2 ( set "__Scan_KBUpdateCounter=0" &echo. )
			)
			set "_ScanMode_SessionResizedSpace=" &set "_ScanMode_ResizerNum="
		)
		if !__Scan_KBUpdateCounter! equ 1 echo.
))
echo.
set "_ScanSubjectName=" &set "__Scan_TaskCounter=0" &set "_ScanMode_TaskIsActive=" &set "_ScanMode_SoftLimitBreach="
<nul set /p =".!BS! ^|"&call :GUI !_BC_G!!_BC_I! " Scheduled Tasks "
<nul set /p ="|"&echo.
if not exist "!BlackTemp!\blackbird.tempsch_raw.tmp" (schtasks /query /fo list>>"!BlackTemp!\blackbird.tempsch_raw.tmp")
if not exist "!BlackTemp!\blackbird.tempsch_raw.tmp" ( set "ERROR_NOTEMP_VALUE=!BlackTemp!\blackbird.tempsch_raw.tmp" &goto :ERROR_NOTEMP )
for %%A in (!_Bird_BigTaskPool!) do (
	set "__BTM_LiveQueryPath=%%A"
	set "__BTM_LiveQueryPath=!__BTM_LiveQueryPath:$= !"
	set "__BTM_LiveQueryPath=!__BTM_LiveQueryPath:[=(!"
	set "__BTM_LiveQueryPath=!__BTM_LiveQueryPath:]=)!"
	set "__BTM_LiveQueryPath=!__BTM_LiveQueryPath:\=\\!"
	findstr /irc:".*!__BTM_LiveQueryPath!\>" "!BlackTemp!\blackbird.tempsch_raw.tmp" >nul && (
		set "__BTM_LiveQueryPath=!__BTM_LiveQueryPath:\\=\!"
		set "__BTM_LiveQueryPathQuoted=^"!__BTM_LiveQueryPath!^""
		call :GetLastString "!__BTM_LiveQueryPath!" __GLS_Result
		set "_ScanSubjectName=!__GLS_Result:Microsoft-Windows-=!"
		set "_ScanSubjectName=!_ScanSubjectName:Microsoft =!"
		set "_ScanSubjectName=!_ScanSubjectName:-%UserSID%=!"
		set "_BlueDog_LiveQueryPath=!_BlueDog_LiveQueryPath:-%UserSID%=!"
		if "!_ScanSubjectName!" equ "!UserSID!" if /i "!__BTM_LiveQueryPath!" equ "\Agent Activation Runtime\!UserSID!" ( set "_ScanSubjectName=Agent Activation Runtime" )
		call :StringCalc _ScanSubjectName _LengthResult
		set _ScanMode_SubjectStringSizeNum=!_LengthResult!
		set /A __Scan_TaskCounter=!__Scan_TaskCounter!+1
		if !_ScanMode_SubjectStringSizeNum! gtr !_ScanMode_SoftOutputLimit! if !__Scan_TaskCounter! equ 1 ( set _ScanMode_SoftLimitBreach=true )
		if !_ScanMode_SubjectStringSizeNum! geq !_ScanMode_SoftOutputLimit! if !__Scan_TaskCounter! equ 2 ( set "_ScanSubjectName=!_ScanSubjectName:~0,23!" & set "_ScanSubjectName=!_ScanSubjectName!..." )
		schtasks /query /TN !__BTM_LiveQueryPathQuoted! | findstr /ir ".*!_ScanMode_TaskML_DISABLED!\>">nul || (
			set _ScanMode_TaskIsActive=true
			<nul set /p =".!BS! ["&call :GUI !_BC_B!!_BC_D! " Active "
			<nul set /p ="] !_ScanSubjectName!"
		)
		if not defined _ScanMode_TaskIsActive (
			call :GUI !_BC_E!!_BC_F! "  Disabled "
			<nul set /p =".!BS! !_ScanSubjectName!"
		)
		if !__Scan_TaskCounter! equ 1 if defined _ScanMode_SoftLimitBreach (set __Scan_TaskCounter=0 & echo.)
		if !__Scan_TaskCounter! equ 1 if not defined _ScanMode_SoftLimitBreach (
			set /a "_ScanMode_ResizerNum=!_ScanMode_SessionFixedSpaceNum!-!_ScanMode_SubjectStringSizeNum!"
			for /l %%r in (1 1 !_ScanMode_ResizerNum!) do ( set "_ScanMode_SessionResizedSpace=!_ScanMode_SessionResizedSpace! " )
			<nul set /p =".!BS!!_ScanMode_SessionResizedSpace!"
		)
		if !__Scan_TaskCounter! equ 2 ( set "__Scan_TaskCounter=0" &echo. )
	)
	set "_ScanMode_TaskIsActive=" &set "_ScanMode_SessionResizedSpace=" &set "_ScanMode_ResizerNum=" &set "_ScanMode_SoftLimitBreach="
)
if !__Scan_TaskCounter! equ 1 echo.
echo.
set "_ScanSubjectName=" &set "__Scan_AutologCounter=0" &set "_ScanMode_SoftLimitBreach="
<nul set /p =".!BS! ^|"&call :GUI !_BC_G!!_BC_I! " Autologgers "
<nul set /p ="|"&echo.
set "_ScanMode_CallKey=Start" &set "_AUTOLOG_TemplateExceptions=ReadyBoot EventLog- Status"
for /F "tokens=* usebackq delims=" %%a in (`reg query "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger" ^| findstr /v "!_AUTOLOG_TemplateExceptions!" ^| findstr /i "HKEY_LOCAL_MACHINE\\SYSTEM\\CurrentControlSet\\Control\\WMI\\Autologger\\.*"`) do (
	set _ScanMode_CallPath=%%a
	set "_ScanMode_CallPathQuoted=^"!_ScanMode_CallPath!^""
	set "_ScanSubjectName=!_ScanMode_CallPath:HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\WMI\Autologger\=!"
	set "_ScanSubjectName=!_ScanSubjectName: =!"
	set "_ScanSubjectName=!_ScanSubjectName:-=!"
	set "_ScanSubjectName=!_ScanSubjectName:_=!"
	set "_ScanSubjectName=!_ScanSubjectName:%_DebugStickA%=!"
	call :StringCalc _ScanSubjectName _LengthResult
	set _ScanMode_SubjectStringSizeNum=!_LengthResult!
	if !_ScanMode_SubjectStringSizeNum! gtr !_ScanMode_SoftOutputLimit! set _ScanMode_SoftLimitBreach=true
	set /A "__Scan_AutologCounter=!__Scan_AutologCounter!+1"
	set "_ALOG_STATE=Not_set"
	reg query !_ScanMode_CallPathQuoted! | findstr /i ".*start.*0x1" >nul && set "_ALOG_STATE=Active"
	reg query !_ScanMode_CallPathQuoted! | findstr /i ".*start.*0x0" >nul && set "_ALOG_STATE=Disabled"
	if "!_ALOG_STATE!"=="Not_set" (
		call :GUI 0e "   Not set "
		<nul set /p =".!BS! !_ScanSubjectName!"
	)
	if "!_ALOG_STATE!"=="Disabled" (
		call :GUI !_BC_E!!_BC_F! "  Disabled "
		<nul set /p =".!BS! !_ScanSubjectName!"
	)
	if "!_ALOG_STATE!"=="Active" (
		<nul set /p =".!BS! ["&call :GUI !_BC_B!!_BC_D! " Active "
		<nul set /p ="] !_ScanSubjectName!"
	)
	if !__Scan_AutologCounter! equ 1 if defined _ScanMode_SoftLimitBreach ( set "__Scan_AutologCounter=0" &echo. )
	if !__Scan_AutologCounter! equ 1 if not defined _ScanMode_SoftLimitBreach (
		set /a "_ScanMode_ResizerNum=!_ScanMode_SessionFixedSpaceNum!-!_ScanMode_SubjectStringSizeNum!"
		for /l %%r in (1 1 !_ScanMode_ResizerNum!) do ( set "_ScanMode_SessionResizedSpace=!_ScanMode_SessionResizedSpace! " )
		<nul set /p =".!BS!!_ScanMode_SessionResizedSpace!"
	)
	if !__Scan_AutologCounter! equ 2 ( set "__Scan_AutologCounter=0" &echo. )
	set "_ScanMode_SessionResizedSpace=" &set "_ScanMode_ResizerNum=" &set "_ScanMode_SoftLimitBreach="
)
if !__Scan_AutologCounter! equ 0 echo.
if !__Scan_AutologCounter! equ 1 echo.
echo.
set "_ScanSubjectName=" &set "_ScanMode_SoftLimitBreach=" &set "__Scan_ServicesCounter=0"
<nul set /p =".!BS! ^|"&call :GUI !_BC_G!!_BC_I! " Services "
<nul set /p ="|"&echo.
for %%A in (!__Scan_ServicesPool!) do (
	set "_ScanSubjectName=%%A"
	set "_ScanMode_SRVExists="
	reg query HKLM\SYSTEM\CurrentControlSet\Services | findstr /irc:".*\\services\\!_ScanSubjectName!$" >nul && ( set "_ScanMode_SRVExists=true" )
	if defined _ScanMode_SRVExists (
		set "_ScanSubjectName_TempWA=!_ScanSubjectName:.standardcollector.service=!"
		call :StringCalc _ScanSubjectName_TempWA _LengthResult
		set _ScanMode_SubjectStringSizeNum=!_LengthResult!
		if !_ScanMode_SubjectStringSizeNum! gtr !_ScanMode_SoftOutputLimit! set _ScanMode_SoftLimitBreach=true
		set /A "__Scan_ServicesCounter=!__Scan_ServicesCounter!+1"
		reg query HKLM\SYSTEM\CurrentControlSet\Services\!_ScanSubjectName! | findstr /irc:" start .*REG_DWORD .*0x4$" >nul && (
			call :GUI !_BC_E!!_BC_F! "  Disabled  "
			<nul set /p ="!_ScanSubjectName_TempWA!"
		)
		reg query HKLM\SYSTEM\CurrentControlSet\Services\!_ScanSubjectName! | findstr /irc:" start .*REG_DWORD .*0x3$" >nul && (
			<nul set /p =".!BS! ["&call :GUI !_BC_B!!_BC_D! " Manual "
			<nul set /p ="] !_ScanSubjectName_TempWA!"
		)
		reg query HKLM\SYSTEM\CurrentControlSet\Services\!_ScanSubjectName! | findstr /irc:" start .*REG_DWORD .*0x[1-2]$" >nul && (
			<nul set /p =".!BS!  ["&call :GUI !_BC_B!!_BC_D! " Auto "
			set "_ScanMode_SRS_Debug=  "
			<nul set /p ="]!_ScanMode_SRS_Debug!!_ScanSubjectName_TempWA!"
		)
		reg query HKLM\SYSTEM\CurrentControlSet\Services\!_ScanSubjectName! | findstr /irc:" start .*REG_DWORD .*0x0$" >nul && (
			<nul set /p =".!BS!  ["&call :GUI !_BC_B!!_BC_D! " Boot "
			set "_ScanMode_SRS_Debug=  "
			<nul set /p ="]!_ScanMode_SRS_Debug!!_ScanSubjectName_TempWA!"
		)
		if !__Scan_ServicesCounter! equ 1 if defined _ScanMode_SoftLimitBreach (set __Scan_ServicesCounter=0 & echo.)
		if !__Scan_ServicesCounter! equ 1 if not defined _ScanMode_SoftLimitBreach (
			set /a "_ScanMode_ResizerNum=!_ScanMode_SessionFixedSpaceNum!-!_ScanMode_SubjectStringSizeNum!"
			for /l %%r in (1 1 !_ScanMode_ResizerNum!) do ( set "_ScanMode_SessionResizedSpace=!_ScanMode_SessionResizedSpace! " )
			<nul set /p =".!BS!!_ScanMode_SessionResizedSpace!"
	))
	if !__Scan_ServicesCounter! equ 2 ( set "__Scan_ServicesCounter=0" &echo. )
	set "_ScanSubjectName=" &set "_ScanMode_SessionResizedSpace=" &set "_ScanMode_ResizerNum="
	set "_ScanMode_SoftLimitBreach=" &set "_ScanMode_SRS_Debug="
)
if !__Scan_ServicesCounter! equ 1 echo.
echo.
set _ScanMode_Limiter=
if defined _ScanMode_SecondarySoftOutputLimit set "_ScanMode_Limiter=_SOFTLIMIT !_ScanMode_SecondarySoftOutputLimit!"
<nul set /p =".!BS! ^|"&call :GUI !_BC_G!!_BC_I! " Registry "
<nul set /p ="|"&echo.
call :GUI 0f " Application Compatibility:" /n
if defined _flag-w10 (
	call :ScanSlave "HKLM\SOFTWARE\Policies\Microsoft\Windows\AppCompat" "AITEnable" "0" !_ScanMode_Limiter!
	call :ScanSlave "HKLM\SOFTWARE\Policies\Microsoft\Windows\AppCompat" "DisableInventory" "1" !_ScanMode_Limiter!
	call :ScanSlave "HKLM\SOFTWARE\Policies\Microsoft\Windows\AppCompat" "DisableUAR" "1" !_ScanMode_Limiter!
	echo.
	call :ScanSlave "HKLM\Software\Microsoft\Windows NT\CurrentVersion\AppCompatFlags\TelemetryController" "RunsBlocked" "1"
	reg query HKLM\SOFTWARE\Policies\Microsoft | findstr /ixc:"HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\SQMClient" >nul && (
		call :ScanSlave "HKLM\SOFTWARE\Policies\Microsoft\SQMClient\Windows" "CEIPEnable" "0" !_ScanMode_Limiter!
))
if not defined _flag-w10 (
	call :ScanSlave "HKLM\Software\Microsoft\Windows NT\CurrentVersion\AppCompatFlags\AIT" "AITEnable" "0"
	call :ScanSlave "HKLM\Software\Microsoft\Windows NT\CurrentVersion\AppCompatFlags\ClientTelemetry" "TaskEnableRun" "0" !_ScanMode_Limiter!
	reg query HKLM\SOFTWARE\Policies\Microsoft | findstr /ixc:"HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\SQMClient" >nul && (
		call :ScanSlave "HKLM\Software\Policies\Microsoft\SQMClient\Windows" "CEIPEnable" "0" !_ScanMode_Limiter!
))
echo.
call :GUI 0f " Scripted Diagnostics Provider:" /n
call :ScanSlave "HKLM\Software\Microsoft\Windows\ScriptedDiagnosticsProvider\Policy" "EnableQueryRemoteServer" "0"
call :ScanSlave "HKLM\Software\Microsoft\Windows\ScheduledDiagnostics" "EnabledExecution" "0" !_ScanMode_Limiter!
echo.
if not defined _flag-w10 if defined os64bit (
	call :GUI 0f " Windows Updates:" /n
	call :ScanSlave "HKLM\Software\Microsoft\Windows\CurrentVersion\WindowsUpdate" "IncludeRecommendedUpdates" "0"
	call :ScanSlave "HKLM\Software\Policies\Microsoft\Windows\WindowsUpdate\AU" "NoAutoRebootWithLoggedOnUsers" "1" !_ScanMode_Limiter!
	echo. 
)
call :GUI 0f " Data Collection:" /n
if defined _flag-w10 (
	if not defined os64bit ( call :ScanSlave "HKLM\SOFTWARE\Policies\Microsoft\Windows\DataCollection" "AllowTelemetry" "0" )
	if defined os64bit ( call :ScanSlave "HKLM\SOFTWARE\WOW6432Node\Microsoft\Windows\CurrentVersion\Policies\DataCollection" "AllowTelemetry" "0" )
	if defined _flag-w10red4 ( call :ScanSlave "HKLM\SOFTWARE\Policies\Microsoft\Windows\AppPrivacy" "LetAppsRunInBackground" "2" )
	echo.
	call :ScanSlave "HKLM\SOFTWARE\Policies\Microsoft\Windows\System" "AllowClipboardHistory" "0"
	call :ScanSlave "HKLM\SOFTWARE\Policies\Microsoft\Windows\System" "AllowCrossDeviceClipboard" "0" !_ScanMode_Limiter!
	echo.
	call :ScanSlave "HKCU\Software\Microsoft\Windows\CurrentVersion\Privacy" "TailoredExperiencesWithDiagnosticDataEnabled" "0" !_ScanMode_Limiter!
) else (
	call :ScanSlave "HKLM\Software\Policies\Microsoft\Windows\DataCollection" "DisableEnterpriseAuthProxy" "1"
	call :ScanSlave "HKLM\Software\Policies\Microsoft\Windows\DataCollection" "TelemetryProxy" "localhost:0" !_ScanMode_Limiter!
)
echo.
call :GUI 0f " Windows Error Reporting:" /n
if defined _flag-w10red (
	call :ScanSlave "HKCU\SOFTWARE\Microsoft\Windows\Windows Error Reporting" "AutoApproveOSDumps" "0"
	call :ScanSlave "HKCU\SOFTWARE\Microsoft\Windows\Windows Error Reporting" "ConfigureArchive" "0" !_ScanMode_Limiter!
	echo.
	call :ScanSlave "HKCU\SOFTWARE\Microsoft\Windows\Windows Error Reporting" "DisableArchive" "1"
	call :ScanSlave "HKCU\SOFTWARE\Microsoft\Windows\Windows Error Reporting" "Disabled" "1"
	echo.
	call :ScanSlave "HKCU\SOFTWARE\Microsoft\Windows\Windows Error Reporting" "DontSendAdditionalData" "1"
	call :ScanSlave "HKCU\SOFTWARE\Microsoft\Windows\Windows Error Reporting" "LoggingDisabled" "1" !_ScanMode_Limiter!
	echo.
) else (
	call :ScanSlave "HKLM\Software\Microsoft\Windows\Windows Error Reporting" "Disabled" "1"
	call :ScanSlave "HKLM\Software\Microsoft\Windows\Windows Error Reporting" "MachineID" "0" !_ScanMode_Limiter!
	echo.
	call :ScanSlave "HKLM\Software\Microsoft\Windows\Windows Error Reporting\Consent" "NewUserDefaultConsent" "0"
)
call :ScanSlave "HKLM\Software\Microsoft\Windows\Windows Error Reporting\Consent" "DefaultConsent" "0" !_ScanMode_Limiter!
echo.
call :GUI 0f " Windows Defender/MRT:" /n
if defined _ScanMode_MSROOTExists_RemovalTools ( call :ScanSlave "HKLM\SOFTWARE\Microsoft\RemovalTools\MpGears" "SpyNetReportingLocation" "0" _VALUELIMIT1 ) else ( <nul set /p =".!BS!  SpyNetReportingLocation^="&call :GUI 0e "Not_set" )
echo.
if defined _ScanMode_PolicyExists_DefenderSmartScreen (
	call :ScanSlave "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender\SmartScreen" "ConfigureAppInstallControl" "Anywhere"
	call :ScanSlave "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender\SmartScreen" "ConfigureAppInstallControlEnabled" "1" !_ScanMode_Limiter!
	echo.
)
if defined _ScanMode_PolicyExists_Defender (
	call :ScanSlave "HKLM\Software\Policies\Microsoft\Windows Defender\Spynet" "SpyNetReporting" "0" !_ScanMode_Limiter!
	call :ScanSlave "HKLM\Software\Policies\Microsoft\Windows Defender\Spynet" "SubmitSamplesConsent" "2" !_ScanMode_Limiter!
) else (
	<nul set /p =".!BS!  SpyNetReporting^="&call :GUI 0e "Not_set"
	<nul set /p =".!BS!  SubmitSamplesConsent^="&call :GUI 0e "Not_set"
)
echo.
if defined _ScanMode_MSROOTExists_RemovalTools ( call :ScanSlave "HKLM\SOFTWARE\Microsoft\RemovalTools\MpGears" "HeartbeatTrackingIndex" "0" !_ScanMode_Limiter! ) else ( <nul set /p =".!BS!  HeartbeatTrackingIndex^="&call :GUI 0e "Not_set" )
if defined _ScanMode_PolicyExists_MRT ( call :ScanSlave "HKLM\Software\Policies\Microsoft\MRT" "DontReportInfectionInformation" "1" !_ScanMode_Limiter! ) else ( <nul set /p =".!BS!  DontReportInfectionInformation^="&call :GUI 0e "Not_set" )
echo.
if defined _flag-w10 (
	call :GUI 0f " Windows Edge:" /n
	if defined _ScanMode_PolicyExists_Edge (
		call :ScanSlave "HKLM\SOFTWARE\Policies\Microsoft\MicrosoftEdge\Main" "AllowPrelaunch" "0"
		call :ScanSlave "HKLM\SOFTWARE\Policies\Microsoft\MicrosoftEdge\TabPreloader" "AllowTabPreloading" "0" !_ScanMode_Limiter!
	)
	if not defined _ScanMode_PolicyExists_Edge (
		<nul set /p =".!BS!  AllowPrelaunch^="&call :GUI 0e "Not_set"
		<nul set /p =".!BS!  AllowTabPreloading^="&call :GUI 0e "Not_set"
	)
	echo.
)
if defined _flag-w10 (
	call :GUI 0f " Windows Search:" /n
	if defined _flag-w10red (
		call :ScanSlave "HKCU\Software\Microsoft\Windows\CurrentVersion\Search" "CortanaConsent" "0"
		call :ScanSlave "HKLM\SOFTWARE\Policies\Microsoft\SearchCompanion" "DisableContentFileUpdates" "1"
		rem echo.
		rem call :ScanSlave "HKCU\Software\Microsoft\Windows\CurrentVersion\Search" "CortanaCapabilities" "0" _VALUELIMIT1
		rem echo.
		rem call :ScanSlave "HKCU\Software\Microsoft\Windows\CurrentVersion\Search" "CortanaCapabilityFlags" "0" !_ScanMode_Limiter!
		echo.
		call :ScanSlave "HKCU\Software\Microsoft\Windows\CurrentVersion\Search" "CortanaInAmbientMode" "0" !_ScanMode_Limiter!
		call :ScanSlave "HKCU\Software\Microsoft\Windows\CurrentVersion\Search" "DeviceHistoryEnabled" "0" !_ScanMode_Limiter!
		echo.
		call :ScanSlave "HKCU\Software\Microsoft\Windows\CurrentVersion\Search" "HasAboveLockTips" "0"
		call :ScanSlave "HKCU\Software\Microsoft\Windows\CurrentVersion\Search" "IsAssignedAccess" "0" !_ScanMode_Limiter!
		echo.
		call :ScanSlave "HKCU\Software\Microsoft\Windows\CurrentVersion\Search" "IsMicrophoneAvailable" "0"
		call :ScanSlave "HKCU\Software\Microsoft\Windows\CurrentVersion\Search" "IsWindowsHelloActive" "0" !_ScanMode_Limiter!
		echo.
		call :ScanSlave "HKCU\Software\Microsoft\Windows\CurrentVersion\Search" "AnyAboveLockAppsActive" "0" !_ScanMode_Limiter!
		call :ScanSlave "HKCU\Software\Microsoft\Windows\CurrentVersion\Search" "BingSearchEnabled" "0" !_ScanMode_Limiter!
	)
	if not defined _flag-w10red (
		call :ScanSlave "HKCU\Software\Microsoft\Windows\CurrentVersion\Search" "CortanaEnabled" "0"
		call :ScanSlave "HKLM\Software\Policies\Microsoft\Windows\Windows Search" "AllowCortana" "0" !_ScanMode_Limiter!
		echo.
		call :ScanSlave "HKLM\Software\Policies\Microsoft\Windows\Windows Search" "DisableWebSearch" "1" !_ScanMode_Limiter!
		call :ScanSlave "HKLM\Software\Policies\Microsoft\Windows\Windows Search" "AllowSearchToUseLocation" "0"
		echo.
		call :ScanSlave "HKLM\Software\Policies\Microsoft\Windows\Windows Search" "ConnectedSearchPrivacy" "3" !_ScanMode_Limiter!
		call :ScanSlave "HKLM\Software\Policies\Microsoft\Windows\Windows Search" "ConnectedSearchSafeSearch" "3"
		echo.
		call :ScanSlave "HKLM\Software\Policies\Microsoft\Windows\Windows Search" "ConnectedSearchUseWeb" "0" !_ScanMode_Limiter!
		call :ScanSlave "HKLM\Software\Policies\Microsoft\Windows\Windows Search" "ConnectedSearchUseWebOverMeteredConnections" "0"
	)
	echo.
	if not defined _flag-w10red4 (
		call :GUI 0f " Lock Screen:" /n
		call :ScanSlave "HKCU\Software\Microsoft\Windows\CurrentVersion\Lock Screen\Creative" "LockImageFlags" "0"
		call :ScanSlave "HKCU\Software\Microsoft\Windows\CurrentVersion\Lock Screen\Creative" "CreativeId" "0" !_ScanMode_Limiter!
		echo.
		call :ScanSlave "HKCU\Software\Microsoft\Windows\CurrentVersion\Lock Screen\Creative" "PortraitAssetPath" "0"
		call :ScanSlave "HKCU\Software\Microsoft\Windows\CurrentVersion\Lock Screen\Creative" "LandscapeAssetPath" "0" !_ScanMode_Limiter!
		call :ScanSlave "HKCU\Software\Microsoft\Windows\CurrentVersion\Lock Screen\Creative" "PlacementId" "0" !_ScanMode_Limiter!
		echo.
		call :ScanSlave "HKCU\Software\Microsoft\Windows\CurrentVersion\Lock Screen\Creative" "ImpressionToken" "0"
		call :ScanSlave "HKCU\Software\Microsoft\Windows\CurrentVersion\Lock Screen\Creative" "HotspotImageFolderPath" "0" !_ScanMode_Limiter!
		call :ScanSlave "HKCU\Software\Microsoft\Windows\CurrentVersion\Lock Screen\Creative" "CreativeJson" "0" !_ScanMode_Limiter!
		echo.
	)
	call :GUI 0f " Cloud Content:" /n
	call :ScanSlave "HKCU\Software\Microsoft\Messaging" "CloudServiceSyncEnabled" "0"
	call :ScanSlave "HKU\!UserSID!\Software\Policies\Microsoft\Windows\CloudContent" "DisableWindowsConsumerFeatures" "1" !_ScanMode_Limiter!
	echo.
	call :ScanSlave "HKLM\Software\Microsoft\Windows\CurrentVersion\CloudExperienceHost" "ETWLoggingEnabled" "0"
	echo.
	call :GUI 0f " Advertising/Content Delivery:" /n
	call :ScanSlave "HKU\!UserSID!\Software\Microsoft\Windows\CurrentVersion\AdvertisingInfo" "Enabled" "0"
	call :ScanSlave "HKU\!UserSID!\Software\Microsoft\Windows\CurrentVersion\AdvertisingInfo" "Id" "null" _VALUELIMIT1
	echo.
	call :ScanSlave "HKU\!UserSID!\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" "SystemPaneSuggestionsEnabled" "0"
	set _FruitBasket=
	call :GetFruit "HKEY_USERS\!UserSID!\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" "SubscribedContent" _FruitBasket _PickFruit
	if not "!_FruitBasket!"=="NO_FRUIT" (
		for %%A in (!_FruitBasket!) do (call :ScanSlave "HKU\!UserSID!\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" "%%A" "0" & echo.)
	)
	if "!_FruitBasket!"=="NO_FRUIT" ( 
		<nul set /p =".!BS!  SubscribedContent^=["&call :GUI !_BC_A!!_BC_C! " 0 "
		<nul set /p ="]" &echo.
	)
	call :ScanSlave "HKCU\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" "RotatingLockScreenEnabled" "0"
	call :ScanSlave "HKCU\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" "RotatingLockScreenOverlayEnabled" "0" !_ScanMode_Limiter!
	echo.
	call :ScanSlave "HKU\!UserSID!\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" "SoftLandingEnabled" "0"
	call :ScanSlave "HKCU\Software\Policies\Microsoft\Windows\CurrentVersion\PushNotifications" "NoTileApplicationNotification" "1" !_ScanMode_Limiter!
	echo.
	call :GUI 0f " Input Settings:" /n
	if defined _flag-w10red5 (
		if defined _ScanMode_InputHKCU_InsightsExists ( call :ScanSlave "HKCU\Software\Microsoft\Input\Settings" "InsightsEnabled" "0" )
		if not defined _ScanMode_InputHKCU_InsightsExists ( call :ScanSlave "HKLM\Software\Microsoft\Input\Settings" "InsightsEnabled" "0" )
		echo.
	)
	call :ScanSlave "HKLM\Software\Microsoft\Input\Settings" "HarvestContacts" "0"
	call :ScanSlave "HKLM\Software\Microsoft\Input\Settings" "LMDataLoggerEnabled" "0"
	echo.
)
call :GUI 0f " Remote Assistance:" /n
call :ScanSlave "HKLM\SYSTEM\CurrentControlSet\Control\Remote Assistance" "fAllowFullControl" "0"
call :ScanSlave "HKLM\SYSTEM\CurrentControlSet\Control\Remote Assistance" "fAllowToGetHelp" "0" !_ScanMode_Limiter!
echo.
call :GUI 0f " ASLR:" /n
rem call :ScanSlave "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\kernel" "MitigationOptions" "00010100000000000000000000000000" _VALUELIMIT2 10
call :ScanSlave "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\kernel" "MitigationOptions" "00010100000000000000000000000000"
if not !_BirdSessionColumns! geq 120 echo.
call :ScanSlave "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" "MoveImages" "4294967295"
echo.
set "_ScanSubjectName=" &set "_ScanMode_DiagSettingsRequestsCounter=0"
call :GUI 0f " Diagnostic Tracking - Settings Requests:" /n
for /F "tokens=* usebackq delims=" %%a in (`reg query "HKLM\Software\Microsoft\Windows\CurrentVersion\Diagnostics\DiagTrack\SettingsRequests" ^| findstr /ir ".*\\DiagTrack\\SettingsRequests\\.*"`) do (
	set _ScanMode_RegDSR_FullPath=%%a
	set "_ScanMode_RegDSR_CutPath=!_ScanMode_RegDSR_FullPath:HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\Diagnostics\DiagTrack\SettingsRequests\=!"
	set "_ScanSubjectName=!_ScanMode_RegDSR_CutPath!"
	call :StringCalc _ScanSubjectName _ScanSubjectLength
	if not defined _ScanMode_SecondarySoftOutputLimit if !_ScanSubjectLength! geq 47 (
		set "_ScanSubjectName=!_ScanSubjectName:~0,44!" & set "_ScanSubjectName=!_ScanSubjectName!..."
		set _ScanSubjectLength=47
	)
	if defined _ScanMode_SecondarySoftOutputLimit if !_ScanSubjectLength! geq 33 (
		set "_ScanSubjectName=!_ScanSubjectName:~0,30!" & set "_ScanSubjectName=!_ScanSubjectName!..."
		set _ScanSubjectLength=27
	)
	set /a _ScanMode_DiagSettingsRequestsCounter=!_ScanMode_DiagSettingsRequestsCounter!+1
	<nul set /p =".!BS!  !_ScanSubjectName!^="
	set "_ScanMode_CallKey=ETagQueryParameters"
	call :ScanSlave "HKLM\Software\Microsoft\Windows\CurrentVersion\Diagnostics\DiagTrack\SettingsRequests\!_ScanMode_RegDSR_CutPath!" "ETagQueryParameters" "0" _MINIMAL
	if !_ScanMode_DiagSettingsRequestsCounter! equ 1 (
		set /a "_ScanMode_ResizerNum=!_ScanMode_SessionFixedSpaceNum!-!_ScanSubjectLength!"
		for /l %%r in (1 1 !_ScanMode_ResizerNum!) do (
			set "_ScanMode_SessionResizedSpace=!_ScanMode_SessionResizedSpace! "
		)
		<nul set /p =".!BS!!_ScanMode_SessionResizedSpace!"
	)
	if !_ScanMode_DiagSettingsRequestsCounter! equ 2 ( set "_ScanMode_DiagSettingsRequestsCounter=0" &echo. )
	set "_ScanMode_SessionResizedSpace=" &set "_ScanMode_ResizerNum=" &set "_ScanSubjectName="
)
if !_ScanMode_DiagSettingsRequestsCounter! equ 1 echo.
call :GUI 0f " Other/Misc.:" /n
call :ScanSlave "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" "IGMPLevel" "0"
call :ScanSlave "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" "UseDomainNameDevolution" "0" !_ScanMode_Limiter!
call :ScanSlave "HKLM\SYSTEM\CurrentControlSet\Services\LanmanServer\Parameters" "SMB1" "0" !_ScanMode_Limiter!
echo.
call :ScanSlave "HKLM\Software\Policies\Microsoft\Windows NT\DNSClient" "DisableSmartNameResolution" "1"
call :ScanSlave "HKLM\Software\Policies\Microsoft\Windows NT\DNSClient" "EnableMulticast" "0" !_ScanMode_Limiter!
echo.
call :ScanSlave "HKLM\SYSTEM\CurrentControlSet\Control\Lsa\MSV1_0" "RestrictReceivingNTLMTraffic" "2"
call :ScanSlave "HKLM\SYSTEM\CurrentControlSet\Control\Lsa\MSV1_0" "RestrictSendingNTLMTraffic" "2" !_ScanMode_Limiter!
rem call :ScanSlave "HKLM\Software\Policies\Microsoft\Peernet" "Disabled" "1"
if defined _flag-w10 (
	echo.
	call :ScanSlave "HKLM\Software\Microsoft\Windows\CurrentVersion\Policies\System" "DisableAutomaticRestartSignOn" "1"
	call :ScanSlave "HKLM\SYSTEM\CurrentControlSet\Services\Dnscache\Parameters" "DisableParallelAandAAAA" "1" !_ScanMode_Limiter!
	echo.
	call :ScanSlave "HKLM\SOFTWARE\Policies\Microsoft\Windows\GameDVR" "AllowGameDVR" "0"
)
echo. &echo. &echo.
call :GUI 0f " ["&call :GUI !_BC_E!!_BC_F! " Scan complete "&call :GUI 0f "]" /n
if defined _BirdRuntimeNoDeepSwitch (
	echo.
	<nul set /p =".!BS!  Press any key to return to the main window" &call :GUI 0f " > "
	if not defined _flag-s pause>nul
	call :GetClean
	cls &goto Birdboot
)
call :GetClean
if not defined _flag-s pause>nul
echo. &goto :eof

:ScanSlave
set "__GRV_Value=" &set "__ScanSlave_DirtyPath=" &set "__ScanSlave_DirtyPath=%~1"
set __ScanSlave_Path=!__ScanSlave_DirtyPath:"=!
set "__ScanSlave_Path=!__ScanSlave_Path:HKLM\=HKEY_LOCAL_MACHINE\!"
set "__ScanSlave_Path=!__ScanSlave_Path:HKCU\=HKEY_CURRENT_USER\!"
set "__ScanSlave_Path=!__ScanSlave_Path:HKU\=HKEY_USERS\!"
set "__ScanSlave_DirtyKey=" &set "__ScanSlave_DirtyKey=%~2"
set __ScanSlave_Key=!__ScanSlave_DirtyKey:"=!
set "__ScanSlave_DirtyMode=" &set "__ScanSlave_DirtyMode=%~3"
set __ScanSlave_Mode=!__ScanSlave_DirtyMode:"=!
set "__ScanSlave_RespectAutolog=" &set "__ScanSlave_RespectPrivateData=" &set "__ScanSlave_RespectMLONG="
set "__ScanSlave_RespectSOFTLIMIT=" &set "__ScanSlave_RespectREMOVE_MSTAGS=" &set "__ScanSlave_RespectMINIMAL="
set "__ScanSlave_RespectKEYLIMIT_V1=" &set "__ScanSlave_RespectKEYLIMIT_V2=" &set "__ScanSlave_RespectVALUELIMIT_V1=" &set "__ScanSlave_RespectVALUELIMIT_V2="
if "%~4"=="_ALOG_STATE" set __ScanSlave_RespectAutolog=true
if "%~4"=="_PRIVATE" set __ScanSlave_RespectPrivateData=true
if "%~4"=="_MINIMAL" set __ScanSlave_RespectMINIMAL=true
if "%~4"=="_REMOVE_MSTAGS" set __ScanSlave_RespectREMOVE_MSTAGS=true
if "%~4"=="_KEYLIMIT1" set "__ScanSlave_RespectKEYLIMIT_V1=true"
if "%~4"=="_KEYLIMIT2" set "__ScanSlave_RespectKEYLIMIT_V2=true"
if "%~4"=="_VALUELIMIT1" set "__ScanSlave_RespectVALUELIMIT_V1=true"
if "%~4"=="_VALUELIMIT2" set "__ScanSlave_RespectVALUELIMIT_V2=%~5"
if "%~4"=="_SOFTLIMIT" set "__ScanSlave_RespectSOFTLIMIT=%~5"
if "%~4"=="_MLONG" ( set "__ScanSlave_RespectMLONG=true" &set "_MLONGLength=" )
call :GetLastString "!__ScanSlave_Path!" __GLS_Result
set "__ScanSlave_GLSPath=!__ScanSlave_Path:\%__GLS_Result%=!"
set "__ScanSlave_GLSPathQuoted=^"!__ScanSlave_GLSPath!^""
if not defined __ScanSlave_RespectAutolog (
	reg query !__ScanSlave_GLSPathQuoted! | findstr /ixc:"!__ScanSlave_Path!" >nul || (
		if defined __ScanSlave_RespectSOFTLIMIT (
			call :StringCalc __ScanSlave_Key _SLKeyLength
			if !_SLKeyLength! geq !__ScanSlave_RespectSOFTLIMIT! echo.
		)
		if defined __ScanSlave_RespectKEYLIMIT_V1 ( set "__ScanSlave_Key=!__ScanSlave_Key:~0,44!" & set "__ScanSlave_Key=!__ScanSlave_Key!..." )
		if defined __ScanSlave_RespectKEYLIMIT_V2 ( set "__ScanSlave_Key=!__ScanSlave_Key:~0,24!" & set "__ScanSlave_Key=!__ScanSlave_Key!..." )
		if defined __ScanSlave_RespectREMOVE_MSTAGS set "__ScanSlave_Key=!__ScanSlave_Key:~0,-14!"
		<nul set /p =".!BS!  !__ScanSlave_Key!^="&call :GUI 0e "Not_set"
		goto :eof
))
set __NULL=
call :GetRegValue "!__ScanSlave_Path!" "!__ScanSlave_Key!" __NULL __GRV_Value
if defined __ScanSlave_RespectMINIMAL if defined __GRV_Value (
	if not [!__GRV_Value!]==[!__ScanSlave_Mode!] (
		<nul set /p =".!BS!["&call :GUI !_BC_B!!_BC_D! " 1 "
		<nul set /p ="]"
		goto :eof
	)
	if [!__GRV_Value!]==[!__ScanSlave_Mode!] (
		<nul set /p =".!BS!["&call :GUI !_BC_A!!_BC_C! " 0 "
		<nul set /p ="]"
		goto :eof
	)
	goto:eof
)
if defined __GRV_Value (
	if "!__GRV_Value!"=="Not_set" (
		if defined __ScanSlave_RespectAutolog (
			set "%4=Not_set"
			goto :eof
		)
		if not defined __ScanSlave_RespectAutolog (
			if defined __ScanSlave_RespectSOFTLIMIT (
				call :StringCalc __ScanSlave_Key _SLKeyLength
				if !_SLKeyLength! geq !__ScanSlave_RespectSOFTLIMIT! echo.
			)
			if defined __ScanSlave_RespectKEYLIMIT_V1 ( set "__ScanSlave_Key=!__ScanSlave_Key:~0,44!" & set "__ScanSlave_Key=!__ScanSlave_Key!..." )
			if defined __ScanSlave_RespectKEYLIMIT_V2 ( set "__ScanSlave_Key=!__ScanSlave_Key:~0,24!" & set "__ScanSlave_Key=!__ScanSlave_Key!..." )
			if defined __ScanSlave_RespectREMOVE_MSTAGS set "__ScanSlave_Key=!__ScanSlave_Key:~0,-14!"
			<nul set /p =".!BS!  !__ScanSlave_Key!^="&call :GUI 0e "!__GRV_Value!"
			goto :eof
	))
	if "!__GRV_Value!"=="!__ScanSlave_Mode!" (
		if defined __ScanSlave_RespectAutolog (
			set "%4=Disabled"
			goto :eof
		)
		if not defined __ScanSlave_RespectAutolog (
			if defined __ScanSlave_RespectSOFTLIMIT (
				call :StringCalc __ScanSlave_Key _SLKeyLength
				if !_SLKeyLength! geq !__ScanSlave_RespectSOFTLIMIT! echo.
			)
			if defined __ScanSlave_RespectVALUELIMIT_V2 ( set "__GRV_Value=!__GRV_Value:~0,%__ScanSlave_RespectVALUELIMIT_V2%!" &set "__GRV_Value=!__GRV_Value!..." )
			if defined __ScanSlave_RespectKEYLIMIT_V1 ( set "__ScanSlave_Key=!__ScanSlave_Key:~0,44!" & set "__ScanSlave_Key=!__ScanSlave_Key!..." )
			if defined __ScanSlave_RespectKEYLIMIT_V2 ( set "__ScanSlave_Key=!__ScanSlave_Key:~0,24!" & set "__ScanSlave_Key=!__ScanSlave_Key!..." )
			if defined __ScanSlave_RespectREMOVE_MSTAGS set "__ScanSlave_Key=!__ScanSlave_Key:~0,-14!"
			<nul set /p =".!BS!  !__ScanSlave_Key!^=[" &call :GUI !_BC_A!!_BC_C! " !__GRV_Value! " &<nul set /p ="]"
			goto :eof
	))
	if not "!__GRV_Value!"=="!__ScanSlave_Mode!" (
		if defined __ScanSlave_RespectAutolog (
			set "%4=Active"
			goto :eof
		)
		if not defined __ScanSlave_RespectAutolog (
			if defined __ScanSlave_RespectMLONG (
				call :StringCalc __GRV_Value _MLONGLength
				if !_MLONGLength! geq 43 (
					set "__GRV_Value=!__GRV_Value:~0,40!"
					set "__GRV_Value=!__GRV_Value!..."
					set __ScanSlave_MLONGExists=1
			))
			if defined __ScanSlave_RespectPrivateData set "__GRV_Value=Private"
			if defined __ScanSlave_RespectSOFTLIMIT (
				call :StringCalc __ScanSlave_Key _SLKeyLength
				if !_SLKeyLength! geq !__ScanSlave_RespectSOFTLIMIT! echo.
			)
			if defined __ScanSlave_RespectKEYLIMIT_V1 ( set "__ScanSlave_Key=!__ScanSlave_Key:~0,44!" & set "__ScanSlave_Key=!__ScanSlave_Key!..." )
			if defined __ScanSlave_RespectKEYLIMIT_V2 ( set "__ScanSlave_Key=!__ScanSlave_Key:~0,24!" & set "__ScanSlave_Key=!__ScanSlave_Key!..." )
			if defined __ScanSlave_RespectREMOVE_MSTAGS set "__ScanSlave_Key=!__ScanSlave_Key:~0,-14!"
			call :StringCalc __GRV_Value _SLValueLength
			if defined __ScanSlave_RespectVALUELIMIT_V1 (
				if !_SLValueLength! geq 50 (set "__GRV_Value=!__GRV_Value:~0,50!" &set "__GRV_Value=!__GRV_Value!...")
			) else if defined __ScanSlave_RespectVALUELIMIT_V2 (
				if !_SLValueLength! geq !__ScanSlave_RespectVALUELIMIT_V2! (set "__GRV_Value=!__GRV_Value:~0,%__ScanSlave_RespectVALUELIMIT_V2%!" &set "__GRV_Value=!__GRV_Value!...")
			) else if !_SLValueLength! geq 9 (
				set "__GRV_Value=!__GRV_Value:~0,20!" &set "__GRV_Value=!__GRV_Value!..."
			)
			<nul set /p =".!BS!  !__ScanSlave_Key!^=[" &call :GUI !_BC_B!!_BC_D! " !__GRV_Value! " &<nul set /p ="]"
			if defined __ScanSlave_MLONGExists echo.
			goto :eof
)))
goto:eof

:Blackbird_Help
if defined _flag-w10 (
	set "_BirdHelp_AvailableSwitchSet_A=[-scan] [-app] [-std] [-bak] [-r] [-v] [-s] [-?] "
	set "_BirdHelp_AvailableSwitchSet_B=[-kc] [-ke] [-ks] [-kf] [-kl] [-aslr] [-a] [-b] [-c] [-d] [-e]"
	set "_BirdHelp_AvailableSwitchSet_C=[-g] [-h] [-j] [-o] [-p] [-t] [-u] [-w] [-x] [-n] [-l] [-i]"
	set "_BirdHelp_AvailableSwitchSet_D=[-color] [-showhost] [-nospeed] [-nohost] "
	set "_BirdHelp_AvailableSwitchSet_E=[-tasks] [-services] [-registry] [-hostblock] "
)
if defined _flag-w8 (
	set "_BirdHelp_AvailableSwitchSet_A=[-scan] [-std] [-bak] [-r] [-v] [-s] [-?] "
	set "_BirdHelp_AvailableSwitchSet_B=[-aslr] [-a] [-b] [-d] [-e] [-g] [-h] [-m] [-o] [-p] [-t] [-u] "
	set "_BirdHelp_AvailableSwitchSet_C=[-n] [-l] [-i] [-color] [-showhost] [-noupdate] [-nospeed] "
	set "_BirdHelp_AvailableSwitchSet_D=[-nohost] [-updates] [-tasks] [-services] [-registry] [-hostblock]"
)
if not defined _flag-w8 if not defined _flag-w10 (
	set "_BirdHelp_AvailableSwitchSet_A=[-scan] [-std] [-bak] [-r] [-v] [-s] [-?] "
	set "_BirdHelp_AvailableSwitchSet_B=[-aslr] [-d] [-e] [-g] [-h] [-m] [-p] [-t] [-u] [-n] [-l] [-i]"
	set "_BirdHelp_AvailableSwitchSet_C=[-color] [-showhost] [-noupdate] [-nospeed] [-nohost] "
	set "_BirdHelp_AvailableSwitchSet_D=[-updates] [-tasks] [-services] [-registry] [-hostblock] "
)
echo. &echo Blackbird V6, Version !blackbird_ver! (c) 2022, BGB 1.0 license
echo www.getblackbird.net - Windows privacy, security and performance
echo.
echo blackbird !_BirdHelp_AvailableSwitchSet_A!
echo           !_BirdHelp_AvailableSwitchSet_B!
echo           !_BirdHelp_AvailableSwitchSet_C!
echo           !_BirdHelp_AvailableSwitchSet_D!
if defined _BirdHelp_AvailableSwitchSet_E echo           !_BirdHelp_AvailableSwitchSet_E!
echo. &echo  -scan  Full system scan. Green is good/red is bad.
if defined _flag-w10 echo  -app   Start Blackbird App Manager. See ReadMe for details.
echo  -std   STD mode. Force removal of known spy tasks. See ReadMe for details.
echo  -bak   Backup mode. Backup current system settings to an external file. 
echo  -r     Recovery mode. Restores/resets all changes made by Blackbird.
echo  -v     Verbose mode. Displays additional info. on all changes being made.
echo  -s     Silent mode. Skips any pauses ^(script usage^).  
echo  -?     Displays this help text. &echo.
if defined _flag-w10 (
	echo  -kc    Kill/revive Cortana.
	echo  -ke    Kill/revive Edge browser.
	echo  -ks    Kill/revive Windows Store.
	echo  -kf    Kill/revive Feedback/ContactSupport.
	echo  -kl    Kill/revive Lockscreen. &echo.
)
echo  -aslr  Disable/enable system ASLR.
if defined _flag-w10 (
	echo  -a     Disable/enable SmartScreen application checking.
	echo  -b     Disable/enable Runtime Broker ^(UWP apps^).
	echo  -c     Disable/enable background access for all default system apps.
)
if defined _flag-w8 (
	echo  -a     Disable/enable SmartScreen application checking.
	echo  -b     Disable/enable Runtime Broker ^(UWP apps^).
)
echo  -d     Disable/enable Windows Defender.
echo  -e     Disable/enable SMB over NetBIOS ^(close/open listening port 445^).
echo  -g     Disable/enable Games Explorer ^(gameux.dll injection^).
echo  -h     Disable/enable Hibernation.
if defined _flag-w10 (echo  -j     Disable/enable application access to local devices.)
if not defined _flag-w10 if not defined _OS-UNKNOWN (echo  -m     Disable/enable automatic installation of MRT updates.)
if defined _flag-w10 (echo  -o     Disable/enable OneDrive.) else if defined _flag-w8 (echo  -o     Disable/enable OneDrive.)
echo  -p     Disable/enable Diagnostic Policy Service ^(DPS^).
echo  -t     Disable/enable sensors ^(tablets^).
echo  -u     Disable/enable automatic installation of Windows updates.
if defined _flag-w10 (echo  -w     Disable/enable Task View ^(virtual desktops^). &echo  -x     Disable/enable Xbox Live services.)
echo  -n     Remove all active Blackbird IP/host blocks.
echo  -l     Fix network/LAN connectivity issues.
if defined _flag-w10 (echo  -i     Fix Bluetooth, Device Settings, Focus/Assist and user notifications.) else if not defined _flag-w10 (echo  -i     Fix Bluetooth pairing.)
echo.
echo  -color      Alternative color scheme ^(green=blue,red=yellow^).
echo  -showhost   Show all active host/IP blocks set by Blackbird.
if not defined _flag-w10 if not defined _OS-UNKNOWN (echo  -noupdate   Skip KB update removal.)
echo  -nospeed    Skip system/network speed optimizations.
echo  -nohost     Skip IP/host blocking.
if not defined _flag-w10 if not defined _OS-UNKNOWN (echo  -updates    Only remove KB updates.)
echo  -tasks      Only secure/disable scheduled tasks.
echo  -services   Only secure/disable services.
echo  -registry   Only secure registry.
echo  -hostblock  Only run IP/host blocker. &echo.
goto :eof

rem                Blackbird Framework - Katana 3        
rem          ,__________________________________________ 
rem  ========|__________________________________________\

:Blackbird_DevShell
echo. &call :GUI !_BC_G!!_BC_I! " BDSh - Blackbird Developer Shell " /n
:BDShell
set _BDSh_SessionInput=
<nul set /p =".!BS! !_blackname! @ !computername!\"&call :GUI 06 "BDSh "
set /P "_BDSh_SessionInput=> "
if not defined _BDSh_SessionInput goto BDShell
set "_BDSh_SessionInput=!_BDSh_SessionInput:;=!"
if /i "!_BDSh_SessionInput!" == "?" goto BDSh_Help
if /i "!_BDSh_SessionInput!" == "help" goto BDSh_Help
if /i "!_BDSh_SessionInput!" == "q" ( cls & goto Birdboot )
if /i "!_BDSh_SessionInput!" == "quit" ( cls & goto Birdboot )
For %%A In (!_BDSh_SessionInput!) Do if not defined _BDSh_RootCommand set "_BDSh_RootCommand=%%A"
set _BDSh_Argument=!_BDSh_SessionInput:%_BDSh_RootCommand% =!
set _BDSh_DBG_REG=
if /i "!_BDSh_RootCommand!"=="Debug_Reg" set _BDSh_DBG_REG=true
if /i "!_BDSh_SessionInput!"=="Debug Reg" set _BDSh_DBG_REG=true
if /i "!_BDSh_SessionInput!"=="Debug Registry" set _BDSh_DBG_REG=true
if defined _BDSh_DBG_REG ( set _DEBUG_MODE=true & goto BlueDog_Registry )
set _BDSh_DBG_TSK=
if /i "!_BDSh_RootCommand!"=="Debug_Tsk" set _BDSh_DBG_TSK=true
if /i "!_BDSh_SessionInput!"=="Debug Tsk" set _BDSh_DBG_TSK=true
if /i "!_BDSh_SessionInput!"=="Debug Task" set _BDSh_DBG_TSK=true
if defined _BDSh_DBG_TSK ( set _DEBUG_MODE=true & goto BlueDog_Tasks )
set _BDSh_DBG_SRV=
if /i "!_BDSh_RootCommand!"=="Debug_Srv" set _BDSh_DBG_SRV=true
if /i "!_BDSh_SessionInput!"=="Debug Srv" set _BDSh_DBG_SRV=true
if /i "!_BDSh_SessionInput!"=="Debug Service" set _BDSh_DBG_SRV=true
if defined _BDSh_DBG_SRV ( set _DEBUG_MODE=true & goto BlueDog_Services )
set _BDSh_DBG_HOST=
if /i "!_BDSh_RootCommand!"=="Debug_Host" set _BDSh_DBG_HOST=true
if /i "!_BDSh_SessionInput!"=="Debug Host" set _BDSh_DBG_HOST=true
if /i "!_BDSh_SessionInput!"=="Debug Hostblock" set _BDSh_DBG_HOST=true
if defined _BDSh_DBG_HOST ( set _DEBUG_MODE=true & goto RedPanda )
set _BDSh_DBG_BAK=
if /i "!_BDSh_RootCommand!"=="Debug_Bak" set _BDSh_DBG_BAK=true
if /i "!_BDSh_SessionInput!"=="Debug Bak" set _BDSh_DBG_BAK=true
if /i "!_BDSh_SessionInput!"=="Debug Backup" set _BDSh_DBG_BAK=true
if defined _BDSh_DBG_BAK ( set _DEBUG_MODE=true & goto Blackbird_Backup )
set _BDSh_DBG_REC=
if /i "!_BDSh_RootCommand!"=="Debug_Rec" set _BDSh_DBG_REC=true
if /i "!_BDSh_SessionInput!"=="Debug Rec" set _BDSh_DBG_REC=true
if /i "!_BDSh_SessionInput!"=="Debug Recovery" set _BDSh_DBG_REC=true
if defined _BDSh_DBG_REC ( set _DEBUG_MODE=true & goto Blackbird_Recovery )
set _BDSh_DBG_STD=
if /i "!_BDSh_RootCommand!"=="Debug_STD" set _BDSh_DBG_STD=true
if /i "!_BDSh_SessionInput!"=="Debug STD" set _BDSh_DBG_STD=true
if defined _BDSh_DBG_STD ( set _DEBUG_MODE=true & goto Blackbird_STD )
set _BDSh_DBG_SCAN=
if /i "!_BDSh_RootCommand!"=="Debug_Scan" set _BDSh_DBG_SCAN=true
if /i "!_BDSh_SessionInput!"=="Debug Scan" set _BDSh_DBG_SCAN=true
if defined _BDSh_DBG_SCAN ( set _DEBUG_MODE=true & goto Blackbird_Scan )
set _BDSh_DMP_HOST=
if /i "!_BDSh_RootCommand!"=="Dump_Hosts" set _BDSh_DMP_HOST=true
if /i "!_BDSh_RootCommand!"=="Dump_Host" set _BDSh_DMP_HOST=true
if /i "!_BDSh_SessionInput!"=="Dump Hosts" set _BDSh_DMP_HOST=true
if /i "!_BDSh_SessionInput!"=="Dump Host" set _BDSh_DMP_HOST=true
if defined _BDSh_DMP_HOST ( set _DUMP_MODE=true & goto RedPanda )
set _BDSh_CmdExists=
if /i "!_BDSh_RootCommand!"=="GetTreeBranch" set _BDSh_CmdExists=true
if /i "!_BDSh_RootCommand!"=="GetRegValue" set _BDSh_CmdExists=true
if /i "!_BDSh_RootCommand!"=="GetLastString" set _BDSh_CmdExists=true
if /i "!_BDSh_RootCommand!"=="GetFruit" set _BDSh_CmdExists=true
if /i "!_BDSh_RootCommand!"=="StringCalc" set _BDSh_CmdExists=true
if /i "!_BDSh_RootCommand!"=="Dec2Hex" set _BDSh_CmdExists=true
if /i "!_BDSh_RootCommand!"=="Hex2Dec" set _BDSh_CmdExists=true
if /i "!_BDSh_RootCommand!"=="DrawBird" set _BDSh_CmdExists=true
if /i "!_BDSh_RootCommand!"=="ScanSlave" set _BDSh_CmdExists=true
if /i "!_BDSh_RootCommand!"=="SwitchSlave" set _BDSh_CmdExists=true
if /i "!_BDSh_RootCommand!"=="BackupSlave" set _BDSh_CmdExists=true
if /i "!_BDSh_RootCommand!"=="GetServiceName" set _BDSh_CmdExists=true
if /i "!_BDSh_RootCommand!"=="GetDSN" set _BDSh_CmdExists=true
if not defined _BDSh_Argument if defined _BDSh_CmdExists (
	call :!_BDSh_RootCommand!
	set _BDSh_RootCommand=
	echo. &goto BDShell
)
if defined _BDSh_Argument if defined _BDSh_CmdExists (
	call :!_BDSh_RootCommand! "!_BDSh_Argument!" _BDSh_Result
	call :GUI 0f " !_BDSh_Result!" /n
	set "_BDSh_RootCommand=" &set "_BDSh_Argument=" &set "_BDSh_Result="
	echo. &goto BDShell
)
if defined _BDSh_Argument if defined _BDSh_DBGExists set _DEBUG_MODE=true
echo  - Unknown command '!_BDSh_RootCommand!'
set "_BDSh_RootCommand=" &set "_BDSh_Argument=" &set "_BDSh_Result="
echo. &goto BDShell
:BDSh_Help
echo  GetTreeBranch  GetLastString  GetRegValue  GetServiceName
echo  GetFruit       GetDSN         ScanSlave    SwitchSlave  
echo  BackupSlave    DrawBird       StringCalc   Dec2Hex / Hex2Dec    
echo  Debug_Tsk      Debug_Reg      Debug_Srv    Debug_Host
echo  Debug_Bak      Debug_Rec      Debug_STD    Debug_Scan
echo  Dump_Host
echo  Quit / Q
echo.
goto BDShell

:DrawBird
set "__DWB_INLine=" &set "__DWB_OUTLine="
set "__DWB_INLine=%1"
if "%2"=="-LOOP" (
	set "_DrawBird_LOOPEndLine=%~3"
	for /l %%z in (!__DWB_INLine! 1 !_DrawBird_LOOPEndLine!) do (
		call :DrawBird %%z __DrawBird_LOOPFill
		<nul set /p =".!BS!!__DrawBird_LOOPFill!"&echo.
))
if "!__DWB_INLine!"=="1" ( set "__DWB_OUTLine=  '-.,   -.             " &set "%~2=!__DWB_OUTLine!" &goto:eof )
if "!__DWB_INLine!"=="2" ( set "__DWB_OUTLine=   '---. \--    .---.   " &set "%~2=!__DWB_OUTLine!" &goto:eof )
if "!__DWB_INLine!"=="3" ( set "__DWB_OUTLine=     '------- .-------  " &set "%~2=!__DWB_OUTLine!" &goto:eof )
if "!__DWB_INLine!"=="4" ( set "__DWB_OUTLine=      '------------     " &set "%~2=!__DWB_OUTLine!" &goto:eof )
if "!__DWB_INLine!"=="5" ( set "__DWB_OUTLine=         '--------      " &set "%~2=!__DWB_OUTLine!" &goto:eof )
if "!__DWB_INLine!"=="6" ( set "__DWB_OUTLine=           '----        " &set "%~2=!__DWB_OUTLine!" &goto:eof )
if "!__DWB_INLine!"=="7" ( set "__DWB_OUTLine=           ---'         " &set "%~2=!__DWB_OUTLine!" &goto:eof )
if "!__DWB_INLine!"=="8" ( set "__DWB_OUTLine=           --           " &set "%~2=!__DWB_OUTLine!" &goto:eof )
if "!__DWB_INLine!"=="9" ( set "__DWB_OUTLine=           -            " &set "%~2=!__DWB_OUTLine!" &goto:eof )
if "!__DWB_INLine!"=="10" ( set "__DWB_OUTLine=           '            " &set "%~2=!__DWB_OUTLine!" &goto:eof )
goto:eof

:GetMLSET
if /i "%2"=="-SCHTASKS" if defined _Bird_ExtPS (
	set "_BirdML_DefaultTaskPATH=\Microsoft\Windows\Power Efficiency Diagnostics"
	set "_BirdML_DefaultTaskNAME=AnalyzeSystem"
	if /i "%3"=="-DISABLED" (
		powershell "Disable-ScheduledTask -TaskName '!_BirdML_DefaultTaskNAME!' -TaskPath '!_BirdML_DefaultTaskPATH!\'" >nul 2>&1
		for /f "usebackq tokens=*" %%Y In (`schtasks /Query /TN "!_BirdML_DefaultTaskPATH!\!_BirdML_DefaultTaskNAME!" ^| findstr /ir "\<!_BirdML_DefaultTaskNAME! "`) Do set "_BirdML_TaskStateRaw_DISABLED=%%~nxY"
		call :GetMLSET_Filter "!_BirdML_TaskStateRaw_DISABLED!" _BirdML_TaskStateClean_DISABLED
		set "%1=!_BirdML_TaskStateClean_DISABLED!"
		goto:eof
	)
	if /i "%3"=="-ENABLED" (
		powershell "Enable-ScheduledTask -TaskName '!_BirdML_DefaultTaskNAME!' -TaskPath '!_BirdML_DefaultTaskPATH!\'" >nul 2>&1
		for /f "usebackq tokens=*" %%Z In (`schtasks /Query /TN "!_BirdML_DefaultTaskPATH!\!_BirdML_DefaultTaskNAME!" ^| findstr /ir "\<!_BirdML_DefaultTaskNAME! "`) Do set "_BirdML_TaskStateRaw_ENABLED=%%~nxZ"
		call :GetMLSET_Filter "!_BirdML_TaskStateRaw_ENABLED!" _BirdML_TaskStateClean_ENABLED
		set "%1=!_BirdML_TaskStateClean_ENABLED!"
		goto:eof
))
goto:eof
:GetMLSET_Filter
set __MLSET_FilterOUT=
set __MLSET_FilterSTRING=%~1"
set "__MLSET_FilterSTRING=!__MLSET_FilterSTRING:"=!"
:GetMLSET_FilterLoop
for /F "tokens=1*" %%y in ( "!__MLSET_FilterSTRING!" ) do (
	set __MLSET_FilterOUT=%%y
	set __MLSET_FilterSTRING=%%z
	goto GetMLSET_FilterLoop
)
set "%~2=!__MLSET_FilterOUT!"
goto:eof

:GetTreeBranch
set "_GTB_Counter=0" &set "_GTB_FullPathLIVE_ADD=" &set "_GTB_FullPathLIVE_DB="
set "_GTB_QueryPathQuoted=" &set "_GTB_PrepPathClean=" &set "__GTB_FullBranch="
set "_GTB_QueryPathQuoted=%1"
set _GTB_PrepPathClean=!_GTB_QueryPathQuoted:"=!
if "!_GTB_PrepPathClean!"=="_AUTOLOG_Template" (
	set _AUTOLOG_TemplateExceptions=
	if "%3"=="_BOOTSCAN" if defined _flag-w10 ( set "_AUTOLOG_TemplateExceptions=ReadyBoot Defender EventLog- Status" )
	if not "%3"=="_BOOTSCAN" if defined _flag-w10 ( set "_AUTOLOG_TemplateExceptions=ReadyBoot EventLog- Status" )
	if not defined _flag-w10 ( set "_AUTOLOG_TemplateExceptions=ReadyBoot EventLog- Status" )
	for /F "tokens=* usebackq delims=" %%T in (`reg query "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\WMI\Autologger" ^| findstr /v "!_AUTOLOG_TemplateExceptions!" ^| findstr /i "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\WMI\Autologger\\"`) do (
		set /a _GTB_Counter=!_GTB_Counter!+1
		set _GTB_AllBranches!_GTB_Counter!=%%T
	)
) else (
	for /F "tokens=* usebackq delims=" %%T in (`reg query "!_GTB_PrepPathClean!" ^| findstr /i "!_GTB_PrepPathClean!\\"`) do (
		set /a _GTB_Counter=!_GTB_Counter!+1
		set _GTB_AllBranches!_GTB_Counter!=%%T
))
for /l %%U in (1 1 !_GTB_Counter!) do (
	set "_GTB_FullPathLIVE_ADD=!_GTB_AllBranches%%U!"
	set _GTB_AllBranches%%U=
	if defined _GTB_FullPathLIVE_ADD (
		if defined _GTB_FullPathLIVE_DB set "_GTB_FullPathLIVE_DB=!_GTB_FullPathLIVE_DB!##!_GTB_FullPathLIVE_ADD!"
		if not defined _GTB_FullPathLIVE_DB set "_GTB_FullPathLIVE_DB=!_GTB_FullPathLIVE_ADD!"
))
set "%2=!_GTB_FullPathLIVE_DB!"
goto :eof

:GetFruit
set "_GFR_FruitCounter=0" &set "_GFR_Fruit_ALLDUMP="
set "_GFR_BranchRequest_Wild=%1"
if "%4"=="_PickFruit" (
	set "_GFR_PickFruitRequest_Wild=%2"
	set _GFR_PickedFruit=!_GFR_PickFruitRequest_Wild:"=!
	set _GFR_PickedBranch=!_GFR_BranchRequest_Wild:"=!
	set "_GFR_PickedBranch_Quoted=^"!_GFR_PickedBranch!^""
	reg query !_GFR_PickedBranch_Quoted! | findstr /i "!_GFR_PickedFruit!" >nul || (
		set "%3=NO_FRUIT"
		goto :eof
	)
	For /F "usebackq tokens=1,2,3" %%X In (`reg query !_GFR_PickedBranch_Quoted! ^| findstr /i "!_GFR_PickedFruit!.*"`) Do (
		set /a "_GFR_FruitCounter=!_GFR_FruitCounter!+1"
		set "_GFR_FruitExists!_GFR_FruitCounter!=%%X"
	)
	if !_GFR_FruitCounter! gtr 0 ( 
		for /l %%X in (1 1 !_GFR_FruitCounter!) do (
			if defined _GFR_Fruit_ALLDUMP set "_GFR_Fruit_ALLDUMP=!_GFR_Fruit_ALLDUMP! !_GFR_FruitExists%%X!"
			if not defined _GFR_Fruit_ALLDUMP set "_GFR_Fruit_ALLDUMP=!_GFR_FruitExists%%X!"
		)
		set "%3=!_GFR_Fruit_ALLDUMP!"
	)
	goto :eof
)
if "%4"=="_IfExistBranch" (
	set "_GFR_IfExistBranch=!_GFR_BranchRequest_Wild!"
	set "_GFR_IfExistBranch=!_GFR_IfExistBranch:"=!"
	call :GetLastString "!_GFR_IfExistBranch!" __GLS_Result
	set "_GFR_IfExist_GLSBranch=!_GFR_IfExistBranch:\%__GLS_Result%=!"
	set "_GFR_IfExist_GLSBranchQuoted=^"!_GFR_IfExist_GLSBranch!^""
	reg query !_GFR_IfExist_GLSBranchQuoted! | findstr /ixc:"!_GFR_IfExistBranch!" >nul || (
		set "%3=NO_FRUIT"
		goto :eof
))
set _GFR_TmpFile=
set "_GFR_TmpFile=!BlackTemp!\bird_gfrf.tmp"
set _GFR_BranchRequest_Clean=!_GFR_BranchRequest_Wild:"=!
set "_GFR_BranchRequest_Quoted=^"!_GFR_BranchRequest_Clean!^""
set "_GFR_TypeRequest_Wild=%2"
set _GFR_TypeRequest_Clean=!_GFR_TypeRequest_Wild:"=!
set "_GFR_TypeRequest_Quoted=^"!_GFR_TypeRequest_Clean!^""
if exist "!_GFR_TmpFile!" del /F /Q /S "!_GFR_TmpFile!" >nul 2>&1
reg query !_GFR_BranchRequest_Quoted! | findstr /i "!_GFR_TypeRequest_Clean!">>!_GFR_TmpFile!
if not exist "!_GFR_TmpFile!" (
	set "%3=NO_FRUIT"
	goto :eof
)
for /F "tokens=1,2,3 usebackq" %%x in ("!_GFR_TmpFile!") do (
	set "_GFR_FruitBasket_ADD=%%x"
	if defined _GFR_FruitBasket_ADD (
		if defined _GFR_FruitBasket_DB set "_GFR_FruitBasket_DB=!_GFR_FruitBasket_DB!##!_GFR_FruitBasket_ADD!"
		if not defined _GFR_FruitBasket_DB set "_GFR_FruitBasket_DB=!_GFR_FruitBasket_ADD!"
))
set "%3=!_GFR_FruitBasket_DB!"
goto:eof

:GetRegValue
set "__GRV_KeyName=" &set "__GRV_Path="
set "__GRV_Path=%1"
set "__GRV_KeyName=%2"
set __GRV_KeyName=!__GRV_KeyName:"=!
reg query !__GRV_Path! | findstr /i /c:" !__GRV_KeyName! " >nul || (
	set __GRV_PathClean=!__GRV_Path:"=!
	set "%3=!__GRV_PathClean!"
	set "__GRV_KeyValue=Not_set"
	set "%4=!__GRV_KeyValue!"
	goto :eof
)
reg query !__GRV_Path! | findstr /i /c:" !__GRV_KeyName! " >nul && (
	For /F "usebackq tokens=2,3" %%g In (`reg query !__GRV_Path! /v "!__GRV_KeyName!" ^| findstr /i /c:" !__GRV_KeyName! "`) Do (
		set "__GRV_KeyType=%%g"
		set "__GRV_KeyValue=%%h"
		IF "!__GRV_KeyValue:~0,2!"=="0x" (
			set "__GRV_KeyValue=!__GRV_KeyValue:0x=!"
			call :Hex2Dec "!__GRV_KeyValue!" DecValue
			set "__GRV_KeyValue=!DecValue!"
)))
set __GRV_KeyValueClean=!__GRV_KeyValue:"=!
set __GRV_PathClean=!__GRV_Path:"=!
set "%3=!__GRV_PathClean!"
set "%4=!__GRV_KeyValueClean!"
goto:eof

rem ############# x32_flag ###############
:GetRegAddForce
set "__GRAF_PathDirty=%1" &set "__GRAF_KeyDirty=%2" &set "__GRAF_TypeDirty=%3" &set "__GRAF_DataDirty=%4"
set __GRAF_PathClean=!__GRAF_PathDirty:"=!
set __GRAF_KeyClean=!__GRAF_KeyDirty:"=!
set __GRAF_TypeClean=!__GRAF_TypeDirty:"=!
set __GRAF_DataClean=!__GRAF_DataDirty:"=!
call sc stop TrustedInstaller >nul 2>&1
call sc config TrustedInstaller binPath= "cmd.exe /C reg add \"!__GRAF_PathClean!\" /v \"!__GRAF_KeyClean!\" /t !__GRAF_TypeClean! /d \"!__GRAF_DataClean!\" /f" >nul 2>&1
call sc start TrustedInstaller >nul 2>&1
timeout /t 1 >nul
call sc stop TrustedInstaller >nul 2>&1
call sc config TrustedInstaller binPath= "!systemroot!\servicing\TrustedInstaller.exe" >nul 2>&1
goto:eof
rem ############# x32_flag ###############

:GetHostBlockState
For /F "Usebackq delims=" %%h In (`netsh interface ipv6 show route ^| findstr /rc:".* 1 .*\:.*\:.*\:.*/128 .* \:\:1$"`) Do (goto:eof)
For /F "Usebackq delims=" %%h In (`netsh interface ipv4 show route ^| findstr /rc:".* 1 .*[0-9]*\.[0-9]*\.[0-9]*\.[0-9]*/32 .* 127.0.0.0$" ^| findstr /r /v "0\.0\.0\.0"`) Do (goto:eof)
set "_BOOT_TelemIAI=true" &set "_BOOT_IAI=true" &set "__RNS_NoBLOCK=true" &set "_Backup_NETCFG_HostBlock=blackbird.hostblock#n0x0"
goto:eof

:GetDSN
set "_GDNFullName=" &set "__GDN_FinalOutput=" &set "__GDN_CleanQuery=" &set "__GDN_DirtyQuery="
set "__GDN_DirtyQuery=%1"
set __GDN_CleanQuery=!__GDN_DirtyQuery:"=!
for /f "usebackq tokens=2" %%a in (`sc queryex state^= all ^| findstr /irc:" !__GDN_CleanQuery!_.*"`) do (set "__GDN_FinalOutput=%%a")
set "%2=!__GDN_FinalOutput!"
goto:eof

:GetServiceInfo
set "__GSI_QueryNameDirty=" &set "__GSI_QueryNameClean=" &set "__GSI_DEFAULTSTATE="
set "__GSI_QueryNameDirty=%1"
set __GSI_QueryNameClean=!__GSI_QueryNameDirty:"=!
if not defined _Bird_DefaultService_DemandPool set "_Bird_DefaultService_DemandPool= AarSvc AeLookupSvc BcastDVRUserService BITS BluetoothUserService CaptureService cbdhsvc ConsentUxUserSvc CredentialEnrollmentManagerUserSvc DcpSvc DeviceAssociationBrokerSvc DeviceAssociationService DevicesFlowUserSvc DevicePickerUserSvc diagnosticshub.standardcollector.service diagsvc DmWapPushService DsSvc fdPHost FDResPub IEEtwCollectorService InstallService lfsvc lmhosts LxpSvc MessagingService MRxDAV MRxSMB10 NcaSvc NcbService PcaSvc PimIndexMaintenanceSvc PrintWorkflowUserSvc PushToInstall RemoteAccess RetailDemo StorSvc SmsRouter srv SSDPSRV TabletInputService tunnel UnistoreSvc upnphost UserDataSvc UsoSvc W32Time WaaSMedicSvc WbioSrvc wcncsvc WdiServiceHost WdiSystemHost WebClient wercplsupport WerSvc WinHttpAutoProxySvc WinRM wisvc wlidsvc WMPNetworkSvc wuauserv TimeBrokerSvc xbgm XblAuthManager XblGameSave XboxGipSvc XboxNetApiSvc "
echo !_Bird_DefaultService_DemandPool! | findstr /irc:" !__GSI_QueryNameClean! " >nul && ( set "__GSI_DEFAULTSTATE=demand" & goto GetServiceInfoEnd )
if not defined _Bird_DefaultService_AutoPool set "_Bird_DefaultService_AutoPool= CDPSvc CDPUserSvc cldflt DiagTrack DoSvc DPS iphlpsvc NetMsmqActivator OneSyncSvc sgrmbroker TrkWks lanmanserver WpnService WpnUserService "
echo !_Bird_DefaultService_AutoPool! | findstr /irc:" !__GSI_QueryNameClean! " >nul && ( set "__GSI_DEFAULTSTATE=auto" & goto GetServiceInfoEnd )
if not defined _Bird_DefaultService_DisabledPool set "_Bird_DefaultService_DisabledPool= HPTouchpointAnalyticsService NvTelemetryContainer RemoteRegistry shpamsvc UevAgentService VDWFP VisualDiscovery "
echo !_Bird_DefaultService_DisabledPool! | findstr /irc:" !__GSI_QueryNameClean! " >nul && ( set "__GSI_DEFAULTSTATE=disabled" & goto GetServiceInfoEnd )
if not defined _Bird_DefaultService_DelayAutoPool set "_Bird_DefaultService_DelayAutoPool= NetBT "
echo !_Bird_DefaultService_DelayAutoPool! | findstr /irc:" !__GSI_QueryNameClean! " >nul && ( set "__GSI_DEFAULTSTATE=delayed-auto" & goto GetServiceInfoEnd )
if not defined _Bird_DefaultService_BootPool set "_Bird_DefaultService_BootPool= telemetry "
echo !_Bird_DefaultService_BootPool! | findstr /irc:" !__GSI_QueryNameClean! " >nul && ( set "__GSI_DEFAULTSTATE=boot" & goto GetServiceInfoEnd )
:GetServiceInfoEnd
set "%2=!__GSI_DEFAULTSTATE!"
goto:eof

:GetServiceName
set "__GSN_NotFriendly=" &set "__GSN_UserFriendlyRAW=" &set "__GSN_UserFriendlyCLEAN="
set "__GSN_NotFriendly=%1"
set __GSN_NotFriendly=!__GSN_NotFriendly:"=!
for /f "usebackq tokens=2 delims=:" %%a in (`sc qc !__GSN_NotFriendly! ^| findstr /i "display_name"`) do ( set "__GSN_UserFriendlyRAW=%%a" )
set "__GSN_UserFriendlyCLEAN=!__GSN_UserFriendlyRAW:~1!"
set "%2=!__GSN_UserFriendlyCLEAN!"
goto:eof

:GetOwnership
set "__GOWN_DirtyPath=" &set "__GOWN_CleanPath=" &set "__GOWN_SysCheckPATH=" &set "__GOWN_RootCounter=0"
set "__GOWN_DirtyPath=%1"
set __GOWN_CleanPath=!__GOWN_DirtyPath:"=!
attrib -h /D "!__GOWN_CleanPath!" >nul 2>&1
if exist "!__GOWN_CleanPath!" (icacls "!__GOWN_CleanPath!" /grant:r *S-1-5-32-544:f /C /Q >nul 2>&1)
goto:eof

rem S-1-3-0       ::  Creator Owner
rem S-1-5-18      ::  System
rem S-1-5-32-544  ::  Admins
rem S-1-5-32-545  ::  Users
rem S-1-5-19      ::  NT Authority\Local Service  (default perms. (OI)(CI)(RX) )
rem S-1-5-20      ::  NT Authority\Network Service  (default perms. (OI)(CI)(RX) )
rem S-1-5-80-*    ::  NT SERVICE  //  CMD: call sc showsid SERVICE_NAME
rem ALL APPLICATION PACKAGES
rem ALL RESTRICTED APPLICATION PACKAGES

:GetDeepOwnership
set "__GDOWN_DirtyPath=" &set "__GDOWN_CleanPath="
set "__GDOWN_DirtyPath=%1"
set __GDOWN_CleanPath=!__GDOWN_DirtyPath:"=!
if not defined __GDOWN_CleanPath goto :eof
if "%2"=="-MAKE_BACKUP" (
	if exist "!__GDOWN_CleanPath!.!_BakString!\" (
		takeown /f "!__GDOWN_CleanPath!.!_BakString!" /a /r /d y >nul 2>&1
		icacls "!__GDOWN_CleanPath!.!_BakString!" /grant:r *S-1-5-32-544:f /T /C /Q >nul 2>&1
		icacls "!__GDOWN_CleanPath!.!_BakString!" /remove:g SYSTEM /inheritance:r /deny "SYSTEM:(OI)(CI)(IO)(F)" /T /C /Q >nul 2>&1
		icacls "!__GDOWN_CleanPath!.!_BakString!" /remove TrustedInstaller /T /C /Q >nul 2>&1
		icacls "!__GDOWN_CleanPath!.!_BakString!" /remove "ALL RESTRICTED APPLICATION PACKAGES" /T /C /Q >nul 2>&1
		icacls "!__GDOWN_CleanPath!.!_BakString!" /remove "ALL APPLICATION PACKAGES" /T /C /Q >nul 2>&1
		icacls "!__GDOWN_CleanPath!.!_BakString!" /remove "APPLICATION PACKAGE AUTHORITY" /T /C /Q >nul 2>&1
		del /F /Q /S "!__GDOWN_CleanPath!.!_BakString!\*" >nul 2>&1
		RD /S /Q "!__GDOWN_CleanPath!.!_BakString!" >nul 2>&1
))
set "__GDOWN_TargetFile=" &set "__GDOWN_ParentPath="
call :GetLastString "!__GDOWN_CleanPath!" __GDOWN_TargetFile
if defined __GDOWN_TargetFile (
	set __GDOWN_ParentPath=
	set "__GDOWN_ParentPath=!__GDOWN_CleanPath:\%__GDOWN_TargetFile%=!"
	if /i not "!__GDOWN_ParentPath!"=="!systemdrive!" (
		attrib -h /D /S "!__GDOWN_ParentPath!" >nul 2>&1
		takeown /a /f "!__GDOWN_ParentPath!" >nul 2>&1
		icacls "!__GDOWN_ParentPath!" /grant:r *S-1-5-32-544:f /C /Q >nul 2>&1
))
for /f "usebackq tokens=* delims=" %%E in (`dir /b "!__GDOWN_CleanPath!" ^| findstr /i ".*\.exe"`) do (
	set "__GDOWN_KillEXE_Full=%%E"
	set "__GDOWN_KillEXE_Short=!__GDOWN_KillEXE_Full:.exe=!"
	if defined __GDOWN_KillEXE_Full if not defined osHome taskkill /F /IM !__GDOWN_KillEXE_Full! >nul 2>&1
	if defined __GDOWN_KillEXE_Short tskill !__GDOWN_KillEXE_Short! /a >nul 2>&1
)
takeown /f "!__GDOWN_CleanPath!" /a /r /d y >nul 2>&1
icacls "!__GDOWN_CleanPath!" /grant:r *S-1-5-32-544:f /T /C /Q >nul 2>&1
icacls "!__GDOWN_CleanPath!" /remove:g SYSTEM /inheritance:r /deny "SYSTEM:(OI)(CI)(IO)(F)" /T /C /Q >nul 2>&1
icacls "!__GDOWN_CleanPath!" /remove TrustedInstaller /T /C /Q >nul 2>&1
icacls "!__GDOWN_CleanPath!" /remove "ALL RESTRICTED APPLICATION PACKAGES" /T /C /Q >nul 2>&1
icacls "!__GDOWN_CleanPath!" /remove "ALL APPLICATION PACKAGES" /T /C /Q >nul 2>&1
icacls "!__GDOWN_CleanPath!" /remove "APPLICATION PACKAGE AUTHORITY" /T /C /Q >nul 2>&1
if not defined osHome (
	taskkill /F /IM searchUI.exe >nul 2>&1
	taskkill /F /IM browser_broker.exe >nul 2>&1
	taskkill /F /IM RuntimeBroker.exe >nul 2>&1
	taskkill /F /IM RemindersServer.exe >nul 2>&1
	taskkill /F /IM backgroundTaskHost.exe >nul 2>&1
	taskkill /F /IM msedge.exe >nul 2>&1
	taskkill /F /IM MicrosoftEdge.exe >nul 2>&1
	taskkill /F /IM MicrosoftEdgeCP.exe >nul 2>&1
	taskkill /F /IM MicrosoftEdgeSH.exe >nul 2>&1
	taskkill /F /IM MicrosoftEdgeBCHost.exe >nul 2>&1
) else (
	tskill searchUI /a >nul 2>&1
	tskill browser_broker /a >nul 2>&1
	tskill RuntimeBroker /a >nul 2>&1
	tskill RemindersServer /a >nul 2>&1
	tskill backgroundTaskHost /a >nul 2>&1
	tskill msedge /a >nul 2>&1
	tskill MicrosoftEdge /a >nul 2>&1
	tskill MicrosoftEdgeCP /a >nul 2>&1
	tskill MicrosoftEdgeSH /a >nul 2>&1
	tskill MicrosoftEdgeBCHost /a >nul 2>&1
)
if "%~2"=="-MAKE_BACKUP" ren "!__GDOWN_CleanPath!" "!__GDOWN_TargetFile!.!_BakString!" >nul 2>&1
goto:eof

:GetISODate
set "_ISO_DATE="
for /f "skip=1 tokens=1-3 delims= " %%a in ('wmic path Win32_LocalTime Get Year^,Month^,Day /Format:table') do (
	set "_ISO_DayRaw=%%a"
	set "_ISO_MonthRaw=%%b"
	set "_ISO_YearClean=%%c"
	set /a "_ISO_DayDirty=!_ISO_DayRaw!+100"
	set /a "_ISO_MonthDirty=!_ISO_MonthRaw!+100"
	set "_ISO_DayClean=!_ISO_DayDirty:~-2!" &set "_ISO_MonthClean=!_ISO_MonthDirty:~-2!"
	set "%~1=!_ISO_YearClean!-!_ISO_MonthClean!-!_ISO_DayClean!"
	goto :eof
)

:GetISOTime
set "_ISO_TIME="
for /f "skip=1 tokens=1-3 delims= " %%a in ('wmic path Win32_LocalTime Get Hour^,Minute^,Second /Format:table') do (
	set "_ISO_HHRaw=%%a"
	set "_ISO_MMRaw=%%b"
	set "_ISO_SSRaw=%%c"
	set /a "_ISO_HHDirty=!_ISO_HHRaw!+100" &set /a "_ISO_MMDirty=!_ISO_MMRaw!+100" &set /a "_ISO_SSDirty=!_ISO_SSRaw!+100"
	set "_ISO_HHClean=!_ISO_HHDirty:~-2!" &set "_ISO_MMClean=!_ISO_MMDirty:~-2!" &set "_ISO_SSClean=!_ISO_SSDirty:~-2!"
	set "%~1=!_ISO_HHClean!:!_ISO_MMClean!:!_ISO_SSClean!"
	goto :eof
)

:GetRuntimePath
set "%~1=%~f0"
goto :eof

:GetClean
if defined BlackTemp if exist "!BlackTemp!\" ( echo !BlackTemp! | findstr /ir ".*\\!bird!_temp\>" >nul && (
	set "SysRootTemp=!BlackTemp:\%bird%_temp=!"
	if exist "!BlackTemp!" ( del /F /Q /S "!BlackTemp!\*" >nul 2>&1 & RD /S /Q "!BlackTemp!" >nul 2>&1 )
	if exist "!SysRootTemp!\blackbird-gui.tmp" ( del /F /Q /S "!SysRootTemp!\blackbird-gui.tmp" >nul 2>&1 )
	if exist "!SysRootTemp!\'" ( del /F /Q /S "!SysRootTemp!\'" >nul 2>&1 )
))
set "SysRootTemp=" &goto :eof

:GetElapsedTime
set "__GTIME_NowTime=" &set "__GTIME_BeginTime=" &set "__GTIME_EndTime="
set "__GTIME_ElapsedTime=" &set "__GTIME_RemainsTime=" set "__GTIME_TotalTimeOUTPUT="
set "__GTIME_StartTimeINPUT=%1"
set "__GTIME_StartTimeINPUT=!__GTIME_StartTimeINPUT:"=!"
set "__GTIME_NowTime=!time: =!"
for /F "tokens=1-4 delims=:.," %%a in ("!__GTIME_StartTimeINPUT!") do (
	set /A "__GTIME_BeginTime=(((%%a*60)+1%%b %% 100)*60+1%%c %% 100)*100+1%%d %% 100"
)
for /F "tokens=1-4 delims=:.," %%a in ("!__GTIME_NowTime!") do (
	set /A "__GTIME_EndTime=(((%%a*60)+1%%b %% 100)*60+1%%c %% 100)*100+1%%d %% 100"
)
set /A "__GTIME_ElapsedTime=!__GTIME_EndTime!-!__GTIME_BeginTime!"
set /A "hh=__GTIME_ElapsedTime/(60*60*100), __GTIME_RemainsTime=__GTIME_ElapsedTime%%(60*60*100), mm=__GTIME_RemainsTime/(60*100), __GTIME_RemainsTime%%=60*100, ss=__GTIME_RemainsTime/100, cc=__GTIME_RemainsTime%%100"
if !hh! LSS 10 set hh=0!hh!
if !mm! LSS 10 set mm=0!mm!
if !ss! LSS 10 set ss=0!ss!
if !cc! LSS 10 set cc=0!cc!
set "__GTIME_TotalTimeOUTPUT=!hh!h !mm!m !ss!s !cc!ms"
if "!hh!" == "00" set "__GTIME_TotalTimeOUTPUT=!mm!m !ss!s !cc!ms"
if "!mm!" == "00" set "__GTIME_TotalTimeOUTPUT=!ss!s !cc!ms"
if defined __GTIME_TotalTimeOUTPUT set "%2=!__GTIME_TotalTimeOUTPUT!"
goto:eof

:GetFileSize
set "__GFS_SizeRAW=" &set "__GFS_Lead=" &set "__GFS_Trail="
set "__GFS_SizeRAW=%~z1"
set /a "__GFS_Lead=!__GFS_SizeRAW!/1024"
set /a "__GFS_Trail=!__GFS_SizeRAW!%%1024"
set "%~2=!__GFS_Lead!"
set "%~3=!__GFS_Trail!"
goto:eof

:GetLastString
set __GLS_Result=
set "__GLS_STRING=%1"
set "__GLS_STRING=!__GLS_STRING:"=!"
:GetLastStringLoop
for /F "delims=\ tokens=1*" %%y in ( "!__GLS_STRING!" ) do (
	set __GLS_Result=%%y
	set __GLS_STRING=%%z
	goto GetLastStringLoop
)
set "%2=!__GLS_Result!"
goto:eof

:GetSwitchCount
set /a _BirdSwitch_RAWCounter=0
:GetSwitchCountLoop
if %1.==. goto :eof
set /a _BirdSwitch_RAWCounter+=1
set "_BirdSwitch_RAWFLAG!_BirdSwitch_RAWCounter!=%1"
shift
goto GetSwitchCountLoop

:StringCalc
(
	setlocal EnableDelayedExpansion
	set "_StringCounter=!%~1!#"
	set "_StringLength=0"
	if "%2"=="_BDSh_Result" (
		set _StringCounter=
		set "_StringCalc_SCAwareIN=%1"
		set "_StringCalc_SCAwareIN=!_StringCalc_SCAwareIN:"=!"
		set "_StringCounter=!_StringCalc_SCAwareIN!"
	)
	if "%3"=="-SCharAware" (
		set _StringCounter=
		set "_StringCalc_SCAwareIN=%1"
		set "_StringCalc_SCAwareIN=!_StringCalc_SCAwareIN:"=!"
		set "_StringCounter=!_StringCalc_SCAwareIN!"
	)
	for %%q in (4096 2048 1024 512 256 128 64 32 16 8 4 2 1) do (
		if "!_StringCounter:~%%q,1!" NEQ "" ( 
			set /a "_StringLength+=%%q"
			set "_StringCounter=!_StringCounter:~%%q!"
)))
(
	endlocal
	set "%~2=%_StringLength%"
	goto :eof
)

:Dec2Hex
rem ### call :Dec2Hex !_DecimalValue! HexValue
set "DecValue=" &set "_DecValue=" &set "_HexString=" &set "_HexPrefix="
set "__D2C_HexA=" &set "__D2C_HexB=" &set "_HexValue=" &set "_HexTable=0123456789abcdef"
set "_DecValue=%1"
set _DecValue=!_DecValue:"=!
if !_DecValue! geq 4294967295 (
	set "_HexValue=0xffffffff"
	set "%2=!_HexValue!"
	goto:eof
)
if [!_DecValue!]==[] (
	set "_HexValue=0"
	set "%2=!_HexValue!"
	goto:eof
)
set /a "__D2C_HexA=!_DecValue!" || exit /b 1
if !__D2C_HexA! lss 0 ( set /a "__D2C_HexA=0xfffffff+!__D2C_HexA!+1" &set "_HexPrefix=f" )
:Dec2HexLoop
set /a "__D2C_HexB=!__D2C_HexA! %% 16" &set /a "__D2C_HexA=!__D2C_HexA! / 16"
set "_HexString=!_HexTable:~%__D2C_HexB%,1!%_HexString%"
if !__D2C_HexA! gtr 0 goto :Dec2HexLoop
if "%2"=="_BDSh_Result" (set "_HexValue=0x!_HexPrefix!!_HexString!") else (set "_HexValue=!_HexPrefix!!_HexString!")
set "%2=!_HexValue!"
goto:eof

rem ### call :Hex2Dec !_HexValue! DecValue
:Hex2Dec
set "DecValue=" &set "_DecValue=" &set "_HexValue="
set "_HexValue=%1"
set "_HexValue=!_HexValue:"=!"
set "_HexValue=!_HexValue:0x=!"
rem if "%2"=="_BDSh_Result" set "_HexValue=!_HexValue:0x=!"
set /A "_DecValue=0x!_HexValue!"
if "!_DecValue!"=="-1" (set "_DecValue=4294967295")
set "%2=!_DecValue!"
goto:eof

rem  [ Fatality ]
:ERROR_SYSPATH
echo 
<nul set /p ="[!] Blackbird FATAL ERROR >>> Invalid system environment variable."&echo.
echo [DEBUG_INFO: PATH variable is corrupted.]
if not defined _flag-s pause>nul
goto :eof
:ERROR_NOADMIN
echo 
<nul set /p ="[!] Blackbird FATAL ERROR >>> Access denied."&echo.
echo [DEBUG_INFO: Administrator user rights required.]
if not defined _flag-s pause>nul
goto :eof
:ERROR_NOEXTENSIONS
echo 
<nul set /p ="[!] Blackbird FATAL ERROR >>> Cannot enable extensions."&echo.
if not defined _flag-s pause>nul
goto :eof
:ERROR_NOCOLS
echo 
call :GUI !_BC_E!!_BC_H! " ["
<nul set /p ="^!"&call :GUI !_BC_E!!_BC_H! "] "&call :GUI 0f "Blackbird FATAL ERROR"&call :GUI !_BC_E!!_BC_H! " >>> "&call :GUI 0f "Invalid console session size." /n
echo  [DEBUG_INFO: Requires at least 80 column buffer width.]
call :GetClean
if not defined _flag-s pause>nul
goto :eof
:ERROR_NOVAR
echo 
call :GUI !_BC_E!!_BC_H! " ["
<nul set /p ="^!"&call :GUI !_BC_E!!_BC_H! "] "&call :GUI 0f "Blackbird FATAL ERROR"&call :GUI !_BC_E!!_BC_H! " >>> "&call :GUI 0f "Unable to set system variable." /n
if defined ERROR_NOVAR_VALUE ( echo  [DEBUG_INFO: !ERROR_NOVAR_VALUE! ] &set "ERROR_NOVAR_VALUE=" )
call :GetClean
if not defined _flag-s pause>nul
goto :eof
:ERROR_NOUSER
echo 
call :GUI !_BC_E!!_BC_H! " ["
<nul set /p ="^!"&call :GUI !_BC_E!!_BC_H! "] "&call :GUI 0f "Blackbird FATAL ERROR"&call :GUI !_BC_E!!_BC_H! " >>> "&call :GUI 0f "Unable to define session username." /n
call :GetClean
if not defined _flag-s pause>nul
goto :eof
:ERROR_NOBACKUP
echo 
call :GUI !_BC_E!!_BC_H! " ["
<nul set /p ="^!"&call :GUI !_BC_E!!_BC_H! "] "&call :GUI 0f "Blackbird FATAL ERROR"&call :GUI !_BC_E!!_BC_H! " >>> "&call :GUI 0f "Cannot create backup file." /n
if defined ERROR_NOBACKUP_VALUE ( echo  [DEBUG_INFO: "!ERROR_NOBACKUP_VALUE!"] &set "ERROR_NOBACKUP_VALUE=" )
call :GetClean
if not defined _flag-s pause>nul
goto :eof
:ERROR_NOXCOPY
echo 
call :GUI !_BC_E!!_BC_H! " ["
<nul set /p ="^!"&call :GUI !_BC_E!!_BC_H! "] "&call :GUI 0f "Blackbird FATAL ERROR"&call :GUI !_BC_E!!_BC_H! " >>> "&call :GUI 0f "Initialization failed." /n
echo  [DEBUG_INFO: "!systemroot!\system32\Xcopy.exe" not found]
call :GetClean
if not defined _flag-s pause>nul
goto :eof
:ERROR_NOPATH
echo 
call :GUI !_BC_E!!_BC_H! " ["
<nul set /p ="^!"&call :GUI !_BC_E!!_BC_H! "] "&call :GUI 0f "Blackbird FATAL ERROR"&call :GUI !_BC_E!!_BC_H! " >>> "&call :GUI 0f "Cannot access filepath." /n
if defined ERROR_NOPATH_VALUE ( echo  [DEBUG_INFO: "!ERROR_NOPATH_VALUE!"] &set "ERROR_NOPATH_VALUE=" )
call :GetClean
if not defined _flag-s pause>nul
goto :eof
:ERROR_NOTEMP
set "_ErrorSeverity="
if /i "%~1"=="_Soft" ( echo. ) else ( set "_ErrorSeverity=FATAL " &echo  )
call :GUI !_BC_E!!_BC_H! " ["
<nul set /p ="^!"&call :GUI !_BC_E!!_BC_H! "] "&call :GUI 0f "Blackbird !_ErrorSeverity!ERROR" &call :GUI !_BC_E!!_BC_H! " >>> "&call :GUI 0f "Cannot create temporary files." /n
if defined ERROR_NOTEMP_VALUE ( echo  [DEBUG_INFO: "!ERROR_NOTEMP_VALUE!"] &set "ERROR_NOTEMP_VALUE=" )
if defined _ErrorSeverity (
	call :GetClean
	if not defined _flag-s pause>nul
)
goto :eof
:ERROR_FileOpsFail
set "ERROR_FileOpsFail_VALUE=%~1" &set "ERROR_FileOpsFail_VALUE=!ERROR_FileOpsFail_VALUE:"=!"
echo. &call :GUI !_BC_E!!_BC_H! " ["
<nul set /p ="^!"&call :GUI !_BC_E!!_BC_H! "] "&call :GUI 0f "Blackbird ERROR"&call :GUI !_BC_E!!_BC_H! " >>> "&call :GUI 0f "Unable to perform file changes." /n
if defined ERROR_FileOpsFail_VALUE ( echo  [DEBUG_INFO: "!ERROR_FileOpsFail_VALUE!"] &set "ERROR_FileOpsFail_VALUE=" )
goto :eof
:ERROR_NetNoMetric
echo. &call :GUI !_BC_E!!_BC_H! " ["
<nul set /p ="^!"&call :GUI !_BC_E!!_BC_H! "] "&call :GUI 0f "Blackbird ERROR"&call :GUI !_BC_E!!_BC_H! " >>> "&call :GUI 0f "Cannot obtain valid metric value." /n
goto :eof
:ERROR_NetNoInterface
echo. &call :GUI !_BC_E!!_BC_H! " ["
<nul set /p ="^!"&call :GUI !_BC_E!!_BC_H! "] "&call :GUI 0f "Blackbird ERROR"&call :GUI !_BC_E!!_BC_H! " >>> "&call :GUI 0f "Cannot obtain valid network interface list." /n
goto :eof
:ERROR_NetNoResolving
echo. &call :GUI !_BC_E!!_BC_H! " ["
<nul set /p ="^!"&call :GUI !_BC_E!!_BC_H! "] "&call :GUI 0f "Blackbird ERROR"&call :GUI !_BC_E!!_BC_H! " >>> "&call :GUI 0f "Unable to properly resolve hostnames." /n
goto :eof
:ERROR_NetNoExternalHosts
set "ERROR_NetNoExternalHosts_VALUE=%~1" &set "ERROR_NetNoExternalHosts_VALUE=!ERROR_NetNoExternalHosts_VALUE:"=!"
echo. &call :GUI !_BC_E!!_BC_H! " ["
<nul set /p ="^!"&call :GUI !_BC_E!!_BC_H! "] "&call :GUI 0f "Blackbird ERROR"&call :GUI !_BC_E!!_BC_H! " >>> "&call :GUI 0f "External host file not found." /n
if defined ERROR_NetNoExternalHosts_VALUE ( echo  [DEBUG_INFO: "!ERROR_NetNoExternalHosts_VALUE!"] &set "ERROR_NetNoExternalHosts_VALUE=" )
goto :eof
:ERROR_KbNoExternalUpdates
set "ERROR_KbNoExternalUpdates_VALUE=%~1" &set "ERROR_KbNoExternalUpdates_VALUE=!ERROR_KbNoExternalUpdates_VALUE:"=!"
echo. &call :GUI !_BC_E!!_BC_H! " ["
<nul set /p ="^!"&call :GUI !_BC_E!!_BC_H! "] "&call :GUI 0f "Blackbird ERROR"&call :GUI !_BC_E!!_BC_H! " >>> "&call :GUI 0f "External update file not found." /n
if defined ERROR_KbNoExternalUpdates_VALUE ( echo  [DEBUG_INFO: "!ERROR_KbNoExternalUpdates_VALUE!"] &set "ERROR_KbNoExternalUpdates_VALUE=" )
goto :eof
:ERROR_KbNoHideScript
echo. &call :GUI !_BC_E!!_BC_H! " ["
<nul set /p ="^!"&call :GUI !_BC_E!!_BC_H! "] "&call :GUI 0f "Blackbird ERROR"&call :GUI !_BC_E!!_BC_H! " >>> "&call :GUI 0f "Unable to generate script file." /n
goto :eof
:ERROR_RecNoExternalBackup
echo 
call :GUI !_BC_E!!_BC_H! " ["
<nul set /p ="^!"&call :GUI !_BC_E!!_BC_H! "] "&call :GUI 0f "Blackbird FATAL ERROR"&call :GUI !_BC_E!!_BC_H! " >>> "&call :GUI 0f "Cannot access backup file." /n
if defined ERROR_RecNoExternalBackup_VALUE ( echo  [DEBUG_INFO: "!ERROR_RecNoExternalBackup_VALUE!"] &set "ERROR_RecNoExternalBackup_VALUE=" )
call :GetClean
if not defined _flag-s pause>nul
goto :eof
:ERROR_RecInvalidBakCfg
echo 
call :GUI !_BC_E!!_BC_H! " ["
<nul set /p ="^!"&call :GUI !_BC_E!!_BC_H! "] "&call :GUI 0f "Blackbird FATAL ERROR"&call :GUI !_BC_E!!_BC_H! " >>> "&call :GUI 0f "Invalid backup file configuration." /n
if /i "%~1"=="_WINVER" ( echo  [DEBUG_INFO: No Windows version compatibility set - "WINVER#*#" ] )
if /i "%~1"=="_BIRDVER" ( echo  [DEBUG_INFO: No Blackbird version compatibility set - "BIRDVER#*#" ] )
goto :eof

:GUI_DrawPointPB
set __GUI_PointPB_Plus=
set __GUI_PointPB_PlusDIF=
set "__GUI_PointPB_Plus=%1"
set "__GUI_PointPB_PlusDIF=%2"
set /a _BackupMode_ProgressOrientationPoint=!_BackupMode_ProgressOrientationPoint_DIF!+!__GUI_PointPB_Plus!
set /a _BackupMode_ProgressOrientationPoint_DIF=!_BackupMode_ProgressOrientationPoint!+!__GUI_PointPB_PlusDIF!
call :drawProgressBar !_BackupMode_ProgressOrientationPoint! -scan_mode
for /l %%f in (!_BackupMode_ProgressOrientationPoint! 1 !_BackupMode_ProgressOrientationPoint_DIF!) do ( call :drawProgressBar %%f -scan_mode )
goto:eof

:GUI
setlocal EnableDelayedExpansion
:BlackGUI
setlocal
set "s=%~2"
call :BlackGUIsub %1 s %3
exit /b
:BlackGUIsub
if not defined DEL call :initBlackGUI
setlocal enableDelayedExpansion
pushd .
':
cd \
set "s=!%~2!"
for %%n in (^"^

^") do (
	set "s=!s:\=%%~n\%%~n!"
	set "s=!s:/=%%~n/%%~n!"
	set "s=!s::=%%~n:%%~n!"
)
for /f delims^=^ eol^= %%s in ("!s!") do (
	if "!" equ "" setlocal disableDelayedExpansion
	if %%s==\ (
		findstr /a:%~1 "." "\'" nul
		<nul set /p "=%DEL%%DEL%%DEL%"
	) else if %%s==/ (
		findstr /a:%~1 "." "/.\'" nul
		<nul set /p "=%DEL%%DEL%%DEL%%DEL%%DEL%"
	) else (
		>%temp%\blackbird-gui.tmp (echo %%s\..\')
		findstr /a:%~1 /f:%temp%\blackbird-gui.tmp "."
		<nul set /p "=%DEL%%DEL%%DEL%%DEL%%DEL%%DEL%%DEL%"
))
if /i "%~3"=="/n" echo(
popd
exit /b
:initBlackGUI
for /f %%A in ('"prompt $H&for %%B in (1) do rem"') do set "DEL=%%A %%A"
<nul >"%temp%\'" set /p "=."
subst ': "%temp%" >nul
exit /b
:GUIcleanupBlackGUI
2>nul del "%temp%\'"
2>nul del "%temp%\blackbird-gui.tmp"
>nul subst ': /d
exit /b
:drawProgressBar
if "%~1"=="" goto :eof
set "pb_nullspace=  "
if "%~2"=="-scan_mode" set "pb_nullspace=  "
if "%~3"=="-scan_mode" set "pb_nullspace=  "
if not defined pb.barArea call :initProgressBar
setlocal enableextensions enabledelayedexpansion
set /a "pb.value=%~1 %% 101", "pb.filled=pb.value*pb.barArea/100", "pb.dotted=pb.barArea-pb.filled", "pb.pct=1000+pb.value"
set "pb.pct=%pb.pct:~-3%"
if "%~2"=="" ( set "pb.text=" ) else ( 
	set "pb.text=%~2%pb.back%" 
	set "pb.text=!pb.text:~0,%pb.textArea%!"
)
if "%~2"=="-scan_mode" set "pb.text="
<nul set /p "pb.prompt=.!BS!!pb_nullspace![!pb.fill:~0,%pb.filled%!!pb.dots:~0,%pb.dotted%!] !BS! [ %pb.pct% %% ] %pb.text%!pb.cr!"
endlocal
goto :eof
:initProgressBar
if defined pb.cr call :finalizeProgressBar
for /f %%a in ('copy "%~f0" nul /z') do set "pb.cr=%%a"
if "%~1"=="" ( set "pb.fillChar=#" ) else ( set "pb.fillChar=%~1" )
if "%~2"=="" ( set "pb.dotChar=." ) else ( set "pb.dotChar=%~2" )
if "%~3"=="-scan_mode" (
	set "pb.console.columns=122"
	set /a "  pb.barArea=pb.console.columns/2-2", "pb.textArea=pb.barArea-1" 
) else (
	set "pb.console.columns=100"
	set /a "  pb.barArea=pb.console.columns/3-3", "pb.textArea=pb.barArea-1"
)
if "%~3"=="-scan_mode_widedisp" (
	set "pb.console.columns=202"
	set /a "  pb.barArea=pb.console.columns/2-2", "pb.textArea=pb.barArea-1" 
)
set "pb.fill="
setlocal enableextensions enabledelayedexpansion
for /l %%p in (1 1 %pb.barArea%) do set "pb.fill=!pb.fill!%pb.fillChar%"
set "pb.fill=!pb.fill:~0,%pb.barArea%!"
set "pb.dots=!pb.fill:%pb.fillChar%=%pb.dotChar%!"
set "pb.back=!pb.fill:~0,%pb.textArea%!
set "pb.back=!pb.back:%pb.fillChar%= !"
endlocal & (set "pb.fill=%pb.fill%" & set "pb.dots=%pb.dots%" & set "pb.back=%pb.back%")
goto :eof
:finalizeProgressBar
if defined pb.cr (
	if not "%~1"=="" (
		setlocal enabledelayedexpansion
		set "pb.back="
		for /l %%p in (1 1 %pb.console.columns%) do set "pb.back=!pb.back! "
		<nul set /p "pb.prompt=!pb.cr!!pb.back:~1!!pb.cr!"
		endlocal
))
for /f "tokens=1 delims==" %%v in ('set pb.') do set "%%v="
goto :eof