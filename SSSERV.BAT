@echo off
:choice2
echo.
echo MeKLiN Method service disabler.
echo.
set /P c=Press key [1/2/3/4/5/6] to disable services. key [0] disable all, [N] exit, [X] fix watermark
echo.
if /I "%c%" EQU "1" goto :serv
if /I "%c%" EQU "2" goto :serv2
if /I "%c%" EQU "3" goto :serv3
if /I "%c%" EQU "4" goto :serv4
if /I "%c%" EQU "5" goto :serv5
if /I "%c%" EQU "6" goto :serv6
if /I "%c%" EQU "0" goto :serv7
if /I "%c%" EQU "X" goto :mark
if /I "%c%" EQU "N" goto :end
goto :choice2
:serv
reg add hklm\system\controlset001\services\mvumis /v "Start" /t REG_DWORD /d 4 /f
reg add hklm\system\controlset001\services\kbldfltr /v "Start" /t REG_DWORD /d 4 /f
reg add hklm\system\controlset001\services\dam /v "Start" /t REG_DWORD /d 4 /f
reg add hklm\system\controlset001\services\wcnfs /v "Start" /t REG_DWORD /d 4 /f
reg add hklm\system\controlset001\services\vds /v "Start" /t REG_DWORD /d 4 /f
reg add hklm\system\controlset001\services\ipt /v "Start" /t REG_DWORD /d 4 /f
reg add hklm\system\controlset001\services\afunix /v "Start" /t REG_DWORD /d 4 /f
reg add hklm\system\controlset001\services\cimfs /v "Start" /t REG_DWORD /d 4 /f
reg add hklm\system\controlset001\services\storqosflt /v "Start" /t REG_DWORD /d 4 /f
reg add hklm\system\controlset001\services\iphlpsvc /v "Start" /t REG_DWORD /d 4 /f
reg add hklm\system\controlset001\services\mslldp /v "Start" /t REG_DWORD /d 4 /f
reg add hklm\system\controlset001\services\ufxchipidea /v "Start" /t REG_DWORD /d 4 /f
reg add hklm\system\controlset001\services\wpnuserservice /v "Start" /t REG_DWORD /d 4 /f
reg add hklm\system\controlset001\services\bthavctpsvc /v "Start" /t REG_DWORD /d 4 /f
reg add hklm\system\controlset001\services\wlidsvc /v "Start" /t REG_DWORD /d 4 /f
reg add hklm\system\controlset001\services\amdxe /v "Start" /t REG_DWORD /d 4 /f
reg add hklm\system\controlset001\services\portcfg /v "Start" /t REG_DWORD /d 4 /f
reg add hklm\system\controlset001\services\itsas35i /v "Start" /t REG_DWORD /d 4 /f
echo Service group 1 disabled.
pause
goto :choice2

:serv2
reg add hklm\system\controlset001\services\ialpss2i_gpio2_glk /v "Start" /t REG_DWORD /d 4 /f
reg add hklm\system\controlset001\services\licensemanager /v "Start" /t REG_DWORD /d 4 /f
reg add hklm\system\controlset001\services\wcifs /v "Start" /t REG_DWORD /d 4 /f
reg add hklm\system\controlset001\services\appxsvc /v "Start" /t REG_DWORD /d 4 /f
reg add hklm\system\controlset001\services\megasas /v "Start" /t REG_DWORD /d 4 /f
reg add hklm\system\controlset001\services\urschipidea /v "Start" /t REG_DWORD /d 4 /f
reg add hklm\system\controlset001\services\bttflt /v "Start" /t REG_DWORD /d 4 /f
reg add hklm\system\controlset001\services\intelpmax /v "Start" /t REG_DWORD /d 4 /f
reg add hklm\system\controlset001\services\bluetoothuserservice_1a6b3 /v "Start" /t REG_DWORD /d 4 /f
reg add hklm\system\controlset001\services\unistoresvc_1a6b3 /v "Start" /t REG_DWORD /d 4 /f
reg add hklm\system\controlset001\services\devicesflowusersvc /v "Start" /t REG_DWORD /d 4 /f
reg add hklm\system\controlset001\services\dmwappushservice /v "Start" /t REG_DWORD /d 4 /f
reg add hklm\system\controlset001\services\sisraid2 /v "Start" /t REG_DWORD /d 4 /f
reg add hklm\system\controlset001\services\smsrouter /v "Start" /t REG_DWORD /d 4 /f
reg add hklm\system\controlset001\services\cdpusersvc_1a6b3 /v "Start" /t REG_DWORD /d 4 /f
reg add hklm\system\controlset001\services\devicepickerusersvc_1a6b3 /v "Start" /t REG_DWORD /d 4 /f
reg add hklm\system\controlset001\services\tsusbgd /v "Start" /t REG_DWORD /d 4 /f
reg add hklm\system\controlset001\services\acx01000 /v "Start" /t REG_DWORD /d 4 /f
reg add hklm\system\controlset001\services\lsi_sas3i /v "Start" /t REG_DWORD /d 4 /f
reg add hklm\system\controlset001\services\aarsvc_1a6b3 /v "Start" /t REG_DWORD /d 4 /f
reg add hklm\system\controlset001\services\warpjitsvc /v "Start" /t REG_DWORD /d 4 /f
reg add hklm\system\controlset001\services\bthmini /v "Start" /t REG_DWORD /d 4 /f
reg add hklm\system\controlset001\services\cldflt /v "Start" /t REG_DWORD /d 4 /f
reg add hklm\system\controlset001\services\sisraid2 /v "Start" /t REG_DWORD /d 4 /f
echo Service group 2 disabled.
pause
goto :choice2

:serv3
reg add hklm\system\controlset001\services\cdpusersvc_1aab8 /v "Start" /t REG_DWORD /d 4 /f
reg add hklm\system\controlset001\services\deviceassociationbrokervc_1aab8 /v "Start" /t REG_DWORD /d 4 /f
reg add hklm\system\controlset001\services\gpuenergydrv /v "Start" /t REG_DWORD /d 4 /f
reg add hklm\system\controlset001\services\devicepickerusersvc /v "Start" /t REG_DWORD /d 4 /f
reg add hklm\system\controlset001\services\wfdsconmgrsvc /v "Start" /t REG_DWORD /d 4 /f
reg add hklm\system\controlset001\services\megasas /v "Start" /t REG_DWORD /d 4 /f
reg add hklm\system\controlset001\services\sharedaccess /v "Start" /t REG_DWORD /d 4 /f
reg add hklm\system\controlset001\services\filecrypt /v "Start" /t REG_DWORD /d 4 /f
reg add hklm\system\controlset001\services\bttflt /v "Start" /t REG_DWORD /d 4 /f
reg add hklm\system\controlset001\services\itsas35i /v "Start" /t REG_DWORD /d 4 /f
reg add hklm\system\controlset001\services\mbbcx /v "Start" /t REG_DWORD /d 4 /f
reg add hklm\system\controlset001\services\tpm /v "Start" /t REG_DWORD /d 4 /f
reg add hklm\system\controlset001\services\sensorservice /v "Start" /t REG_DWORD /d 4 /f
reg add hklm\system\controlset001\services\bthenum /v "Start" /t REG_DWORD /d 4 /f
reg add hklm\system\controlset001\services\3ware /v "Start" /t REG_DWORD /d 4 /f
reg add hklm\system\controlset001\services\wdiwifi /v "Start" /t REG_DWORD /d 4 /f
reg add hklm\system\controlset001\services\mvumis /v "Start" /t REG_DWORD /d 4 /f
reg add hklm\system\controlset001\services\hidspi /v "Start" /t REG_DWORD /d 4 /f
reg add hklm\system\controlset001\services\printworkflowusersvc_1aab8 /v "Start" /t REG_DWORD /d 4 /f
reg add hklm\system\controlset001\services\ndkping /v "Start" /t REG_DWORD /d 4 /f
reg add hklm\system\controlset001\services\iagpio /v "Start" /t REG_DWORD /d 4 /f
reg add hklm\system\controlset001\services\ialpssi_gpio /v "Start" /t REG_DWORD /d 4 /f
reg add hklm\system\controlset001\services\vwifibus /v "Start" /t REG_DWORD /d 4 /f
reg add hklm\system\controlset001\services\ialpss2i_i2c /v "Start" /t REG_DWORD /d 4 /f
echo Service group 3 disabled.
pause
goto :choice2

:serv4

reg add hklm\system\controlset001\services\buttonconverter /v "Start" /t REG_DWORD /d 4 /f
reg add hklm\system\controlset001\services\userdatasvc_1aab8 /v "Start" /t REG_DWORD /d 4 /f
reg add hklm\system\controlset001\services\arcsas /v "Start" /t REG_DWORD /d 4 /f
reg add hklm\system\controlset001\services\dnscache /v "Start" /t REG_DWORD /d 4 /f
reg add hklm\system\controlset001\services\wersvc /v "Start" /t REG_DWORD /d 4 /f
reg add hklm\system\controlset001\services\ndisimplatform /v "Start" /t REG_DWORD /d 4 /f
reg add hklm\system\controlset001\services\tsusbflt /v "Start" /t REG_DWORD /d 4 /f
reg add hklm\system\controlset001\services\netadaptercx /v "Start" /t REG_DWORD /d 4 /f
reg add hklm\system\controlset001\services\ndiswanlegacy /v "Start" /t REG_DWORD /d 4 /f
reg add hklm\system\controlset001\services\aarsvc_193cb /v "Start" /t REG_DWORD /d 4 /f
reg add hklm\system\controlset001\services\BluetoothUserService_193cb /v "Start" /t REG_DWORD /d 4 /f
reg add hklm\system\controlset001\services\BluetoothUserService /v "Start" /t REG_DWORD /d 4 /f
reg add hklm\system\controlset001\services\MsSecWfp /v "Start" /t REG_DWORD /d 4 /f
reg add hklm\system\controlset001\services\BTAGService /v "Start" /t REG_DWORD /d 4 /f
reg add hklm\system\controlset001\services\msquic /v "Start" /t REG_DWORD /d 4 /f
reg add hklm\system\controlset001\services\BthA2dp /v "Start" /t REG_DWORD /d 4 /f
reg add hklm\system\controlset001\services\nvstor /v "Start" /t REG_DWORD /d 4 /f
reg add hklm\system\controlset001\services\nvraid /v "Start" /t REG_DWORD /d 4 /f
reg add hklm\system\controlset001\services\nvdimm /v "Start" /t REG_DWORD /d 4 /f
reg add hklm\system\controlset001\services\autotimesvc /v "Start" /t REG_DWORD /d 4 /f
reg add hklm\system\controlset001\services\mshidumdf /v "Start" /t REG_DWORD /d 4 /f
reg add hklm\system\controlset001\services\msgpiowin32 /v "Start" /t REG_DWORD /d 4 /f
echo Service group 4 disabled.
pause
goto :choice2

:serv5

reg add hklm\system\controlset001\services\BthHFEnum /v "Start" /t REG_DWORD /d 4 /f
reg add hklm\system\controlset001\services\percsas2i /v "Start" /t REG_DWORD /d 4 /f
reg add hklm\system\controlset001\services\MsBridge /v "Start" /t REG_DWORD /d 4 /f
reg add hklm\system\controlset001\services\percsas3i /v "Start" /t REG_DWORD /d 4 /f
reg add hklm\system\controlset001\services\PktMon /v "Start" /t REG_DWORD /d 4 /f
reg add hklm\system\controlset001\services\pmem /v "Start" /t REG_DWORD /d 4 /f
reg add hklm\system\controlset001\services\WManSvc /v "Start" /t REG_DWORD /d 4 /f
reg add hklm\system\controlset001\services\PrintNotify /v "Start" /t REG_DWORD /d 4 /f
reg add hklm\system\controlset001\services\Microsoft_Bluetooth_AvrcpTransport /v "Start" /t REG_DWORD /d 4 /f
reg add hklm\system\controlset001\services\megasr /v "Start" /t REG_DWORD /d 4 /f
reg add hklm\system\controlset001\services\megasas35i /v "Start" /t REG_DWORD /d 4 /f
reg add hklm\system\controlset001\services\megasas2i /v "Start" /t REG_DWORD /d 4 /f
reg add hklm\system\controlset001\services\megasas /v "Start" /t REG_DWORD /d 4 /f
reg add hklm\system\controlset001\services\McpManagementService /v "Start" /t REG_DWORD /d 4 /f
reg add hklm\system\controlset001\services\PrintWorkflowUserSvc /v "Start" /t REG_DWORD /d 4 /f
reg add hklm\system\controlset001\services\mausbip /v "Start" /t REG_DWORD /d 4 /f
reg add hklm\system\controlset001\services\mausbhost /v "Start" /t REG_DWORD /d 4 /f
reg add hklm\system\controlset001\services\PrintWorkflowUserSvc_193cb /v "Start" /t REG_DWORD /d 4 /f
reg add hklm\system\controlset001\services\LSI_SSS /v "Start" /t REG_DWORD /d 4 /f
reg add hklm\system\controlset001\services\LSI_SAS3i /v "Start" /t REG_DWORD /d 4 /f
reg add hklm\system\controlset001\services\LSI_SAS2i /v "Start" /t REG_DWORD /d 4 /f
reg add hklm\system\controlset001\services\LSI_SAS /v "Start" /t REG_DWORD /d 4 /f
reg add hklm\system\controlset001\services\Ramdisk /v "Start" /t REG_DWORD /d 4 /f
reg add hklm\system\controlset001\services\RemoteAccess /v "Start" /t REG_DWORD /d 4 /f
reg add hklm\system\controlset001\services\RFCOMM /v "Start" /t REG_DWORD /d 4 /f
reg add hklm\system\controlset001\services\sbp2port /v "Start" /t REG_DWORD /d 4 /f
reg add hklm\system\controlset001\services\BthLEEnum /v "Start" /t REG_DWORD /d 4 /f
echo Service group 5 disabled.
pause
goto :choice2

:serv6

reg add hklm\system\controlset001\services\SensorDataService /v "Start" /t REG_DWORD /d 4 /f
reg add hklm\system\controlset001\services\IpxlatCfgSvc /v "Start" /t REG_DWORD /d 4 /f
reg add hklm\system\controlset001\services\ItSas35i /v "Start" /t REG_DWORD /d 4 /f
reg add hklm\system\controlset001\services\SerCx /v "Start" /t REG_DWORD /d 4 /f
reg add hklm\system\controlset001\services\SerCx2 /v "Start" /t REG_DWORD /d 4 /f
reg add hklm\system\controlset001\services\WEPHOSTSVC /v "Start" /t REG_DWORD /d 4 /f
reg add hklm\system\controlset001\services\SiSRaid2 /v "Start" /t REG_DWORD /d 4 /f
reg add hklm\system\controlset001\services\SiSRaid4 /v "Start" /t REG_DWORD /d 4 /f
reg add hklm\system\controlset001\services\SmartSAMD /v "Start" /t REG_DWORD /d 4 /f
reg add hklm\system\controlset001\services\IndirectKmd /v "Start" /t REG_DWORD /d 4 /f
reg add hklm\system\controlset001\services\spaceparser /v "Start" /t REG_DWORD /d 4 /f
reg add hklm\system\controlset001\services\icssvc /v "Start" /t REG_DWORD /d 4 /f
reg add hklm\system\controlset001\services\iaLPSSi_I2C /v "Start" /t REG_DWORD /d 4 /f
reg add hklm\system\controlset001\services\spectrum /v "Start" /t REG_DWORD /d 4 /f
reg add hklm\system\controlset001\services\iaLPSS2i_I2C_BXT_P /v "Start" /t REG_DWORD /d 4 /f
reg add hklm\system\controlset001\services\iaLPSS2i_I2C_CNL v2 /v "Start" /t REG_DWORD /d 4 /f
reg add hklm\system\controlset001\services\iaLPSS2i_I2C_GLK /v "Start" /t REG_DWORD /d 4 /f
reg add hklm\system\controlset001\services\iaLPSS2i_GPIO2_CNL /v "Start" /t REG_DWORD /d 4 /f
reg add hklm\system\controlset001\services\iaLPSS2i_GPIO2_BXT_P /v "Start" /t REG_DWORD /d 4 /f
reg add hklm\system\controlset001\services\iaLPSS2i_GPIO2 /v "Start" /t REG_DWORD /d 4 /f
reg add hklm\system\controlset001\services\iai2c /v "Start" /t REG_DWORD /d 4 /f
reg add hklm\system\controlset001\services\BTHPORT /v "Start" /t REG_DWORD /d 4 /f
reg add hklm\system\controlset001\services\HwNClx0101 /v "Start" /t REG_DWORD /d 4 /f
reg add hklm\system\controlset001\services\HpSAMD /v "Start" /t REG_DWORD /d 4 /f
reg add hklm\system\controlset001\services\hidinterrupt /v "Start" /t REG_DWORD /d 4 /f
reg add hklm\system\controlset001\services\storufs /v "Start" /t REG_DWORD /d 4 /f
reg add hklm\system\controlset001\services\stornvme /v "Start" /t REG_DWORD /d 4 /f
reg add hklm\system\controlset001\services\hidi2c /v "Start" /t REG_DWORD /d 4 /f
reg add hklm\system\controlset001\services\AarSvc /v "Start" /t REG_DWORD /d 4 /f
reg add hklm\system\controlset001\services\terminpt /v "Start" /t REG_DWORD /d 4 /f
reg add hklm\system\controlset001\services\GraphicsPerfSvc /v "Start" /t REG_DWORD /d 4 /f
echo Service group 6 disabled.
pause
goto :choice2

:serv7
reg add hklm\system\controlset001\services\mvumis /v "Start" /t REG_DWORD /d 4 /f
reg add hklm\system\controlset001\services\kbldfltr /v "Start" /t REG_DWORD /d 4 /f
reg add hklm\system\controlset001\services\dam /v "Start" /t REG_DWORD /d 4 /f
reg add hklm\system\controlset001\services\wcnfs /v "Start" /t REG_DWORD /d 4 /f
reg add hklm\system\controlset001\services\vds /v "Start" /t REG_DWORD /d 4 /f
reg add hklm\system\controlset001\services\ipt /v "Start" /t REG_DWORD /d 4 /f
reg add hklm\system\controlset001\services\afunix /v "Start" /t REG_DWORD /d 4 /f
reg add hklm\system\controlset001\services\cimfs /v "Start" /t REG_DWORD /d 4 /f
reg add hklm\system\controlset001\services\storqosflt /v "Start" /t REG_DWORD /d 4 /f
reg add hklm\system\controlset001\services\iphlpsvc /v "Start" /t REG_DWORD /d 4 /f
reg add hklm\system\controlset001\services\mslldp /v "Start" /t REG_DWORD /d 4 /f
reg add hklm\system\controlset001\services\ufxchipidea /v "Start" /t REG_DWORD /d 4 /f
reg add hklm\system\controlset001\services\wpnuserservice /v "Start" /t REG_DWORD /d 4 /f
reg add hklm\system\controlset001\services\bthavctpsvc /v "Start" /t REG_DWORD /d 4 /f
reg add hklm\system\controlset001\services\wlidsvc /v "Start" /t REG_DWORD /d 4 /f
reg add hklm\system\controlset001\services\amdxe /v "Start" /t REG_DWORD /d 4 /f
reg add hklm\system\controlset001\services\portcfg /v "Start" /t REG_DWORD /d 4 /f
reg add hklm\system\controlset001\services\itsas35i /v "Start" /t REG_DWORD /d 4 /f
reg add hklm\system\controlset001\services\ialpss2i_gpio2_glk /v "Start" /t REG_DWORD /d 4 /f
reg add hklm\system\controlset001\services\licensemanager /v "Start" /t REG_DWORD /d 4 /f
reg add hklm\system\controlset001\services\wcifs /v "Start" /t REG_DWORD /d 4 /f
reg add hklm\system\controlset001\services\appxsvc /v "Start" /t REG_DWORD /d 4 /f
reg add hklm\system\controlset001\services\megasas /v "Start" /t REG_DWORD /d 4 /f
reg add hklm\system\controlset001\services\urschipidea /v "Start" /t REG_DWORD /d 4 /f
reg add hklm\system\controlset001\services\bttflt /v "Start" /t REG_DWORD /d 4 /f
reg add hklm\system\controlset001\services\intelpmax /v "Start" /t REG_DWORD /d 4 /f
reg add hklm\system\controlset001\services\bluetoothuserservice_1a6b3 /v "Start" /t REG_DWORD /d 4 /f
reg add hklm\system\controlset001\services\unistoresvc_1a6b3 /v "Start" /t REG_DWORD /d 4 /f
reg add hklm\system\controlset001\services\devicesflowusersvc /v "Start" /t REG_DWORD /d 4 /f
reg add hklm\system\controlset001\services\dmwappushservice /v "Start" /t REG_DWORD /d 4 /f
reg add hklm\system\controlset001\services\sisraid2 /v "Start" /t REG_DWORD /d 4 /f
reg add hklm\system\controlset001\services\smsrouter /v "Start" /t REG_DWORD /d 4 /f
reg add hklm\system\controlset001\services\cdpusersvc_1a6b3 /v "Start" /t REG_DWORD /d 4 /f
reg add hklm\system\controlset001\services\devicepickerusersvc_1a6b3 /v "Start" /t REG_DWORD /d 4 /f
reg add hklm\system\controlset001\services\tsusbgd /v "Start" /t REG_DWORD /d 4 /f
reg add hklm\system\controlset001\services\acx01000 /v "Start" /t REG_DWORD /d 4 /f
reg add hklm\system\controlset001\services\lsi_sas3i /v "Start" /t REG_DWORD /d 4 /f
reg add hklm\system\controlset001\services\aarsvc_1a6b3 /v "Start" /t REG_DWORD /d 4 /f
reg add hklm\system\controlset001\services\warpjitsvc /v "Start" /t REG_DWORD /d 4 /f
reg add hklm\system\controlset001\services\bthmini /v "Start" /t REG_DWORD /d 4 /f
reg add hklm\system\controlset001\services\cldflt /v "Start" /t REG_DWORD /d 4 /f
reg add hklm\system\controlset001\services\sisraid2 /v "Start" /t REG_DWORD /d 4 /f
reg add hklm\system\controlset001\services\cdpusersvc_1aab8 /v "Start" /t REG_DWORD /d 4 /f
reg add hklm\system\controlset001\services\deviceassociationbrokervc_1aab8 /v "Start" /t REG_DWORD /d 4 /f
reg add hklm\system\controlset001\services\gpuenergydrv /v "Start" /t REG_DWORD /d 4 /f
reg add hklm\system\controlset001\services\devicepickerusersvc /v "Start" /t REG_DWORD /d 4 /f
reg add hklm\system\controlset001\services\wfdsconmgrsvc /v "Start" /t REG_DWORD /d 4 /f
reg add hklm\system\controlset001\services\megasas /v "Start" /t REG_DWORD /d 4 /f
reg add hklm\system\controlset001\services\sharedaccess /v "Start" /t REG_DWORD /d 4 /f
reg add hklm\system\controlset001\services\filecrypt /v "Start" /t REG_DWORD /d 4 /f
reg add hklm\system\controlset001\services\bttflt /v "Start" /t REG_DWORD /d 4 /f
reg add hklm\system\controlset001\services\itsas35i /v "Start" /t REG_DWORD /d 4 /f
reg add hklm\system\controlset001\services\mbbcx /v "Start" /t REG_DWORD /d 4 /f
reg add hklm\system\controlset001\services\tpm /v "Start" /t REG_DWORD /d 4 /f
reg add hklm\system\controlset001\services\sensorservice /v "Start" /t REG_DWORD /d 4 /f
reg add hklm\system\controlset001\services\bthenum /v "Start" /t REG_DWORD /d 4 /f
reg add hklm\system\controlset001\services\3ware /v "Start" /t REG_DWORD /d 4 /f
reg add hklm\system\controlset001\services\wdiwifi /v "Start" /t REG_DWORD /d 4 /f
reg add hklm\system\controlset001\services\mvumis /v "Start" /t REG_DWORD /d 4 /f
reg add hklm\system\controlset001\services\hidspi /v "Start" /t REG_DWORD /d 4 /f
reg add hklm\system\controlset001\services\printworkflowusersvc_1aab8 /v "Start" /t REG_DWORD /d 4 /f
reg add hklm\system\controlset001\services\ndkping /v "Start" /t REG_DWORD /d 4 /f
reg add hklm\system\controlset001\services\iagpio /v "Start" /t REG_DWORD /d 4 /f
reg add hklm\system\controlset001\services\ialpssi_gpio /v "Start" /t REG_DWORD /d 4 /f
reg add hklm\system\controlset001\services\vwifibus /v "Start" /t REG_DWORD /d 4 /f
reg add hklm\system\controlset001\services\ialpss2i_i2c /v "Start" /t REG_DWORD /d 4 /f
reg add hklm\system\controlset001\services\buttonconverter /v "Start" /t REG_DWORD /d 4 /f
reg add hklm\system\controlset001\services\userdatasvc_1aab8 /v "Start" /t REG_DWORD /d 4 /f
reg add hklm\system\controlset001\services\arcsas /v "Start" /t REG_DWORD /d 4 /f
reg add hklm\system\controlset001\services\dnscache /v "Start" /t REG_DWORD /d 4 /f
reg add hklm\system\controlset001\services\wersvc /v "Start" /t REG_DWORD /d 4 /f
reg add hklm\system\controlset001\services\ndisimplatform /v "Start" /t REG_DWORD /d 4 /f
reg add hklm\system\controlset001\services\tsusbflt /v "Start" /t REG_DWORD /d 4 /f
reg add hklm\system\controlset001\services\netadaptercx /v "Start" /t REG_DWORD /d 4 /f
reg add hklm\system\controlset001\services\ndiswanlegacy /v "Start" /t REG_DWORD /d 4 /f
reg add hklm\system\controlset001\services\aarsvc_193cb /v "Start" /t REG_DWORD /d 4 /f
reg add hklm\system\controlset001\services\BluetoothUserService_193cb /v "Start" /t REG_DWORD /d 4 /f
reg add hklm\system\controlset001\services\BluetoothUserService /v "Start" /t REG_DWORD /d 4 /f
reg add hklm\system\controlset001\services\MsSecWfp /v "Start" /t REG_DWORD /d 4 /f
reg add hklm\system\controlset001\services\BTAGService /v "Start" /t REG_DWORD /d 4 /f
reg add hklm\system\controlset001\services\msquic /v "Start" /t REG_DWORD /d 4 /f
reg add hklm\system\controlset001\services\BthA2dp /v "Start" /t REG_DWORD /d 4 /f
reg add hklm\system\controlset001\services\nvstor /v "Start" /t REG_DWORD /d 4 /f
reg add hklm\system\controlset001\services\nvraid /v "Start" /t REG_DWORD /d 4 /f
reg add hklm\system\controlset001\services\nvdimm /v "Start" /t REG_DWORD /d 4 /f
reg add hklm\system\controlset001\services\autotimesvc /v "Start" /t REG_DWORD /d 4 /f
reg add hklm\system\controlset001\services\mshidumdf /v "Start" /t REG_DWORD /d 4 /f
reg add hklm\system\controlset001\services\msgpiowin32 /v "Start" /t REG_DWORD /d 4 /f
reg add hklm\system\controlset001\services\BthHFEnum /v "Start" /t REG_DWORD /d 4 /f
reg add hklm\system\controlset001\services\percsas2i /v "Start" /t REG_DWORD /d 4 /f
reg add hklm\system\controlset001\services\MsBridge /v "Start" /t REG_DWORD /d 4 /f
reg add hklm\system\controlset001\services\percsas3i /v "Start" /t REG_DWORD /d 4 /f
reg add hklm\system\controlset001\services\PktMon /v "Start" /t REG_DWORD /d 4 /f
reg add hklm\system\controlset001\services\pmem /v "Start" /t REG_DWORD /d 4 /f
reg add hklm\system\controlset001\services\WManSvc /v "Start" /t REG_DWORD /d 4 /f
reg add hklm\system\controlset001\services\PrintNotify /v "Start" /t REG_DWORD /d 4 /f
reg add hklm\system\controlset001\services\Microsoft_Bluetooth_AvrcpTransport /v "Start" /t REG_DWORD /d 4 /f
reg add hklm\system\controlset001\services\megasr /v "Start" /t REG_DWORD /d 4 /f
reg add hklm\system\controlset001\services\megasas35i /v "Start" /t REG_DWORD /d 4 /f
reg add hklm\system\controlset001\services\megasas2i /v "Start" /t REG_DWORD /d 4 /f
reg add hklm\system\controlset001\services\megasas /v "Start" /t REG_DWORD /d 4 /f
reg add hklm\system\controlset001\services\McpManagementService /v "Start" /t REG_DWORD /d 4 /f
reg add hklm\system\controlset001\services\PrintWorkflowUserSvc /v "Start" /t REG_DWORD /d 4 /f
reg add hklm\system\controlset001\services\mausbip /v "Start" /t REG_DWORD /d 4 /f
reg add hklm\system\controlset001\services\mausbhost /v "Start" /t REG_DWORD /d 4 /f
reg add hklm\system\controlset001\services\PrintWorkflowUserSvc_193cb /v "Start" /t REG_DWORD /d 4 /f
reg add hklm\system\controlset001\services\LSI_SSS /v "Start" /t REG_DWORD /d 4 /f
reg add hklm\system\controlset001\services\LSI_SAS3i /v "Start" /t REG_DWORD /d 4 /f
reg add hklm\system\controlset001\services\LSI_SAS2i /v "Start" /t REG_DWORD /d 4 /f
reg add hklm\system\controlset001\services\LSI_SAS /v "Start" /t REG_DWORD /d 4 /f
reg add hklm\system\controlset001\services\Ramdisk /v "Start" /t REG_DWORD /d 4 /f
reg add hklm\system\controlset001\services\RemoteAccess /v "Start" /t REG_DWORD /d 4 /f
reg add hklm\system\controlset001\services\RFCOMM /v "Start" /t REG_DWORD /d 4 /f
reg add hklm\system\controlset001\services\sbp2port /v "Start" /t REG_DWORD /d 4 /f
reg add hklm\system\controlset001\services\BthLEEnum /v "Start" /t REG_DWORD /d 4 /f
reg add hklm\system\controlset001\services\SensorDataService /v "Start" /t REG_DWORD /d 4 /f
reg add hklm\system\controlset001\services\IpxlatCfgSvc /v "Start" /t REG_DWORD /d 4 /f
reg add hklm\system\controlset001\services\ItSas35i /v "Start" /t REG_DWORD /d 4 /f
reg add hklm\system\controlset001\services\SerCx /v "Start" /t REG_DWORD /d 4 /f
reg add hklm\system\controlset001\services\SerCx2 /v "Start" /t REG_DWORD /d 4 /f
reg add hklm\system\controlset001\services\WEPHOSTSVC /v "Start" /t REG_DWORD /d 4 /f
reg add hklm\system\controlset001\services\SiSRaid2 /v "Start" /t REG_DWORD /d 4 /f
reg add hklm\system\controlset001\services\SiSRaid4 /v "Start" /t REG_DWORD /d 4 /f
reg add hklm\system\controlset001\services\SmartSAMD /v "Start" /t REG_DWORD /d 4 /f
reg add hklm\system\controlset001\services\IndirectKmd /v "Start" /t REG_DWORD /d 4 /f
reg add hklm\system\controlset001\services\spaceparser /v "Start" /t REG_DWORD /d 4 /f
reg add hklm\system\controlset001\services\icssvc /v "Start" /t REG_DWORD /d 4 /f
reg add hklm\system\controlset001\services\iaLPSSi_I2C /v "Start" /t REG_DWORD /d 4 /f
reg add hklm\system\controlset001\services\spectrum /v "Start" /t REG_DWORD /d 4 /f
reg add hklm\system\controlset001\services\iaLPSS2i_I2C_BXT_P /v "Start" /t REG_DWORD /d 4 /f
reg add hklm\system\controlset001\services\iaLPSS2i_I2C_CNL v2 /v "Start" /t REG_DWORD /d 4 /f
reg add hklm\system\controlset001\services\iaLPSS2i_I2C_GLK /v "Start" /t REG_DWORD /d 4 /f
reg add hklm\system\controlset001\services\iaLPSS2i_GPIO2_CNL /v "Start" /t REG_DWORD /d 4 /f
reg add hklm\system\controlset001\services\iaLPSS2i_GPIO2_BXT_P /v "Start" /t REG_DWORD /d 4 /f
reg add hklm\system\controlset001\services\iaLPSS2i_GPIO2 /v "Start" /t REG_DWORD /d 4 /f
reg add hklm\system\controlset001\services\iai2c /v "Start" /t REG_DWORD /d 4 /f
reg add hklm\system\controlset001\services\BTHPORT /v "Start" /t REG_DWORD /d 4 /f
reg add hklm\system\controlset001\services\HwNClx0101 /v "Start" /t REG_DWORD /d 4 /f
reg add hklm\system\controlset001\services\HpSAMD /v "Start" /t REG_DWORD /d 4 /f
reg add hklm\system\controlset001\services\hidinterrupt /v "Start" /t REG_DWORD /d 4 /f
reg add hklm\system\controlset001\services\storufs /v "Start" /t REG_DWORD /d 4 /f
reg add hklm\system\controlset001\services\stornvme /v "Start" /t REG_DWORD /d 4 /f
reg add hklm\system\controlset001\services\hidi2c /v "Start" /t REG_DWORD /d 4 /f
reg add hklm\system\controlset001\services\AarSvc /v "Start" /t REG_DWORD /d 4 /f
reg add hklm\system\controlset001\services\terminpt /v "Start" /t REG_DWORD /d 4 /f
reg add hklm\system\controlset001\services\GraphicsPerfSvc /v "Start" /t REG_DWORD /d 4 /f
echo All service groups disabled.
pause
goto :choice2

:mark
echo                ********** Meklin Method Watermark Destroyer ***************
echo                *********** This uses both github projects:   **************
echo                ********* https://github.com/nefarius/Injector *************
echo                *** https://github.com/jdpatdiscord/NoDesktopWM_Revamped ***
echo.
echo Windows watermark removed with Nefarius' injector(command line .exe) and NoDesktopWM_Revamped(desktop.dll injected into explorer.exe). Owned!
echo.
reg add HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Run /v Inject2 /t reg_sz /d "%SYSTEMDRIVE%\WINDOWS\SYSTEM32\INJECT2.BAT" /f
echo.
pause
goto :choice2

:end
echo END
pause
