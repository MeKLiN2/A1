reg add HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Explorer /v CONFIRMFILEDELETE /t REG_DWORD /d 1 /f
reg add HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Explorer /v CONFIRMFILEDELETE /t REG_DWORD /d 1 /f
reg add HKLM\SOFTWARE\Microsoft\Policies\Explorer /v CONFIRMFILEDELETE /t REG_DWORD /d 1 /f
reg delete HKEY_CLASSES_ROOT\CLSID\{A6FF50C0-56C0-71CA-5732-BED303A59628} /f
devcon disable *pnp0103
devcon disable *pnp0200
devcon disable *pnp0000
devcon disable *pnp0c14
devcon disable *compositebus
devcon disable *amdlog
devcon disable *amdxe
devcon disable *ndisvirtualbus
devcon disable *microsoftgswavetablesynth
devcon disable *SWD*
devcon disable *pnp0c14
devcon disable *amdi0030
devcon disable *amdif030
reg delete HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Services\stornvme\StartOverride /f
reg delete HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\Ramdisk\StartOverride /f
reg delete HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\stornvme\StartOverride /f
reg delete HKEY_CLASSES_ROOT\CLSID\{603D3800-BD81-11d0-A3A5-00C04FD706EC} /f
reg delete HKEY_CLASSES_ROOT\CLSID\{603D3801-BD81-11d0-A3A5-00C04FD706EC} /f
reg delete HKEY_CLASSES_ROOT\WOW6432Node\CLSID\{603D3800-BD81-11d0-A3A5-00C04FD706EC} /f
reg delete HKEY_CLASSES_ROOT\WOW6432Node\CLSID\{603D3801-BD81-11d0-A3A5-00C04FD706EC} /f
reg add HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced /v ExtendedUIHoverTime /t reg_dword /d 30000 /f
reg add HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\UserDataSvc_19e78 /v start /t reg_dword /d 4 /f
reg add HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\wisvc /v start /t reg_dword /d 4 /f
reg add HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\cad /v start /t reg_dword /d 4 /f
reg add HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\gpsvc /v start /t reg_dword /d 4 /f
reg add HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\lfsvc /v start /t reg_dword /d 4 /f
reg delete HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\gpsvc\TriggerInfo /f
reg add HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\stornvme /v start /t reg_dword /d 4 /f
ren c:\windows\system32\drivers\cad.sys cad.sy
ren c:\windows\system32\drivers\dam.sys dam.sy
reg delete HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\EventLog\System\NetBIOS /f
reg delete HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\EventLog\System\NetBT /f
reg add HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\pcmcia /v start /t reg_dword /d 4 /f
reg add HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\ramdisk /v start /t reg_dword /d 4 /f
reg add HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\pciide /v start /t reg_dword /d 4 /f
reg add HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\netbt /v start /t reg_dword /d 4 /f
reg add HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\wudfrd/v start /t reg_dword /d 4 /f
reg add HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\DeviceAssociationBrokerSvc_19e78 /v start /t reg_dword /d 4 /f
reg add HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\CredentialEnrollmentManagerUserSvc_19e78 /v start /t reg_dword /d 4 /f
reg add HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\CredentialEnrollmentManagerUserSvc /v start /t reg_dword /d 4 /f
reg add HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\ConsentUxUserSvc_19e78 /v start /t reg_dword /d 4 /f
reg add HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\UnistoreSvc /v start /t reg_dword /d 4 /f
echo reg add HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\wof /v start /t reg_dword /d 4 /f
echo ren c:\windows\system32\drivers\wof.sys wof.sy
reg add HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\UnistoreSvc_19e78 /v start /t reg_dword /d 4 /f
reg add HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\DeviceAssociationBrokerSvc /v start /t reg_dword /d 4 /f
reg add HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\WpnService /v start /t reg_dword /d 4 /f
reg add HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\WinNat /v start /t reg_dword /d 4 /f
reg add HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\CDPUserSvc /v start /t reg_dword /d 4 /f
reg add HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\ConsentUxUserSvc /v start /t reg_dword /d 4 /f
reg add HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\UserDataSvc /v start /t reg_dword /d 4 /f
reg add HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\WpdUpFltr /v start /t reg_dword /d 4 /f
reg add HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\DeviceAssociationService /v start /t reg_dword /d 4 /f
reg add HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\CDPSvc /v start /t reg_dword /d 4 /f
reg delete HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\Telemetry /f
del /f /q C:\Windows\INF\intelta.PNF
del /f /q C:\Windows\System32\drivers\IntelTA.sys
del /f /q C:\Windows\INF\intelta.inf
del /f /q C:\Windows\System32\DriverStore\en-US\IntelTA.inf_loc
rd /s /q C:\Windows\System32\DriverStore\FileRepository\intelta.inf_amd64_ba962d801a22973c
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Windows\Win32knsWPP" /f
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Windows\Win32kWPP" /f
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\WOW6432Node\Microsoft\Windows NT\CurrentVersion\Windows\Win32knsWPP" /f
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\WOW6432Node\Microsoft\Windows NT\CurrentVersion\Windows\Win32kWP" /f
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\WOW6432Node\Microsoft\Windows NT\CurrentVersion\Tracing\Microsoft" /f
reg add HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\GRE_Initialize /v DisableRemoteFontBootCache /t reg_dword /d 1 /f
reg add hkey_current_user\software\policies\microsoft\windows\oobe /v disableprivacyexperience /t reg_dword /d 1 /f
reg add hkey_local_machine\software\microsoft\windows\currentversion /v skipmachineoobe /t reg_dword /d 1 /f
reg add hkey_local_machine\software\microsoft\windows\currentversion\setup\state /v imagestate /t reg_sz /d image_state_complete /f
reg add HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Setup\OOBE /v PrivacyConsentStatus /t reg_dword /d 1 /f
reg add HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Setup\OOBE /v "PrivacyConsentStatus" /t REG_DWORD /d 1 /f
reg add HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Setup\OOBE /v "SkipMachineOOBE" /t REG_DWORD /d 1 /f
reg add HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Setup\OOBE /v "ProtectYourPC" /t REG_DWORD /d 3 /f
reg add HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Setup\OOBE /v "SkipUserOOBE" /t REG_DWORD /d 1 /f
reg add HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Setup\OOBE /v "unattendcreateduser" /t REG_DWORD /d 1 /f
reg add HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System /v enablecursorsuppression /t reg_dword /d 0 /f
reg add HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System /v enablelua /t reg_dword /d 0 /f
reg add HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System /v SupportFullTrustStartupTasks /t reg_dword /d 0 /f
reg add HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System /v SupportUwpStartupTasks /t reg_dword /d 0 /f
reg add HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System /v EnableFullTrustStartupTasks /t reg_dword /d 0 /f
reg add HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System /v DSCAutomationHostEnabled /t reg_dword /d 0 /f
reg delete HKEY_CLASSES_ROOT\AppID\{0B789C73-D8DA-416D-B665-C1603676CEB1} /f
reg delete HKEY_CLASSES_ROOT\CLSID\{1FFE4FFD-25B1-40B1-A1EA-EF633353BB4E} /f
reg delete HKEY_CLASSES_ROOT\CLSID\{D18705BE-FC2F-44C8-AEFF-1CD49AEA8FC1} /f
reg delete HKEY_CLASSES_ROOT\WOW6432Node\AppID\{0B789C73-D8DA-416D-B665-C1603676CEB1} /f
reg delete HKEY_LOCAL_MACHINE\SOFTWARE\Classes\AppID\{0B789C73-D8DA-416D-B665-C1603676CEB1} /f
reg delete HKEY_LOCAL_MACHINE\SOFTWARE\Classes\CLSID\{1FFE4FFD-25B1-40B1-A1EA-EF633353BB4E} /f
reg delete HKEY_LOCAL_MACHINE\SOFTWARE\Classes\CLSID\{D18705BE-FC2F-44C8-AEFF-1CD49AEA8FC1} /f
reg delete HKEY_LOCAL_MACHINE\SOFTWARE\Classes\WOW6432Node\AppID\{0B789C73-D8DA-416D-B665-C1603676CEB1} /f
reg delete HKEY_LOCAL_MACHINE\SOFTWARE\WOW6432Node\Classes\AppID\{0B789C73-D8DA-416D-B665-C1603676CEB1} /f
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Windows" /v desktopheaplogging /t reg_dword /d 0 /f
reg delete HKEY_CLASSES_ROOT\AppID\{B1B9CBB2-B198-47E2-8260-9FD629A2B2EC} /f
reg delete HKEY_CLASSES_ROOT\CLSID\{555F3418-D99E-4E51-800A-6E89CFD8B1D7} /f
reg delete HKEY_CLASSES_ROOT\CLSID\{DD522ACC-F821-461A-A407-50B198B896DC} /f
reg delete HKEY_CLASSES_ROOT\WOW6432Node\AppID\{B1B9CBB2-B198-47E2-8260-9FD629A2B2EC} /f
reg delete HKEY_LOCAL_MACHINE\SOFTWARE\Classes\AppID\{B1B9CBB2-B198-47E2-8260-9FD629A2B2EC} /f
reg delete HKEY_LOCAL_MACHINE\SOFTWARE\Classes\CLSID\{555F3418-D99E-4E51-800A-6E89CFD8B1D7} /f
reg delete HKEY_LOCAL_MACHINE\SOFTWARE\Classes\CLSID\{DD522ACC-F821-461A-A407-50B198B896DC} /f
reg delete HKEY_LOCAL_MACHINE\SOFTWARE\Classes\WOW6432Node\AppID\{B1B9CBB2-B198-47E2-8260-9FD629A2B2EC} /f
reg delete HKEY_LOCAL_MACHINE\SOFTWARE\WOW6432Node\Classes\AppID\{B1B9CBB2-B198-47E2-8260-9FD629A2B2EC} /f
c:\windows\system32\bcdedit.exe /store c:\boot\bcd /set {default} disableelamdrivers yes
c:\windows\system32\bcdedit.exe /store c:\boot\bcd /set {default} debug off
c:\windows\system32\bcdedit.exe /store c:\boot\bcd /set {default} bootlog no
c:\windows\system32\bcdedit.exe /store c:\boot\bcd /set {default} sos on
c:\windows\system32\bcdedit.exe /store c:\boot\bcd /set {default} pae forcedisable
c:\windows\system32\bcdedit.exe /store c:\boot\bcd /set {default} tpmbootentropy forcedisable
c:\windows\system32\bcdedit.exe /store c:\boot\bcd /dbgsettings local /start disable
c:\windows\system32\bcdedit.exe /store c:\boot\bcd /dbgsettings serial /start disable
c:\windows\system32\bcdedit.exe /store c:\boot\bcd /bootdebug {bootmgr} off
c:\windows\system32\bcdedit.exe /store c:\boot\bcd /bootdebug {default} off
c:\windows\system32\bcdedit.exe /store c:\boot\bcd /set {default} bootems off
c:\windows\system32\bcdedit.exe /store c:\boot\bcd /set {default} ems off
c:\windows\system32\bcdedit.exe /store c:\boot\bcd /set {default} hypervisordebug off
c:\windows\system32\bcdedit.exe /store c:\boot\bcd /set {default} tscsyncpolicy legacy
c:\windows\system32\bcdedit.exe /store c:\boot\bcd /deletevalue {bootmgr} resumeobject
c:\windows\system32\bcdedit.exe /store c:\boot\bcd /deletevalue {default} resumeobject
c:\windows\system32\bcdedit.exe /store c:\boot\bcd /deletevalue {default} displaymessageoverride
c:\windows\system32\bcdedit.exe /store c:\boot\bcd /deletevalue {default} recoveryenabled
c:\windows\system32\bcdedit.exe /store c:\boot\bcd /deletevalue {default} recoverysequence
c:\windows\system32\bcdedit.exe /store c:\boot\bcd /deletevalue {default} allowedinmemorysettings
c:\windows\system32\bcdedit.exe /store c:\boot\bcd /set {default} nx alwaysoff
c:\windows\system32\bcdedit.exe /store c:\boot\bcd /set {default} useplatformclock no
c:\windows\system32\bcdedit.exe /store c:\boot\bcd /set {default} disabledynamictick yes
c:\windows\system32\bcdedit.exe /store c:\boot\bcd /set {default} bootmenupolicy legacy
c:\windows\system32\bcdedit.exe /store c:\boot\bcd /set {default} forcelegacyplatform yes
reg delete HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Setup\State /v imagestate /f
reg add hklm\system\controlset001\services\nlasvc /v "dependonservice" /t REG_MULTI_SZ /d "NSI\0RpcSs\0TcpIp\0Dhcp" /f
sc config msseccore start= disabled
sc config peauth start= disabled
sc config bam start= disabled
reg ADD "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\PasswordLess\Device" /v DevicePasswordLessBuildVersion /t REG_DWORD /d 0 /f
ren c:\windows\system32\drivers\pdc.sys pdc.sy
ren c:\windows\system32\drivers\bam.sys bam.sy
ren c:\windows\system32\drivers\peauth.sys peauth.sy
ren c:\windows\system32\drivers\mssecflt.sys mssecflt.sy
ren c:\windows\system32\drivers\msseccore.sys msseccore.sy
ren c:\windows\system32\drivers\mssecwfp.sys mssecwfp.sy
sc config pdc start= disabled
sc config sdbus start= disabled
ren C:\Windows\system32\CredentialEnrollmentManager.exe CREDENTIALENROLLMENTMANAGER.EX
sc config netman start= demand
sc config netprofm start= demand
sc config vsmraid start= disabled
sc config arcsas start= disabled
sc config vstxraid start= disabled
sc config adp80xx start= disabled
sc config vds start= disabled
sc config nvstor start= disabled
sc config nvraid start= disabled
sc config usbser start= disabled
sc config sdbus start= disabled
sc config serenum start= disabled
sc config stexstor start= disabled
sc config srvnet start= disabled
sc config ncbservice start= disabled
sc config dsmsvc start= demand
sc config ncasvc start= demand
reg add HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\MsSecCore /v start /t reg_dword /d 4 /f
reg add HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\pdc /v start /t reg_dword /d 4 /f
reg add HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\peauth /v start /t reg_dword /d 4 /f
reg add HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\rhproxy /v start /t reg_dword /d 4 /f
reg add HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\brokerinfrastructure /v start /t reg_dword /d 4 /f
ren c:\windows\system32\bisrv.dll bisrv.dl
reg add HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\UdeCx /v start /t reg_dword /d 4 /f
reg add HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\UcmCx0101 /v start /t reg_dword /d 4 /f
reg add HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\UcmTcpciCx0101 /v start /t reg_dword /d 4 /f
reg add HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\UcmUcsiCx0101 /v start /t reg_dword /d 4 /f
reg add HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\refs /v start /t reg_dword /d 4 /f
reg add HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\ehstorclass /v start /t reg_dword /d 4 /f
takeown /f c:\windows\system32\drivers\ehstorclass.sys
icacls c:\windows\system32\drivers\ehstorclass.sys /grant administrators:f
ren c:\windows\system32\drivers\ehstorclass.sys ehstorclass.sy
ren C:\Windows\System32\DriverStore\FileRepository\ehstortcgdrv.inf_amd64_5cb0c23f45dac01c\EhStorTcgDrv.sys EhStorTcgDrv.sy
ren c:\windows\system32\drivers\EhStorTcgDrv.sys EhStorTcgDrv.sy
ren C:\Windows\System32\drivers\en-US\EhStorTcgDrv.sys.mui EhStorTcgDrv.sys.mu
reg add HKEY_LOCAL_MACHINE\system\CONTROLSET001\CONTROL\CLASS\{4d36e967-e325-11ce-bfc1-08002be10318} /v LowerFilters /t reg_multi_sz /d "" /f
ren c:\windows\system32\psmsrv.dll psmsrv.dl
reg add HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\dsmsvc /v start /t reg_dword /d 3 /f
reg add HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\camsvc /v start /t reg_dword /d 2 /f
reg add HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\ncasvc /v start /t reg_dword /d 3 /f
reg add HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\cdfs /v start /t reg_dword /d 0 /f
reg add HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\trustedinstaller /v start /t reg_dword /d 3 /f
reg delete HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\NcbService\triggerinfo /f
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Windows" /v spooler /t reg_sz /d no /f
sc config sisraid4 start= disabled
sc config ehstortcgdrv start= disabled
sc config tzautoupdate start= disabled
sc config sbp2port start= disabled
sc config megasr start= disabled
sc config cloudidsvc start= disabled
sc config virtualrender start= disabled
sc config lsi_sss start= disabled
sc config ialpss2i_i2c_cnl start= disabled
sc config lsi_sas start= disabled
sc config storufs start= disabled
sc config udkusersvc_19a71 start= disabled
reg add hklm\system\controlset001\services\udkusersvc_19a71 /v "Start" /t REG_DWORD /d 4 /f
sc config udkusersvc start= disabled
sc config hpsamd start= disabled
sc config cht4vbd start= disabled
sc config displayenhancementservice start= disabled
sc config percsas3i start= disabled
sc config GPIOClx0101 start= disabled
sc config fax start= disabled
sc config percsas2i start= disabled
sc config vhf start= disabled
sc config dmenrollmentsvc start= disabled
sc config ufxsynopsys start= disabled
sc config rhproxy start= disabled
sc config sdstor start= disabled
sc config hidspicx start= disabled
sc config entappsvc start= disabled
sc config bthusb start= disabled
sc config smartsamd start= disabled
sc config wlpasvc start= disabled
sc config i8042prt start= disabled
sc config megasas35i start= disabled
sc config ucmucsiacpiclient start= disabled
sc config lsi_sas2i start= disabled
sc config lsi_sas3i start= disabled
sc config nvdimm start= disabled
sc config cht4iscsi start= disabled
sc config sisraid2 start= disabled
sc config mvumis start= disabled
sc config megasas start= disabled
sc config megasas2i start= disabled
sc config clipsvc start= disabled
sc config 3ware start= disabled
sc config pmem start= disabled
sc config tieringengineservice start= disabled
sc config dcsvc start= disabled
sc config itsas35i start= disabled
sc config ncdautosetup start= disabled
sc config devquerybroker start= disabled
sc config bttflt start= disabled
sc config applockerfltr start= disabled
sc config sdfrd start= disabled
sc config ndiscap start= disabled
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\ProfileNotification" /v AppMgmt /f
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\ProfileNotification" /v AppxPnf /f
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\ProfileNotification" /v CloudStore /f
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\ProfileNotification" /v DeviceMgmt /f
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\ProfileNotification" /v GlobUserSettingsProfileCleanup /f
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\ProfileNotification" /v GPSvc /f
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\ProfileNotification" /v IdentityProfileHandler /f
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\ProfileNotification" /v MSA /f
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\ProfileNotification" /v SettingProfileHandler /f
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\ProfileNotification" /v shacct /f
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\ProfileNotification" /v SyncRootsProfileHandler /f
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\ProfileNotification" /v WinBio /f
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\WOW6432Node\Microsoft\Windows NT\CurrentVersion\ProfileNotification" /v AppMgmt /f
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\WOW6432Node\Microsoft\Windows NT\CurrentVersion\ProfileNotification" /v AppxPnf /f
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\WOW6432Node\Microsoft\Windows NT\CurrentVersion\ProfileNotification" /v CloudStore /f
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\WOW6432Node\Microsoft\Windows NT\CurrentVersion\ProfileNotification" /v DeviceMgmt /f
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\WOW6432Node\Microsoft\Windows NT\CurrentVersion\ProfileNotification" /v GlobUserSettingsProfileCleanup /f
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\WOW6432Node\Microsoft\Windows NT\CurrentVersion\ProfileNotification" /v GPSvc /f
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\WOW6432Node\Microsoft\Windows NT\CurrentVersion\ProfileNotification" /v IdentityProfileHandler /f
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\WOW6432Node\Microsoft\Windows NT\CurrentVersion\ProfileNotification" /v MSA /f
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\WOW6432Node\Microsoft\Windows NT\CurrentVersion\ProfileNotification" /v SettingProfileHandler /f
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\WOW6432Node\Microsoft\Windows NT\CurrentVersion\ProfileNotification" /v shacct /f
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\WOW6432Node\Microsoft\Windows NT\CurrentVersion\ProfileNotification" /v SyncRootsProfileHandler /f
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\WOW6432Node\Microsoft\Windows NT\CurrentVersion\ProfileNotification" /v WinBio /f
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\WOW6432Node\Microsoft\Windows NT\CurrentVersion\GRE_Initialize" /v DisableRemoteFontBootCache /t reg_dword /d 1 /f
reg add HKEY_LOCAL_MACHINE\SOFTWARE\WOW6432Node\Microsoft\Windows\Dwm /v AnimationAttributionEnabled /t reg_dword /d 0 /f
reg add HKEY_LOCAL_MACHINE\SOFTWARE\WOW6432Node\Microsoft\Windows\Dwm /v AnimationAttributionHashingEnabled /t reg_dword /d 0 /f
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\WOW6432Node\Microsoft\Windows\Windows Error Reporting" /v enablezip /t reg_dword /d 0 /f
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\WOW6432Node\Microsoft\Windows\Windows Error Reporting" /v errorport /t reg_sz /d "" /f
reg add HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\OOBE\Stats /v oobeusersignedin /t reg_dword /d 1 /f
reg add HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\OOBE\TelemetryCorrelation /v FirstRunCorrelationID /t reg_dword /d 0 /f
reg add HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\OOBE /v DEFAULTACCOUNTSAMNAME /t reg_sz /d "Administrator" /f
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\WOW6432Node\Microsoft\Windows\Windows Error Reporting\BrokerUp" /v wwajse /t reg_dword /d 0 /f
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\WOW6432Node\Microsoft\Windows\Windows Error Reporting\Consent" /v consent /t reg_dword /d 0 /f
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\WOW6432Node\Microsoft\Windows\Windows Error Reporting\RuntimeExceptionHelperModules" /v C:\Windows\Microsoft.NET\Framework\v4.0.30319\mscordacwks.dll /f
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\WOW6432Node\Microsoft\Windows\Windows Error Reporting\RuntimeExceptionHelperModules" /v C:\Windows\SysWOW64\iertutil.dll /f
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\WOW6432Node\Microsoft\Windows\Windows Error Reporting\RuntimeExceptionHelperModules" /v C:\Windows\SysWOW64\msiwer.dll /f
ren c:\windows\system32\esent.dl esent.dll
reg add HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\microphone /v allow /t reg_dword /d 1 /f
reg add HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\microphone /v allow /t reg_dword /d 1 /f
echo [HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\AppPrivacy]
echo "LetAppsAccessMicrophone"=-
echo "LetAppsAccessMicrophone_UserInControlOfTheseApps"=-
echo "LetAppsAccessMicrophone_ForceAllowTheseApps"=-
echo "LetAppsAccessMicrophone_ForceDenyTheseApps"=-
reg add HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\webcam /v allow /t reg_dword /d 1 /f
reg add HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\webcam /v allow /t reg_dword /d 1 /f
reg delete HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\AppPrivacy /v letappsaccesscamera /f
reg delete HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\AppPrivacy /v letappsaccessmicrophone /f
exit