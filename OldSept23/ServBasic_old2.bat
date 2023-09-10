@echo off
echo.
echo             ***************************************************************************
echo             ************* win10 22h2 service/driver disabler by MeKLiN   **************
echo             ***************************************************************************
echo.
:choice
set /P c=SKIP SETTING PERMISSIONS OF DRIVERS AND SERVICES?[Y/N]?
if /I "%c%" EQU "Y" goto :somewhere_else
if /I "%c%" EQU "N" goto :somewhere
goto :choice
:somewhere
takeown /f c:\windows\system32\*
icacls c:\windows\system32\* /grant administrators:f
takeown /f C:\Windows\System32\DriverStore /r /d y
takeown /f c:\windows\inf /r /d y
takeown /f c:\windows\system32\drivers /r /d y
icacls c:\windows\system32\drivers /grant administrators:f /t
icacls c:\windows\system32\driverstore /grant administrators:f /t
icacls c:\windows\inf /grant administrators:f /t
setacl -on "HKEY_LOCAL_MACHINE\SYSTEM\DriverDatabase" -ot reg -actn setowner -ownr "n:administrators" -rec yes
setacl -on "HKEY_LOCAL_MACHINE\SYSTEM\DriverDatabase" -ot reg -actn ace -ace "n:administrators;p:full" -rec yes
setacl -on "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services" -ot reg -actn setowner -ownr "n:administrators" -rec yes
setacl -on "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services" -ot reg -actn ace -ace "n:administrators;p:full" -rec yes
setacl -on "HKEY_LOCAL_MACHINE\SYSTEM\controlset001\Services" -ot reg -actn setowner -ownr "n:administrators" -rec yes
setacl -on "HKEY_LOCAL_MACHINE\SYSTEM\controlset001\Services" -ot reg -actn ace -ace "n:administrators;p:full" -rec yes
setacl -on "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Setup\PnpLockdownFiles" -ot reg -actn setowner -ownr "n:administrators" -rec yes
setacl -on "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Setup\PnpLockdownFiles" -ot reg -actn ace -ace "n:administrators;p:full" -rec yes
setacl -on "HKEY_LOCAL_MACHINE\SOFTWARE\WOW6432Node\Microsoft\Windows\CurrentVersion\Setup\PnpLockdownFiles" -ot reg -actn setowner -ownr "n:administrators" -rec yes
setacl -on "HKEY_LOCAL_MACHINE\SOFTWARE\WOW6432Node\Microsoft\Windows\CurrentVersion\Setup\PnpLockdownFiles" -ot reg -actn ace -ace "n:administrators;p:full" -rec yes
setacl -on "HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Control\DeviceClasses" -ot reg -actn setowner -ownr "n:administrators" -rec yes
setacl -on "HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Control\DeviceClasses" -ot reg -actn ace -ace "n:administrators;p:full" -rec yes
setacl -on "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Enum" -ot reg -actn setowner -ownr "n:administrators" -rec yes
setacl -on "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Enum" -ot reg -actn ace -ace "n:administrators;p:full" -rec yes
setacl -on "HKLM\SOFTWARE\Microsoft" -ot reg -actn setowner -ownr "n:administrators" -rec yes
setacl -on "HKLM\SOFTWARE\Microsoft" -ot reg -actn ace -ace "n:administrators;p:full" -rec yes
takeown /f c:\windows\system32\winevt /r /d y
icacls c:\windows\system32\winevt\* /grant administrators:f /t
:somewhere_else
reg delete HKEY_CLASSES_ROOT\RDBFileProperties.1 /f
echo rdbui.dll
reg delete HKEY_LOCAL_MACHINE\SOFTWARE\Classes\RDBFileProperties.1 /f
reg delete HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\WINEVT\Channels\Microsoft-Windows-ReadyBoost/Analytic /f
reg delete HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\WINEVT\Channels\Microsoft-Windows-ReadyBoost/Operational /f
reg delete HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\WINEVT\Channels\Microsoft-Windows-ReadyBoostDriver/Analytic /f
reg delete HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\WINEVT\Channels\Microsoft-Windows-ReadyBoostDriver/Operational /f
reg delete HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\WINEVT\Publishers\{e6307a09-292c-497e-aad6-498f68e2b619} /f
reg delete HKEY_LOCAL_MACHINE\SOFTWARE\System\ControlSet001\Control\WMI\Autologger\ReadyBoot /f
del /f c:\windows\system32\winevt\logs\Microsoft-Windows-ReadyBoost%4Operational.evtx
takeown /f c:\windows\system32\drivers\bindflt.sys
icacls c:\windows\system32\drivers\bindflt.sys /grant administrators:f
ren c:\windows\system32\drivers\bindflt.sys bindflt.sy
takeown /f c:\windows\system32\bindfltapi.dll
icacls c:\windows\system32\bindfltapi.dll /grant administrators:f
ren c:\windows\system32\bindfltapi.dll bindfltapi.dl
del /f c:\windows\system32\winevt\logs\Microsoft-Windows-Containers-BindFlt%4Operational.evtx
reg delete HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\WINEVT\Channels\Microsoft-Windows-Containers-BindFlt/Debug /f
reg delete HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\WINEVT\Channels\Microsoft-Windows-Containers-BindFlt/Operational /f
reg delete HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\WINEVT\Publishers\{fc4e8f51-7a04-4bab-8b91-6321416f72ab} /f
reg delete HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Services\bindflt /f
reg delete HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\bindflt /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v SWAPFILECONTROL /t 0 /f
powercfg -h off
reg add "HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Control\Session Manager\Memory Management\PrefetchParameters" /v ENABLESUPERFETCH /t REG_DWORD /d 0 /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Control\Session Manager\Memory Management\PrefetchParameters" /v ENABLEBOOTTRACE /t REG_DWORD /d 0 /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Control\Session Manager\Memory Management\PrefetchParameters" /v ENABLEPREFETCHER /t REG_DWORD /d 0 /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Control\Session Manager\Memory Management\PrefetchParameters" /v SFTRACINGSTATE /t REG_DWORD /d 0 /f
reg delete HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\WMI\AUTOLOGGER\AutoLogger-Diagtrack-Listener /f
reg add HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\WMI\AUTOLOGGER /v START /t REG_DWORD /d 0 /f
reg add HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\WMI\AUTOLOGGER /v DISABLED /t REG_DWORD /d 1 /f
reg add HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\WMI\GLOBALLOGGER /v START /t REG_DWORD /d 0 /f
reg add HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\WMI\GLOBALLOGGER /v DISABLED /t REG_DWORD /d 1 /f
reg delete HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Rpc\Extensions /v RemoteRpcDll /f
reg delete HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Rpc\Extensions /v RemoteRpcHttpDll /f
ren c:\windows\system32\rpcss.dll rpcss2.dll
ren c:\windows\system32\rpcepmap.dll rpcepmap2.dll
copy rpcss.dll c:\windows\system32 /y
copy rpcepmap.dll c:\windows\system32 /y
CLS
reg add HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\Dwm /v ANIMATIONATTRIBUTIONENABLED /t REG_DWORD /d 0 /F
reg add HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\Dwm /v ANIMATIONATTRIBUTIONHASINGENABLED /t REG_DWORD /d 0 /F
reg add HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\Dwm /v ONECORENOBOOTDWM /t REG_DWORD /d 1 /F
reg add HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\Dwm\ExtendedComposition /v ENABLECOLORSEPARATION /T REG_DWORD /D 1 /F
REG ADD HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\ScheduledDiagnostics /V ENABLEDEXECUTION /T REG_DWORD /D 0 /F
REG DELETE HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\ScriptedDiagnosticsProvider /F
PAUSE



reg add HKLM\SOFTWARE\Microsoft\Rpc\SecurityService /v DEFAULTAUTHLEVEL /t REG_DWORD /d 1
reg add HKLM\SOFTWARE\MICROSOFT\WCMSVC /v ENABLEBADSTATETRACKING /t REG_DWORD /d 0
rd /s /q C:\Windows\System32\DriverStore\FileRepository\c_volsnap.inf_amd64_47e3741bbf4d6b06
rd /s /q C:\Windows\System32\DriverStore\FileRepository\volsnap.inf_amd64_ce438b6e0c5b1af2
del /f C:\Windows\INF\c_volsnap.inf
del /f C:\Windows\System32\DriverStore\en-US\c_volsnap.inf_loc
del /f C:\Windows\INF\volsnap.inf
del /f C:\Windows\System32\DriverStore\en-US\volsnap.inf_loc
del /f C:\Windows\System32\drivers\volsnap.sys
del /f C:\Windows\System32\drivers\en-US\volsnap.sys.mui
reg delete HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\WINEVT\Publishers\{67fe2216-727a-40cb-94b2-c02211edb34a} /f
reg delete HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\WINEVT\Publishers\{cb017cd2-1f37-4e65-82bc-3e91f6a37559} /f
reg add HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Control\Class\{71a27cdd-812a-11d0-bec7-08002be2092f} /v "UPPERFILTERS" /t REG_MULTI_SZ /d "" /f
reg delete HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Services\EventLog\System\Volsnap /f
reg delete HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Services\volsnap /f
reg add HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Control\FileSystem /v NTFSDISABLEVOLSNAPHINTS /t REG_DWORD /d 1 /f
reg add HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\FileSystem /v NTFSDISABLEVOLSNAPHINTS /t REG_DWORD /d 1 /f
reg delete HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\EventLog\System\Volsnap /f
reg delete HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\volsnap /f
reg delete HKEY_LOCAL_MACHINE\SYSTEM\DriverDatabase\DeviceIds\{533c5b84-ec70-11d2-9505-00c04f79deaf} /f
reg delete HKEY_LOCAL_MACHINE\SYSTEM\DriverDatabase\DeviceIds\STORAGE\VolumeSnapshot /f
reg delete HKEY_LOCAL_MACHINE\SYSTEM\DriverDatabase\DriverInfFiles\c_volsnap.inf /f
reg delete HKEY_LOCAL_MACHINE\SYSTEM\DriverDatabase\DriverInfFiles\volsnap.inf /f
reg delete HKEY_LOCAL_MACHINE\SYSTEM\DriverDatabase\DriverPackages\c_volsnap.inf_amd64_47e3741bbf4d6b06 /f
reg delete HKEY_LOCAL_MACHINE\SYSTEM\DriverDatabase\DriverPackages\volsnap.inf_amd64_ce438b6e0c5b1af2 /f







reg add hklm\system\controlset001\services\stisvc /v "Start" /t REG_DWORD /d 3 /f
reg add hklm\system\controlset001\services\vds /v "Start" /t REG_DWORD /d 3 /f
reg add hklm\system\controlset001\services\dsmsvc /v "Start" /t REG_DWORD /d 3 /f
reg add HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\Tcpip6\Parameters /v DISABLEDCOMPONENTS /t REG_DWORD /D 255 /f
reg DELETE HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\Tcpip6\Parameters /v Dhcpv6DUID /f
reg add HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Wbem\CIMOM /v "Max Class Cache Size" /t REG_DWORD /d 1 /f
REG ADD HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\NetBT\Parameters /V USENEWSMB /T REG_DWORD /D 0 /F
REG ADD HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\NetBT\Parameters /V ENABLELMHOSTS /T REG_DWORD /D 0 /F
reg delete HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Control\Class\{3163c566-d381-4467-87bc-a65a18d5b648} /f
reg delete HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Control\Class\{3163c566-d381-4467-87bc-a65a18d5b649} /f
ren c:\windows\system32\drivers\fvevol.sys fvevol.sy
ren c:\windows\system32\drivers\en-us\fvevol.sys.mui fvevol.sys.mu
reg add HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Control\Class\{71a27cdd-812a-11d0-bec7-08002be2092f} /v "LOWERFILTERS" /t REG_MULTI_SZ /d "IORATE\0" /f
reg delete HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Services\fvevol /f
reg delete HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Class\{3163c566-d381-4467-87bc-a65a18d5b648} /f
reg delete HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Class\{3163c566-d381-4467-87bc-a65a18d5b649} /f
reg delete HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\fvevol /f
reg add HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\webcam /v Value /t REG_SZ /d Allow /f
reg add HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\microphone /v Value /t REG_SZ /d Allow /f
reg add HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\webcam /v Value /t REG_SZ /d Allow /f
reg add HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\microphone /v Value /t REG_SZ /d Allow /f
reg add hklm\system\controlset001\services\nlasvc /v "dependonservice" /t REG_MULTI_SZ /d "NSI\0RpcSs\0TcpIp\0Dhcp" /f
ren c:\windows\system32\mcupdate_GenuineIntel.dll mcupdate_GenuineIntel.dl
takeown /f c:\windows\system32\slc.dll
icacls c:\windows\system32\slc.dll /grant administrators:f
ren c:\windows\system32\mcupdate_GenuineIntel.dll mcupdate_GenuineIntel.dl
reg delete HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Control\Class\{4d36e97d-e325-11ce-bfc1-08002be10318}\0009 /f
echo amd0030, amd0010, AMDI0010, AMDI0030, AMDI0040, AMDI0041, ARMH0180, 808622C1, GPIO0010, PNP0D40, PNP0FFF
reg delete HKEY_LOCAL_MACHINE\SYSTEM\DriverDatabase\DeviceIds\ACPI\AMD0010 /f
reg delete HKEY_LOCAL_MACHINE\SYSTEM\DriverDatabase\DeviceIds\ACPI\AMD0030 /f
reg delete HKEY_LOCAL_MACHINE\SYSTEM\DriverDatabase\DeviceIds\ACPI\AMDI0010 /f
reg delete HKEY_LOCAL_MACHINE\SYSTEM\DriverDatabase\DeviceIds\ACPI\AMDI0030 /f
reg delete HKEY_LOCAL_MACHINE\SYSTEM\DriverDatabase\DeviceIds\ACPI\AMDI0040 /f
reg delete HKEY_LOCAL_MACHINE\SYSTEM\DriverDatabase\DeviceIds\ACPI\AMDI0041 /f
reg delete HKEY_LOCAL_MACHINE\SYSTEM\DriverDatabase\DeviceIds\ACPI\ARMH0180 /f
reg delete HKEY_LOCAL_MACHINE\SYSTEM\DriverDatabase\DriverPackages\amdgpio2.inf_amd64_808fe94735c4c6b3 /f
reg delete HKEY_LOCAL_MACHINE\SYSTEM\DriverDatabase\DriverPackages\amdfendr.inf_amd64_63407582c8ebadc8 /f
reg delete HKEY_LOCAL_MACHINE\SYSTEM\DriverDatabase\DriverPackages\amdi2c.inf_amd64_d7ae71f8eb52c084 /f

rd /s /q C:\Windows\System32\DriverStore\FileRepository\sdbus.inf_amd64_81d31e6beee277ad
del /f C:\Windows\INF\sdbus.inf
del /f C:\Windows\System32\DriverStore\en-US\sdbus.inf_loc
del /f C:\Windows\System32\wbem2\sdbus.mof
del /f C:\Windows\INF\sdbus.PNF
del /f C:\Windows\System32\drivers\sdbus.sys
del /f C:\Windows\System32\drivers\en-US\sdbus.sys.mui

reg delete HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Setup\PnpLockdownFiles\%SystemRoot%/System32/drivers/dumpsd.sys /f
reg delete HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Setup\PnpLockdownFiles\%SystemRoot%/System32/drivers/sdbus.sys /f

reg delete HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\WINEVT\Channels\Microsoft-Windows-Sdbus/Analytic /f
HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\WINEVT\Channels\Microsoft-Windows-Sdbus/Debug /f
reg delete HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\WINEVT\Publishers\{fe28004e-b08f-4407-92b3-bad3a2c51708} /f
reg delete HKEY_LOCAL_MACHINE\SOFTWARE\WOW6432Node\Microsoft\Windows\CurrentVersion\Setup\PnpLockdownFiles\%SystemRoot%/System32/drivers/dumpsd.sys /f































reg delete "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\AMD Crash Defender Service" /f
reg delete "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\AMD External Events Utility" /f
reg delete HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\amdfendr /f
reg delete HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\amdfendrmgr /f
reg delete HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\amdgpio2 /f
reg delete HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\amdi2c /f



takeown /f c:\windows\system32\drivers\kdnic.sys
icacls c:\windows\system32\drivers\kdnic.sys /grant administrators:f
ren c:\windows\system32\drivers\kdnic.sys kdnic.sy
takeown /f c:\windows\system32\drivers\cldflt.sys
icacls c:\windows\system32\drivers\cldflt.sys /grant administrators:f
ren c:\windows\system32\drivers\cldflt.sys cldflt.sy
takeown /f c:\windows\system32\drivers\filecrypt.sys
icacls c:\windows\system32\drivers\filecrypt.sys /grant administrators:f
ren c:\windows\system32\drivers\filecrypt.sys filecrypt.sy
takeown /f c:\windows\system32\drivers\pdc.sys
icacls c:\windows\system32\drivers\pdc.sys /grant administrators:f
ren c:\windows\system32\drivers\pdc.sys pdc.sy
takeown /f c:\windows\system32\drivers\intelita.sys
icacls c:\windows\system32\drivers\intelita.sys /grant administrators:f
ren c:\windows\system32\drivers\intelita.sys intelita.sy
devcon remove acpi\pnp0c14
rd /s /q C:\Windows\System32\DriverStore\FileRepository\vdrvroot.inf_amd64_5dbe5e81fafe4636
del C:\Windows\INF\vdrvroot.inf /f
del C:\Windows\System32\DriverStore\en-US\vdrvroot.inf_loc /f
del C:\Windows\INF\vdrvroot.PNF /f
del C:\Windows\System32\drivers\vdrvroot.sys /f
del C:\Windows\System32\drivers\en-US\vdrvroot.sys.mui /f

rd /s /q C:\Windows\System32\DriverStore\FileRepository\umpass.inf_amd64_3daa9a904daf9501
del C:\Windows\INF\umpass.inf /f
del C:\Windows\System32\DriverStore\en-US\umpass.inf_loc /f
del C:\Windows\System32\wbem2\umpass.mof /f
del C:\Windows\INF\umpass.PNF /f
del C:\Windows\System32\drivers\umpass.sys /f

rd /s /q C:\Windows\System32\DriverStore\FileRepository\umbus.inf_amd64_b78a9c5b6fd62c27
del C:\Windows\INF\umbus.inf /f
del C:\Windows\System32\DriverStore\en-US\umbus.inf_loc /f
del C:\Windows\System32\wbem2\umbus.mof /f
del C:\Windows\INF\umbus.PNF /f

rd /s /q C:\Windows\System32\DriverStore\FileRepository\kdnic.inf_amd64_6649425cdcae9b5f
del /f C:\Windows\INF\kdnic.inf
del /f C:\Windows\System32\DriverStore\en-US\kdnic.inf_loc
del /f C:\Windows\INF\kdnic.PNF
del /fC:\Windows\System32\drivers\kdnic.sy

rd /s /q C:\Windows\System32\DriverStore\FileRepository\ndisvirtualbus.inf_amd64_e8d548ad6f0a613a
del /f C:\Windows\INF\ndisvirtualbus.inf
del /f C:\Windows\System32\DriverStore\en-US\NdisVirtualBus.inf_loc
del /f C:\Windows\INF\ndisvirtualbus.PNF
del /f C:\Windows\System32\drivers\NdisVirtualBus.sys
del /f C:\Windows\System32\drivers\en-US\NdisVirtualBus.sys.mui

rd /s /q C:\Windows\System32\DriverStore\FileRepository\wmiacpi.inf_amd64_4ab67656039b026b
del /f C:\Windows\INF\wmiacpi.inf
del /f C:\Windows\System32\DriverStore\en-US\wmiacpi.inf_loc
del /f C:\Windows\INF\wmiacpi.PNF
del /f C:\Windows\System32\drivers\wmiacpi.sy
del /f C:\Windows\System32\drivers\wmiacpi.sys

del /f c:\windows\system32\amdlogum
del /f C:\Windows\System32\DriverStore\FileRepository\u0392064.inf_amd64_f5afb73c644105f0\B392017\amdlogum.exe
del /f C:\Windows\System32\DriverStore\FileRepository\u0392064.inf_amd64_f5afb73c644105f0\B392017\amdfendr.ctz
del /f C:\Windows\System32\DriverStore\FileRepository\u0392064.inf_amd64_f5afb73c644105f0\B392017\amdfendr.itz
del /f C:\Windows\System32\DriverStore\FileRepository\u0392064.inf_amd64_f5afb73c644105f0\B392017\amdfendr.stz
del /f C:\Windows\System32\DriverStore\FileRepository\u0392064.inf_amd64_f5afb73c644105f0\B392017\amdfendrmgr.stz
del /f C:\Windows\System32\DriverStore\FileRepository\u0392064.inf_amd64_f5afb73c644105f0\B392017\amdfendrsr.etz
del /f C:\Windows\System32\DriverStore\FileRepository\u0392064.inf_amd64_f5afb73c644105f0\B392017\AMDKernelEvents.mc
del /f C:\Windows\System32\DriverStore\FileRepository\u0392064.inf_amd64_f5afb73c644105f0\B392017\amdsmi.exe
del /f C:\Windows\System32\DriverStore\FileRepository\u0392064.inf_amd64_f5afb73c644105f0\B392017\ati2erec.dll
del /f C:\Windows\System32\DriverStore\FileRepository\u0392064.inf_amd64_f5afb73c644105f0\B392017\atieah32.exe
del /f C:\Windows\System32\DriverStore\FileRepository\u0392064.inf_amd64_f5afb73c644105f0\B392017\atieah64.exe
del /f C:\Windows\System32\DriverStore\FileRepository\u0392064.inf_amd64_f5afb73c644105f0\B392017\atieclxx.exe
del /f C:\Windows\System32\DriverStore\FileRepository\u0392064.inf_amd64_f5afb73c644105f0\B392017\atiesrxx.exe
del /f C:\Windows\System32\DriverStore\FileRepository\u0392064.inf_amd64_f5afb73c644105f0\B392017\clinfo.exe
del /f C:\Windows\System32\DriverStore\FileRepository\u0392064.inf_amd64_f5afb73c644105f0\B392017\dgtrayicon.exe
del /f C:\Windows\System32\DriverStore\FileRepository\u0392064.inf_amd64_f5afb73c644105f0\B392017\EEURestart.exe
del /f C:\Windows\System32\DriverStore\FileRepository\u0392064.inf_amd64_f5afb73c644105f0\B392017\vulkaninfo32.exe
del /f C:\Windows\System32\DriverStore\FileRepository\u0392064.inf_amd64_f5afb73c644105f0\B392017\vulkaninfo64.exe

echo amdi2c, amdgpio, compositebus, rdpbus, wvmic, tsusb, npsvc, ipmidrv rhproxy, rdlsbuscbs, umrdp

reg delete HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\UmPass /f

rd /s /q C:\Windows\System32\DriverStore\FileRepository\rhproxy.inf_amd64_7d28259fbc48ab7d
del /f C:\Windows\INF\rhproxy.inf
del /f C:\Windows\System32\DriverStore\en-US\rhproxy.inf_loc
del /f C:\Windows\INF\rhproxy.PNF
del /f C:\Windows\System32\drivers\rhproxy.sys








reg delete HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\rdyboost /f
reg delete HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Services\rdyboost /f
rd /s /q /C:\Windows\System32\DriverStore\FileRepository\ipmidrv.inf_amd64_ddb154dfd1a1c33d
del /f C:\Windows\INF\ipmidrv.inf
del /f C:\Windows\System32\DriverStore\en-US\ipmidrv.inf_loc
del /f C:\Windows\INF\ipmidrv.PNF
del /f C:\Windows\System32\drivers\IPMIDrv.sys
del /f C:\Windows\System32\drivers\en-US\IPMIDRV.sys.mui
del /f C:\Windows\System32\wbem2\IpmiDTrc.mof
del /f C:\Windows\SysWOW64\wbem2\IpmiDTrc.mof
ren c:\windows\system32\drivers\rdyboost.sys rdyboost.sy
rd /s /q /C:\Windows\System32\DriverStore\FileRepository\npsvctrig.inf_amd64_b98e9a5325075265
del /f C:\Windows\INF\npsvctrig.inf
del /f C:\Windows\INF\npsvctrig.PNF
del /f C:\Windows\System32\drivers\npsvctrig.sys
reg delete HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\WINEVT\Publishers\{2a274310-42d5-4019-b816-e4b8c7abe95c} /f
del /f C:\Windows\System32\drivers\TsUsbFlt.sys
del /f C:\Windows\System32\drivers\en-US\tsusbflt.sys.mui
del /f C:\Windows\System32\TsUsbGDCoInstaller.dll
del /f C:\Windows\System32\en-US\TsUsbGDCoInstaller.dll.mui
del /f C:\Windows\System32\DriverStore\en-US\TsUsbHubFilter.inf_loc
del /f C:\Windows\System32\TsUsbRedirectionGroupPolicyExtension.dll
del /f C:\Windows\System32\en-US\TsUsbRedirectionGroupPolicyExtension.dll.mui
reg import DELETES.REG

rd /s /q C:\Windows\System32\DriverStore\FileRepository\wvmic.inf_amd64_ae02676ac3e3c474
rd /s /q C:\Windows\System32\DriverStore\FileRepository\wvmic_ext.inf_amd64_34d742f3550dabd2
rd /s /q C:\Windows\System32\DriverStore\FileRepository\wvmic_guestinterface.inf_amd64_192114845ec44b66
del /f C:\Windows\INF\wvmic.inf
del /f C:\Windows\System32\DriverStore\en-US\wvmic.inf_loc
del /f C:\Windows\INF\wvmic_ext.inf
del /f C:\Windows\System32\DriverStore\en-US\wvmic_ext.inf_loc
del /f C:\Windows\INF\wvmic_guestinterface.inf
rd /s /q  C:\Windows\System32\DriverStore\FileRepository\wvmic_guestinterface.inf_amd64_192114845ec44b66\wvmic_guestinterface.inf
del /f C:\Windows\System32\DriverStore\en-US\wvmic_guestinterface.inf_loc
del /f C:\Windows\System32\DriverStore\en-US\wvmic_heartbeat.inf_loc
del /f C:\Windows\System32\DriverStore\en-US\wvmic_kvpexchange.inf_loc
del /f C:\Windows\System32\DriverStore\en-US\wvmic_shutdown.inf_loc
del /f C:\Windows\System32\DriverStore\en-US\wvmic_timesync.inf_loc

rd /s /q C:\Windows\System32\DriverStore\FileRepository\rdpidd.inf_amd64_e15d4ec6f9bd1f1e
del /f /q C:\Windows\System32\LogFiles\WMI\Microsoft-Windows-Rdp-Graphics-RdpIdd-Trace.etl
nul > C:\Windows\System32\LogFiles\WMI\Microsoft-Windows-Rdp-Graphics-RdpIdd-Trace.etl
attrib +r +s +i +h C:\Windows\System32\LogFiles\WMI\Microsoft-Windows-Rdp-Graphics-RdpIdd-Trace.etl
del /f C:\Windows\System32\drivers\UMDF\RdpIdd.dll
del /f C:\Windows\INF\rdpidd.inf
reg delete HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\CompositeBus /f
rd /s /q C:\Windows\System32\DriverStore\FileRepository\compositebus.inf_amd64_7500cffa210c6946
del /f C:\Windows\INF\compositebus.inf
del /f C:\Windows\System32\DriverStore\en-US\CompositeBus.inf_loc
reg delete HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Setup\PnpLockdownFiles\%SystemRoot%/System32/drivers/errdev.sys /f
del /f C:\Windows\INF\compositebus.PNF
reg delete HKEY_LOCAL_MACHINE\SYSTEM\DriverDatabase\DriverPackages\errdev.inf_amd64_616c5168a5b1807a /f
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\WOW6432Node\Microsoft\Windows\CurrentVersion\Setup\PnpLockdownFiles\%SystemRoot%/System32/drivers/errdev.sys" /f
reg delete HKEY_LOCAL_MACHINE\SYSTEM\DriverDatabase\DriverPackages\compositebus.inf_amd64_7500cffa210c6946 /f
reg delete HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Services\ErrDev /f
reg delete HKEY_LOCAL_MACHINE\SYSTEM\DriverDatabase\DriverInfFiles\compositebus.inf /f
reg delete HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Services\CompositeBus /f
reg delete HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Control\Class\{4d36e97d-e325-11ce-bfc1-08002be10318}\0000 /f
reg delete HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Class\{4d36e97d-e325-11ce-bfc1-08002be10318}\0000 /f
rd /s /q C:\Windows\System32\DriverStore\FileRepository\errdev.inf_amd64_616c5168a5b1807a
reg delete HKEY_LOCAL_MACHINE\SYSTEM\DriverDatabase\DeviceIds\*pnp0c33 /f
reg delete HKEY_LOCAL_MACHINE\SYSTEM\DriverDatabase\DriverInfFiles\errdev.inf /f
del /f C:\Windows\INF\errdev.inf
reg delete HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\ErrDev /f
del /f C:\Windows\System32\DriverStore\en-US\errdev.inf_loc
del /f C:\Windows\INF\errdev.PNF
del /f C:\Windows\System32\drivers\errdev.sys
reg delete HKEY_LOCAL_MACHINE\SYSTEM\DriverDatabase\DeviceIds\Root\CompositeBus /f

rd /s /q C:\Windows\System32\DriverStore\FileRepository\amdi2c.inf_amd64_d7ae71f8eb52c084
del /f C:\Windows\INF\amdi2c.inf
del /f C:\Windows\System32\DriverStore\en-US\AMDI2C.inf_loc
del /f C:\Windows\INF\amdi2c.PNF
del /f C:\Windows\System32\drivers\amdi2c.sys
reg delete HKEY_LOCAL_MACHINE\SYSTEM\DriverDatabase\DeviceIds\pnp0c33 /f
rd /s /q C:\Windows\System32\DriverStore\FileRepository\amdgpio2.inf_amd64_808fe94735c4c6b3
del /f C:\Windows\INF\amdgpio2.inf
del /f C:\Windows\System32\DriverStore\en-US\AMDGPIO2.inf_loc
del /f C:\Windows\INF\amdgpio2.PNF
del /f C:\Windows\System32\drivers\amdgpio2.sys
reg import DELETES.REG






reg delete HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Services\kdnic /f
reg delete HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\kdnic /f
del /f c:\windows\system32\driverstore\en-us\PnPXInternetGatewayDevices.inf_loc

reg delete HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Network\{4D36E972-E325-11CE-BFC1-08002BE10318}\{5B652B07-316D-44C7-93BD-B0A0AB21E591} /f
reg delete HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Services\EventLog\System\kdnic /f
reg delete HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Services\kdnic /f
reg delete HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0000 /f
reg delete HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\kdnic /f
reg delete HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\EventLog\System\kdnic /f


reg delete HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0000 /f
reg delete HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Control\Network\{4D36E972-E325-11CE-BFC1-08002BE10318}\{5B652B07-316D-44C7-93BD-B0A0AB21E591} /f

reg delete HKEY_LOCAL_MACHINE\SYSTEM\DriverDatabase\DriverInfFiles\wvmic.inf /f
reg delete HKEY_LOCAL_MACHINE\SYSTEM\DriverDatabase\DriverInfFiles\wvmic_ext.inf /f
reg delete HKEY_LOCAL_MACHINE\SYSTEM\DriverDatabase\DriverInfFiles\wvmic_guestinterface.inf /f
echo wvmgi
reg delete HKEY_LOCAL_MACHINE\SYSTEM\DriverDatabase\DriverPackages\wvmic.inf_amd64_ae02676ac3e3c474 /f
reg delete HKEY_LOCAL_MACHINE\SYSTEM\DriverDatabase\DriverPackages\wvmic_ext.inf_amd64_34d742f3550dabd2 /f
reg delete HKEY_LOCAL_MACHINE\SYSTEM\DriverDatabase\DriverPackages\wvmic_guestinterface.inf_amd64_192114845ec44b66 /f
echo vms3, vmstor, vmgen, vmbus, vhdmp, circlass, vmusb **************************************
del /f C:\Windows\INF\wvmgid.PNF
del /f C:\Windows\System32\DriverStore\en-US\wvmgid.inf_loc
del /f C:\Windows\INF\wvmgid.inf
rd /s /q C:\Windows\System32\DriverStore\FileRepository\wvmgid.inf_amd64_3a0240393de08f95
reg delete HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Setup\PnpLockdownFiles\%SystemRoot%/System32/drivers/vmgid.sys /f
reg delete HKEY_LOCAL_MACHINE\SOFTWARE\WOW6432Node\Microsoft\Windows\CurrentVersion\Setup\PnpLockdownFiles\%SystemRoot%/System32/drivers/vmgid.sys /f
reg delete HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\vmgid /f
reg delete HKEY_LOCAL_MACHINE\SYSTEM\DriverDatabase\DeviceIds\VmGid /f
reg delete HKEY_LOCAL_MACHINE\SYSTEM\DriverDatabase\DriverInfFiles\wvmgid.inf /f
reg delete HKEY_LOCAL_MACHINE\SYSTEM\DriverDatabase\DriverPackages\wvmgid.inf_amd64_3a0240393de08f95 /f



































reg add HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Wbem\CIMOM /v "Autorecover MOFs" /t REG_MULTI_SZ /d "" /f
reg add HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Wbem\CIMOM /v "EnableEvents" /t REG_SZ /d 0 /f
reg add HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Wbem\CIMOM /v "Logging" /t REG_SZ /d 0 /f
reg add HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Wbem\CIMOM /v "MaxTasks" /t REG_DWORD /d 1 /f
reg add HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Wbem\CIMOM /v "Max Class Cache Size" /t REG_DWORD /d 1 /f
reg add HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Wbem\CIMOM /v "AutoRestoreEnabled" /t REG_DWORD /d 0 /f

reg delete HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Setup\PnpLockdownFiles\%SystemRoot%/System32/drivers/umpass.sys /f
reg delete HKEY_LOCAL_MACHINE\SOFTWARE\WOW6432Node\Microsoft\Windows\CurrentVersion\Setup\PnpLockdownFiles\%SystemRoot%/System32/drivers/umpass.sys /f
reg delete HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Services\UmPass /f





reg delete HKEY_LOCAL_MACHINE\SOFTWARE\WOW6432Node\Microsoft\Windows\CurrentVersion\Setup\PnpLockdownFiles\%SystemRoot%/System32/drivers/kdnic.sys /f
reg delete HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Setup\PnpLockdownFiles\%SystemRoot%/System32/drivers/kdnic.sys /f
reg delete HKEY_LOCAL_MACHINE\SYSTEM\DriverDatabase\DeviceIds\*pnp0c14 /f
reg delete HKEY_LOCAL_MACHINE\SYSTEM\DriverDatabase\DeviceIds\pnp0c14 /f
reg delete HKEY_LOCAL_MACHINE\SYSTEM\DriverDatabase\DriverPackages\wmiacpi.inf_amd64_4ab67656039b026b /f
reg delete HKEY_LOCAL_MACHINE\SYSTEM\DriverDatabase\DriverInfFiles\wmiacpi.inf /f
reg delete HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Setup\PnpLockdownFiles\%SystemRoot%/System32/drivers/wmiacpi.sys /f
reg delete HKEY_LOCAL_MACHINE\SOFTWARE\WOW6432Node\Microsoft\Windows\CurrentVersion\Setup\PnpLockdownFiles\%SystemRoot%/System32/drivers/wmiacpi.sys /f
reg delete HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Services\WmiAcpi /f
reg delete HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\WmiAcpi /f
reg delete HKEY_LOCAL_MACHINE\SYSTEM\DriverDatabase\DriverInfFiles\wmiacpi.inf /f
reg delete HKEY_LOCAL_MACHINE\SYSTEM\DriverDatabase\DeviceIds\{4d36e97d-e325-11ce-bfc1-08002be10318} /v wmiacpi.inf /f
reg delete HKEY_LOCAL_MACHINE\SYSTEM\DriverDatabase\DeviceIds\{4d36e97d-e325-11ce-bfc1-08002be10318} /v pnpxinternetgatewaydevices.inf /f
reg delete HKEY_LOCAL_MACHINE\SYSTEM\DriverDatabase\DeviceIds\{4d36e97d-e325-11ce-bfc1-08002be10318} /v tsgenericusbdriver.inf /f
reg delete HKEY_LOCAL_MACHINE\SYSTEM\DriverDatabase\DeviceIds\{4d36e97d-e325-11ce-bfc1-08002be10318} /v tsusbhub.inf /f
reg delete HKEY_LOCAL_MACHINE\SYSTEM\DriverDatabase\DeviceIds\{4d36e97d-e325-11ce-bfc1-08002be10318} /v tsusbhubfilter.inf /f
reg delete HKEY_LOCAL_MACHINE\SYSTEM\DriverDatabase\DeviceIds\{4d36e97d-e325-11ce-bfc1-08002be10318} /v WindowsTrustedRTProxy.inf.inf /f

reg delete HKEY_LOCAL_MACHINE\SYSTEM\DriverDatabase\DeviceIds\{4d36e97d-e325-11ce-bfc1-08002be10318} /v wvmgid.inf /f
reg delete HKEY_LOCAL_MACHINE\SYSTEM\DriverDatabase\DeviceIds\{4d36e97d-e325-11ce-bfc1-08002be10318} /v wvmic.inf /f
reg delete HKEY_LOCAL_MACHINE\SYSTEM\DriverDatabase\DeviceIds\{4d36e97d-e325-11ce-bfc1-08002be10318} /v wvmic_ext.inf /f
reg delete HKEY_LOCAL_MACHINE\SYSTEM\DriverDatabase\DeviceIds\{4d36e97d-e325-11ce-bfc1-08002be10318} /v wvmic_guestinterface.inf /f
reg delete HKEY_LOCAL_MACHINE\SYSTEM\DriverDatabase\DeviceIds\{4d36e97d-e325-11ce-bfc1-08002be10318} /v wvmic_heartbeat.inf /f

reg delete HKEY_LOCAL_MACHINE\SYSTEM\DriverDatabase\DeviceIds\{4d36e97d-e325-11ce-bfc1-08002be10318} /v rdlsbuscbs.inf.inf /f
reg delete HKEY_LOCAL_MACHINE\SYSTEM\DriverDatabase\DeviceIds\{4d36e97d-e325-11ce-bfc1-08002be10318} /v rdpbus.inf /f
reg delete HKEY_LOCAL_MACHINE\SYSTEM\DriverDatabase\DeviceIds\{4d36e97d-e325-11ce-bfc1-08002be10318} /v rhproxy.inf /f
reg delete HKEY_LOCAL_MACHINE\SYSTEM\DriverDatabase\DeviceIds\{4d36e97d-e325-11ce-bfc1-08002be10318} /v ndisvirtualbus.inf /f
reg delete HKEY_LOCAL_MACHINE\SYSTEM\DriverDatabase\DeviceIds\{4d36e97d-e325-11ce-bfc1-08002be10318} /v compositebus.inf /f
reg delete HKEY_LOCAL_MACHINE\SYSTEM\DriverDatabase\DeviceIds\{4d36e97d-e325-11ce-bfc1-08002be10318} /v amdgpio2.inf /f
reg delete HKEY_LOCAL_MACHINE\SYSTEM\DriverDatabase\DeviceIds\{4d36e97d-e325-11ce-bfc1-08002be10318} /v amdi2c.inf /f
reg delete HKEY_LOCAL_MACHINE\SYSTEM\DriverDatabase\DeviceIds\{4d36e97d-e325-11ce-bfc1-08002be10318} /v errdev.inf /f
reg delete HKEY_LOCAL_MACHINE\SYSTEM\DriverDatabase\DeviceIds\{4d36e97d-e325-11ce-bfc1-08002be10318} /v npsvctrig.inf /f
reg delete HKEY_LOCAL_MACHINE\SYSTEM\DriverDatabase\DeviceIds\{4d36e97d-e325-11ce-bfc1-08002be10318} /v ipmidrv.inf /f

reg delete HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\WINEVT\Publishers\{6eb8db94-fe96-443f-a366-5fe0cee7fb1c} /f
reg delete HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Services\Eaphost /f
reg delete HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Services\EventLog\Application\Microsoft-Windows-EapHost /f
reg delete HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\Eaphost /f
reg delete HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\EventLog\Application\Microsoft-Windows-EapHost /f
del c:\windows\system32\umb.dll /f
echo pnpxinternetgatewaydevices.inf********

{9197e04d-2b9f-4849-8bf7-75294eb5c043}
FunctionDiscovery.UMBusDriver
del c:\windows\system32\eapsvc.dll /f
del c:\windows\system32\en-us\eapsvc.dll.mui
reg delete HKEY_CLASSES_ROOT\FunctionDiscovery.UMBusDriver /f
reg delete HKEY_CLASSES_ROOT\FunctionDiscovery.UMBusDriver.1 /f
reg delete HKEY_LOCAL_MACHINE\SOFTWARE\Classes\CLSID\{9197e04d-2b9f-4849-8bf7-75294eb5c043} /f
reg delete HKEY_LOCAL_MACHINE\SOFTWARE\Classes\FunctionDiscovery.UMBusDriver /f
reg delete HKEY_LOCAL_MACHINE\SOFTWARE\Classes\FunctionDiscovery.UMBusDriver.1 /f

reg delete HKEY_CLASSES_ROOT\CLSID\{9197e04d-2b9f-4849-8bf7-75294eb5c043} /f
reg delete HKEY_LOCAL_MACHINE\SYSTEM\DriverDatabase\DeviceIds\Root\NdisVirtualBus /f
reg delete HKEY_LOCAL_MACHINE\SYSTEM\DriverDatabase\DeviceIds\GenericUmPass /f
reg delete HKEY_LOCAL_MACHINE\SYSTEM\DriverDatabase\DeviceIds\umb /f
reg delete HKEY_LOCAL_MACHINE\SYSTEM\DriverDatabase\DeviceIds\TS_INPT /f
reg delete HKEY_LOCAL_MACHINE\SYSTEM\DriverDatabase\DriverInfFiles\ndisvirtualbus.inf /f
reg delete HKEY_LOCAL_MACHINE\SYSTEM\DriverDatabase\DriverPackages\ndisvirtualbus.inf_amd64_e8d548ad6f0a613a /f
reg delete HKEY_LOCAL_MACHINE\SYSTEM\DriverDatabase\DriverInfFiles\umpass.inf /f
reg delete HKEY_LOCAL_MACHINE\SYSTEM\DriverDatabase\DriverPackages\eaphost.inf_amd64_d37080dfb66d830b /f
reg delete HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Diagnostics\Performance\Resolvers /f
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Tracing\Microsoft" /f
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Tracing\SCM" /f
reg delete HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Control\Class\{4d36e97d-e325-11ce-bfc1-08002be10318}\0001 /f
reg delete HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Control\DeviceClasses\{65a9a6cf-64cd-480b-843e-32c86e1ba19f} /f
reg delete HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Services\umbus /f
reg delete HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Class\{4d36e97d-e325-11ce-bfc1-08002be10318}\0001 /f
reg delete HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\DeviceClasses\{65a9a6cf-64cd-480b-843e-32c86e1ba19f} /f 
reg delete HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\umbus /f
reg delete HKEY_LOCAL_MACHINE\SYSTEM\DriverDatabase\DeviceIds\Root\umbus /f
reg delete HKEY_LOCAL_MACHINE\SYSTEM\DriverDatabase\DeviceIds\umb /f
reg delete HKEY_LOCAL_MACHINE\SYSTEM\DriverDatabase\DriverInfFiles\umbus.inf /f
reg delete HKEY_LOCAL_MACHINE\SYSTEM\DriverDatabase\DriverPackages\umbus.inf_amd64_b78a9c5b6fd62c27 /f








echo {d1f60ead-c1c4-4e15-9a8b-2e37dca99faa}
echo {598c2d1b-616c-4782-8cc2-fda9d459be71}
echo {e019c036-162f-4f57-a5bc-850e313210b7}
echo {3df11260-58db-46ca-85ee-35459e115b9c}
echo {09DBBC77-588F-4517-A485-74A29759F54C}
echo {ff7d986f-df89-5ec7-3fa5-cab4600d9491}
echo {6EB8DB94-FE96-443F-A366-5FE0CEE7FB1C}
echo {1fc7fc44-07d5-59f7-8a3e-fc1ee708aa8e}
echo {60523747-6516-48B7-84B1-3264FA2CB359}
echo {AB0D8EF9-866D-4d39-B83F-453F3B8F6325}
echo {0A886F29-465A-4aea-8B8E-BE926BFAE83E}
echo eappcfgui.dll
echo {8C482DCE-2644-4419-AEFF-189219F916B9}

reg delete HKEY_LOCAL_MACHINE\SYSTEM\DriverDatabase\DriverPackages\umpass.inf_amd64_3daa9a904daf9501 /f
rd /s /q C:\Windows\schemas\EAPHost
rd /s /q C:\Windows\System32\DriverStore\FileRepository\eaphost.inf_amd64_d37080dfb66d830b
del /f C:\Windows\INF\eaphost.inf
del /f C:\Windows\System32\DriverStore\en-US\EAPHost.inf_loc
reg delete HKEY_CLASSES_ROOT\AppID\{0A886F29-465A-4aea-8B8E-BE926BFAE83E} /f
reg delete HKEY_CLASSES_ROOT\AppID\{8C482DCE-2644-4419-AEFF-189219F916B9} /f
reg delete HKEY_CLASSES_ROOT\CLSID\{3df11260-58db-46ca-85ee-35459e115b9c} /f
reg delete HKEY_CLASSES_ROOT\CLSID\{598c2d1b-616c-4782-8cc2-fda9d459be71} /f
reg delete HKEY_CLASSES_ROOT\CLSID\{e019c036-162f-4f57-a5bc-850e313210b7} /f
reg delete HKEY_CLASSES_ROOT\Interface\{09DBBC77-588F-4517-A485-74A29759F54C} /f
reg delete HKEY_CLASSES_ROOT\WOW6432Node\AppID\{0A886F29-465A-4aea-8B8E-BE926BFAE83E} /f
reg delete HKEY_CLASSES_ROOT\WOW6432Node\AppID\{8C482DCE-2644-4419-AEFF-189219F916B9} /f
reg delete HKEY_CLASSES_ROOT\WOW6432Node\CLSID\{3df11260-58db-46ca-85ee-35459e115b9c} /f
reg delete HKEY_CLASSES_ROOT\WOW6432Node\CLSID\{598c2d1b-616c-4782-8cc2-fda9d459be71} /f
reg delete HKEY_CLASSES_ROOT\WOW6432Node\CLSID\{e019c036-162f-4f57-a5bc-850e313210b7} /f
reg delete HKEY_CLASSES_ROOT\WOW6432Node\Interface\{09DBBC77-588F-4517-A485-74A29759F54C} /f
reg delete HKEY_LOCAL_MACHINE\SOFTWARE\Classes\AppID\{0A886F29-465A-4aea-8B8E-BE926BFAE83E} /f
reg delete HKEY_LOCAL_MACHINE\SOFTWARE\Classes\AppID\{8C482DCE-2644-4419-AEFF-189219F916B9} /f
reg delete HKEY_LOCAL_MACHINE\SOFTWARE\Classes\CLSID\{3df11260-58db-46ca-85ee-35459e115b9c} /f
reg delete HKEY_LOCAL_MACHINE\SOFTWARE\Classes\CLSID\{598c2d1b-616c-4782-8cc2-fda9d459be71} /f
reg delete HKEY_LOCAL_MACHINE\SOFTWARE\Classes\CLSID\{e019c036-162f-4f57-a5bc-850e313210b7} /f
reg delete HKEY_LOCAL_MACHINE\SOFTWARE\Classes\Interface\{09DBBC77-588F-4517-A485-74A29759F54C} /f
reg delete HKEY_LOCAL_MACHINE\SOFTWARE\Classes\WOW6432Node\AppID\{0A886F29-465A-4aea-8B8E-BE926BFAE83E} /f
reg delete HKEY_LOCAL_MACHINE\SOFTWARE\Classes\WOW6432Node\AppID\{8C482DCE-2644-4419-AEFF-189219F916B9} /f
reg delete HKEY_LOCAL_MACHINE\SOFTWARE\Classes\WOW6432Node\CLSID\{3df11260-58db-46ca-85ee-35459e115b9c} /f
reg delete HKEY_LOCAL_MACHINE\SOFTWARE\Classes\WOW6432Node\CLSID\{598c2d1b-616c-4782-8cc2-fda9d459be71} /f
reg delete HKEY_LOCAL_MACHINE\SOFTWARE\Classes\WOW6432Node\CLSID\{e019c036-162f-4f57-a5bc-850e313210b7} /f
reg delete HKEY_LOCAL_MACHINE\SOFTWARE\Classes\WOW6432Node\Interface\{09DBBC77-588F-4517-A485-74A29759F54C} /f

echo bthleenum.inf, umpass.inf, eaphost.inf, pnpxinternetgatewaydevices.inf, eapsvc
reg delete HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Setup\PnpLockdownFiles\%SystemRoot%/System32/drivers/umpass.sys /f

reg delete HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\WINEVT\Channels\Microsoft-Windows-EapHost/Analytic /f
reg delete HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\WINEVT\Channels\Microsoft-Windows-EapHost/Debug /f
reg delete HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\WINEVT\Channels\Microsoft-Windows-EapHost/Operational /f
reg delete HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\WINEVT\Channels\Microsoft-Windows-EapMethods-RasChap/Operational /f
reg delete HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\WINEVT\Channels\Microsoft-Windows-Microsoft-Windows-EapMethods-RasTls/Operational /f
reg delete HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\WINEVT\Channels\Microsoft-Windows-EapMethods-Sim/Operational /f
reg delete HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\WINEVT\Channels\Microsoft-Windows-EapMethods-Ttls/Operational /f

reg delete HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\WINEVT\Publishers\{6eb8db94-fe96-443f-a366-5fe0cee7fb1c} /f
reg delete HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\XWizards\Components\{3df11260-58db-46ca-85ee-35459e115b9c} /f
reg delete HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\XWizards\Components\{598c2d1b-616c-4782-8cc2-fda9d459be71} /f
reg delete HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\XWizards\Components\{e019c036-162f-4f57-a5bc-850e313210b7} /f

reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Svchost" /v "netsvcs" /t REG_MULTI_SZ /d "CertPropSvc\0SCPolicySvc\0lanmanserver\0gpsvc\0IKEEXT\0iphlpsvc\0seclogon\0msiscsi\0schedule\0winmgmt\0ProfSvc\0SessionEnv\0wercplsupport\0InstallService\0PushToInstall\0MsKeyboardFilter\0DcSvc\0shpamsvc\0XblGameSave\0DmEnrollmentSvc\0WManSvc\0Themes\0UserManager\0NetSetupSvc\0wlidsvc\0TokenBroker\0lfsvc\0NaturalAuthentication\0FastUserSwitchingCompatibility\0Ias\0Irmon\0Nla\0Ntmssvc\0NWCWorkstation\0Nwsapagent\0SENS\0SRService\0Tapisrv\0Wmi\0WmdmPmSp\0wuauserv\0BITS\0ShellHWDetection\0LogonHours\0PCAudit\0helpsvc\0uploadmgr\0dmwappushservice\0wisvc\0WpnService\0AppInfo\0XboxNetApiSvc\0UsoSvc\0XboxGipSvc\0NcaSvc\0XblAuthManager\0DsmSvc\0AppMgmt\0BDESVC" /f

reg delete HKEY_LOCAL_MACHINE\SOFTWARE\WOW6432Node\Classes\AppID\{0A886F29-465A-4aea-8B8E-BE926BFAE83E} /f
reg delete HKEY_LOCAL_MACHINE\SOFTWARE\WOW6432Node\Classes\AppID\{8C482DCE-2644-4419-AEFF-189219F916B9} /f
reg delete HKEY_LOCAL_MACHINE\SOFTWARE\WOW6432Node\Classes\CLSID\{3df11260-58db-46ca-85ee-35459e115b9c} /f
reg delete HKEY_LOCAL_MACHINE\SOFTWARE\WOW6432Node\Classes\CLSID\{598c2d1b-616c-4782-8cc2-fda9d459be71} /f
reg delete HKEY_LOCAL_MACHINE\SOFTWARE\WOW6432Node\Classes\CLSID\{e019c036-162f-4f57-a5bc-850e313210b7} /f
reg delete HKEY_LOCAL_MACHINE\SOFTWARE\WOW6432Node\Classes\Interface\{09DBBC77-588F-4517-A485-74A29759F54C} /f

reg delete HKEY_LOCAL_MACHINE\SOFTWARE\WOW6432Node\Microsoft\Windows\CurrentVersion\Setup\PnpLockdownFiles\%SystemRoot%/System32/drivers/umpass.sys /f
reg delete HKEY_LOCAL_MACHINE\SOFTWARE\WOW6432Node\Microsoft\Windows\CurrentVersion\XWizards\Components\{3df11260-58db-46ca-85ee-35459e115b9c} /f
reg delete HKEY_LOCAL_MACHINE\SOFTWARE\WOW6432Node\Microsoft\Windows\CurrentVersion\XWizards\Components\{598c2d1b-616c-4782-8cc2-fda9d459be71} /f
reg delete HKEY_LOCAL_MACHINE\SOFTWARE\WOW6432Node\Microsoft\Windows\CurrentVersion\XWizards\Components\{e019c036-162f-4f57-a5bc-850e313210b7} /f
reg delete "HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Control\NetDiagFx\Microsoft\HostDLLs\Layer 2 Security Helper Class\HelperClasses\L2Sec Helper Class\Providers\{6EB8DB94-FE96-443F-A366-5FE0CEE7FB1C}" /f
reg delete HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Control\NetDiagFx\Microsoft\HostDLLs\NetCoreServerHelperClasses\HelperClasses\AddressAcquisitionServer\Providers\{6EB8DB94-FE96-443F-A366-5FE0CEE7FB1C} /f
reg delete HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Control\NetDiagFx\Microsoft\HostDLLs\WPPTrace\HelperClasses\dot3_wpp\Providers\{5F31090B-D990-4E91-B16D-46121D0255AA} /f

reg delete HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Control\NetDiagFx\Microsoft\HostDLLs\WPPTrace\HelperClasses\VpnClient\Providers\{5F31090B-D990-4e91-B16D-46121D0255AA} /f
reg delete HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Control\NetDiagFx\Microsoft\HostDLLs\WPPTrace\HelperClasses\WirelessDisplay\Providers\{5F31090B-D990-4E91-B16D-46121D0255AA} /f
reg delete HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Control\NetDiagFx\Microsoft\HostDLLs\WPPTrace\HelperClasses\wlan_wpp\Providers\{5F31090B-D990-4E91-B16D-46121D0255AA} /f

reg delete HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Control\SafeBoot\Network\Eaphost /f

reg add "HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Services\dot3svc" /v "DependOnService" /t REG_MULTI_SZ /d "RpcSs\0Ndisuio" /f
reg delete HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Services\Eaphost /f
reg delete HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Services\EventLog\Application\Microsoft-Windows-EapHost /f
reg delete HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Services\UmPass /f
reg delete "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\NetDiagFx\Microsoft\HostDLLs\Layer 2 Security Helper Class\HelperClasses\L2Sec Helper Class\Providers\{6EB8DB94-FE96-443F-A366-5FE0CEE7FB1C}" /f
reg delete HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\NetDiagFx\Microsoft\HostDLLs\NetCoreServerHelperClasses\HelperClasses\AddressAcquisitionServer\Providers\{6EB8DB94-FE96-443F-A366-5FE0CEE7FB1C} /f
reg delete HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\NetDiagFx\Microsoft\HostDLLs\WPPTrace\HelperClasses\dot3_wpp\Providers\{5F31090B-D990-4E91-B16D-46121D0255AA} /f
reg delete HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\NetDiagFx\Microsoft\HostDLLs\WPPTrace\HelperClasses\VpnClient\Providers\{5F31090B-D990-4e91-B16D-46121D0255AA} /f
reg delete HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\NetDiagFx\Microsoft\HostDLLs\WPPTrace\HelperClasses\WirelessDisplay\Providers\{5F31090B-D990-4E91-B16D-46121D0255AA} /f
reg delete HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\NetDiagFx\Microsoft\HostDLLs\WPPTrace\HelperClasses\wlan_wpp\Providers\{5F31090B-D990-4E91-B16D-46121D0255AA} /f
reg delete HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\SafeBoot\Network\Eaphost /f
reg delete HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\Eaphost /f
reg delete HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\EventLog\Application\Microsoft-Windows-EapHost /f
reg delete HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\UmPass /f


reg delete HKEY_LOCAL_MACHINE\SYSTEM\DriverDatabase\DeviceIds\{4d36e97d-e325-11ce-bfc1-08002be10318} /v vdrvroot.inf /f
reg delete HKEY_LOCAL_MACHINE\SYSTEM\DriverDatabase\DeviceIds\{4d36e97d-e325-11ce-bfc1-08002be10318} /v umpass.inf /f
reg delete HKEY_LOCAL_MACHINE\SYSTEM\DriverDatabase\DeviceIds\{4d36e97d-e325-11ce-bfc1-08002be10318} /v umbus.inf /f
reg delete HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Setup\PnpLockdownFiles\%SystemRoot%/System32/drivers/vdrvroot.sys /f
reg delete HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\WINEVT\Channels\Microsoft-Windows-VDRVROOT/Operational /f
reg delete HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\WINEVT\Publishers\{e4480490-85b6-11dd-ad8b-0800200c9a66} /f
reg delete HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\WINEVT\Publishers\{dbe9b383-7cf3-4331-91cc-a3cb16a3b538} /f
reg delete HKEY_LOCAL_MACHINE\SOFTWARE\WOW6432Node\Microsoft\Windows\CurrentVersion\Setup\PnpLockdownFiles\%SystemRoot%/System32/drivers/vdrvroot.sys /f
reg delete HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Control\Class\{4d36e97d-e325-11ce-bfc1-08002be10318}\0056 /f
reg delete HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Control\Class\{4d36e97d-e325-11ce-bfc1-08002be10318}\0063 /f
reg delete HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Control\DeviceClasses\{2e34d650-5819-42ca-84ae-d30803bae505} /f

reg delete HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Control\DeviceContainers\{00000000-0000-0000-FFFF-FFFFFFFFFFFF}\BaseContainers\{00000000-0000-0000-FFFF-FFFFFFFFFFFF} /v ACPI\PNP0C14\AOD /f
reg delete HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Control\DeviceContainers\{00000000-0000-0000-FFFF-FFFFFFFFFFFF}\BaseContainers\{00000000-0000-0000-FFFF-FFFFFFFFFFFF} /v ACPI\PNP0C14\AsusBACKUPWMI /f

reg delete HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Control\DeviceContainers\{00000000-0000-0000-FFFF-FFFFFFFFFFFF}\BaseContainers\{00000000-0000-0000-FFFF-FFFFFFFFFFFF} /v ACPI\PNP0C14\ASUSCONTROLCENTER /f
reg delete HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Control\DeviceContainers\{00000000-0000-0000-FFFF-FFFFFFFFFFFF}\BaseContainers\{00000000-0000-0000-FFFF-FFFFFFFFFFFF} /v ACPI\PNP0C14\ASUSWMI /f
reg delete HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Control\DeviceContainers\{00000000-0000-0000-FFFF-FFFFFFFFFFFF}\BaseContainers\{00000000-0000-0000-FFFF-FFFFFFFFFFFF} /v ACPI\PNP0C14\AWW /f
reg delete HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Control\DeviceContainers\{00000000-0000-0000-FFFF-FFFFFFFFFFFF}\BaseContainers\{00000000-0000-0000-FFFF-FFFFFFFFFFFF} /v ACPI\AMDI0030\0 /f
reg delete HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Control\DeviceContainers\{00000000-0000-0000-FFFF-FFFFFFFFFFFF}\BaseContainers\{00000000-0000-0000-FFFF-FFFFFFFFFFFF} /v ACPI\AMDIF030\0 /f
reg delete HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Enum\ACPI\AMDI0030 /f
reg delete HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Enum\ACPI\AMDIF030 /f
reg delete HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Enum\ACPI\PNP0C14 /f
reg delete "HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Services\AMD Crash Defender Service" /f
reg delete "HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Services\AMD External Events Utility" /f
reg delete HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Services\amdfendr /f
reg delete HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Services\amdfendrmgr /f
reg delete HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Services\amdgpio2 /f
reg delete HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Services\amdi2c /f
del c:\windows\system32\atieclxx.exe /f

del /f C:\Windows\SysWOW64\atieah32.exe
del /f C:\Windows\System32\atieah64.exe
del /f C:\Windows\System32\atieclxx.exe
del /f C:\Windows\Prefetch\ATIECLXX.EXE-94C33F1B.pf
del /f C:\Windows\Prefetch\ATIESRXX.EXE-050DC129.pf

rd /s /q C:\Windows\System32\AMD\amdfendr
rd /s /q C:\Windows\System32\DriverStore\FileRepository\amdfendr.inf_amd64_63407582c8ebadc8
rd /s /q C:\Windows\System32\AMD\amdfendr
del /f C:\Windows\System32\drivers\amdfendr.sys
del /f C:\Windows\System32\drivers\amdfendrmgr.sys
del /f C:\Windows\System32\amdfendrsr.exe
del /f C:\Windows\Prefetch\AMDFENDRSR.EXE-5DD5CA89.pf

reg delete HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Class\{4d36e97d-e325-11ce-bfc1-08002be10318}\0009 /f













reg delete HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Control\DeviceContainers\{00000000-0000-0000-FFFF-FFFFFFFFFFFF}\BaseContainers\{00000000-0000-0000-FFFF-FFFFFFFFFFFF} /v ROOT\vdrvroot\0000 /f
reg delete HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Control\DeviceContainers\{00000000-0000-0000-FFFF-FFFFFFFFFFFF}\BaseContainers\{00000000-0000-0000-FFFF-FFFFFFFFFFFF} /v ROOT\umbus\0000 /f
reg delete HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Control\DeviceContainers\{00000000-0000-0000-FFFF-FFFFFFFFFFFF}\BaseContainers\{00000000-0000-0000-FFFF-FFFFFFFFFFFF} /v ROOT\ndisvirtualbus\0000 /f
reg delete HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Control\DeviceContainers\{00000000-0000-0000-FFFF-FFFFFFFFFFFF}\BaseContainers\{00000000-0000-0000-FFFF-FFFFFFFFFFFF} /v ROOT\kdnic\0000 /f
reg delete HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Control\DeviceContainers\{00000000-0000-0000-FFFF-FFFFFFFFFFFF}\BaseContainers\{00000000-0000-0000-FFFF-FFFFFFFFFFFF} /v ROOT\compositebus\0000 /f
reg delete HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Control\DeviceContainers\{00000000-0000-0000-FFFF-FFFFFFFFFFFF}\BaseContainers\{00000000-0000-0000-FFFF-FFFFFFFFFFFF} /v ROOT\amdlog\0000 /f
reg delete HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Control\DeviceContainers\{00000000-0000-0000-FFFF-FFFFFFFFFFFF}\BaseContainers\{00000000-0000-0000-FFFF-FFFFFFFFFFFF} /v SWD\MMDEVAPI\MicrosoftGSWavetableSynth /f
reg delete HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Control\DeviceContainers\{00000000-0000-0000-FFFF-FFFFFFFFFFFF}\BaseContainers\{00000000-0000-0000-FFFF-FFFFFFFFFFFF} /v SWD\RADIO\{3DB5895D-CC28-44B3-AD3D-6F01A782B8D2} /f
reg delete HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Enum\ROOT\vdrvroot /f
reg delete HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Services\vdrvroot /f
reg delete HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Class\{4d36e97d-e325-11ce-bfc1-08002be10318}\0056 /f
reg delete HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Class\{4d36e97d-e325-11ce-bfc1-08002be10318}\0063 /f
reg delete HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\DeviceClasses\{2e34d650-5819-42ca-84ae-d30803bae505} /f
reg delete HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\DeviceContainers\{00000000-0000-0000-FFFF-FFFFFFFFFFFF}\BaseContainers\{00000000-0000-0000-FFFF-FFFFFFFFFFFF} /v ROOT\vdrvroot\0000 /f
reg delete HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\DeviceContainers\{00000000-0000-0000-FFFF-FFFFFFFFFFFF}\BaseContainers\{00000000-0000-0000-FFFF-FFFFFFFFFFFF} /v ROOT\compositebus\0000 /f
reg delete HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\DeviceContainers\{00000000-0000-0000-FFFF-FFFFFFFFFFFF}\BaseContainers\{00000000-0000-0000-FFFF-FFFFFFFFFFFF} /v ROOT\amdlog\0000 /f
reg delete HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\DeviceContainers\{00000000-0000-0000-FFFF-FFFFFFFFFFFF}\BaseContainers\{00000000-0000-0000-FFFF-FFFFFFFFFFFF} /v ROOT\ndisvirtualbus\0000 /f
reg delete HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\DeviceContainers\{00000000-0000-0000-FFFF-FFFFFFFFFFFF}\BaseContainers\{00000000-0000-0000-FFFF-FFFFFFFFFFFF} /v ROOT\umbus\0000 /f
reg delete HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\DeviceContainers\{00000000-0000-0000-FFFF-FFFFFFFFFFFF}\BaseContainers\{00000000-0000-0000-FFFF-FFFFFFFFFFFF} /v SWD\MMDEVAPI\MicrosoftGSWavetableSynth /f
reg delete HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\DeviceContainers\{00000000-0000-0000-FFFF-FFFFFFFFFFFF}\BaseContainers\{00000000-0000-0000-FFFF-FFFFFFFFFFFF} /v SWD\RADIO\{3DB5895D-CC28-44B3-AD3D-6F01A782B8D2} /f
reg delete HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\DeviceContainers\{00000000-0000-0000-FFFF-FFFFFFFFFFFF}\BaseContainers\{00000000-0000-0000-FFFF-FFFFFFFFFFFF} /v ROOT\kdnic\0000 /f

reg delete HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\DeviceContainers\{00000000-0000-0000-FFFF-FFFFFFFFFFFF}\BaseContainers\{00000000-0000-0000-FFFF-FFFFFFFFFFFF} /v ACPI\AMDI0030\0 /f
reg delete HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\DeviceContainers\{00000000-0000-0000-FFFF-FFFFFFFFFFFF}\BaseContainers\{00000000-0000-0000-FFFF-FFFFFFFFFFFF} /v ACPI\AMDIF030\0 /f
reg delete HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\DeviceContainers\{00000000-0000-0000-FFFF-FFFFFFFFFFFF}\BaseContainers\{00000000-0000-0000-FFFF-FFFFFFFFFFFF} /v ACPI\PNP0C14\AOD /f
reg delete HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\DeviceContainers\{00000000-0000-0000-FFFF-FFFFFFFFFFFF}\BaseContainers\{00000000-0000-0000-FFFF-FFFFFFFFFFFF} /v ACPI\PNP0C14\AsusBACKUPWMI /f
reg delete HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\DeviceContainers\{00000000-0000-0000-FFFF-FFFFFFFFFFFF}\BaseContainers\{00000000-0000-0000-FFFF-FFFFFFFFFFFF} /v ACPI\PNP0C14\ASUSCONTROLCENTER /f
reg delete HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\DeviceContainers\{00000000-0000-0000-FFFF-FFFFFFFFFFFF}\BaseContainers\{00000000-0000-0000-FFFF-FFFFFFFFFFFF} /v ACPI\PNP0C14\ASUSWMI /f
reg delete HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\DeviceContainers\{00000000-0000-0000-FFFF-FFFFFFFFFFFF}\BaseContainers\{00000000-0000-0000-FFFF-FFFFFFFFFFFF} /v ACPI\PNP0C14\AWW /f

reg delete HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Enum\ACPI\AMDI0030 /f
reg delete HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Enum\ACPI\AMDIF030 /f
reg delete HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Enum\ACPI\PNP0C14 /f



reg delete HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Enum\ROOT\vdrvroot /f
reg delete HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\vdrvroot /f

reg delete "HKEY_CLASSES_ROOT\Local Settings\MuiCache\1\52C64B7E" /f
reg import muicache.reg
reg delete HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Control\Class\{4d36e97d-e325-11ce-bfc1-08002be10318}\0002 /f
reg delete HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Services\NdisVirtualBus /f
reg delete HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Class\{4d36e97d-e325-11ce-bfc1-08002be10318}\0002 /f

reg delete HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\NdisVirtualBus /f

reg delete HKEY_LOCAL_MACHINE\SYSTEM\DriverDatabase\DeviceIds\{4d36e97d-e325-11ce-bfc1-08002be10318} /v vdrvroot.inf /f
reg delete HKEY_LOCAL_MACHINE\SYSTEM\DriverDatabase\DeviceIds\{4d36e97d-e325-11ce-bfc1-08002be10318} /v tsgenericusbdriver.inf /f
reg delete HKEY_LOCAL_MACHINE\SYSTEM\DriverDatabase\DeviceIds\{4d36e97d-e325-11ce-bfc1-08002be10318} /v tsusbhub.inf /f
reg delete HKEY_LOCAL_MACHINE\SYSTEM\DriverDatabase\DeviceIds\{4d36e97d-e325-11ce-bfc1-08002be10318} /v tsusbhubfilter.inf /f
reg delete HKEY_LOCAL_MACHINE\SYSTEM\DriverDatabase\DeviceIds\{4d36e97d-e325-11ce-bfc1-08002be10318} /v umpass.inf /f
reg delete HKEY_LOCAL_MACHINE\SYSTEM\DriverDatabase\DeviceIds\{4d36e97d-e325-11ce-bfc1-08002be10318} /v umbus.inf /f
reg delete HKEY_LOCAL_MACHINE\SYSTEM\DriverDatabase\DeviceIds\{4d36e97d-e325-11ce-bfc1-08002be10318} /v wvmgid.inf /f
reg delete HKEY_LOCAL_MACHINE\SYSTEM\DriverDatabase\DeviceIds\{4d36e97d-e325-11ce-bfc1-08002be10318} /v wvmic.inf /f
reg delete HKEY_LOCAL_MACHINE\SYSTEM\DriverDatabase\DeviceIds\{4d36e97d-e325-11ce-bfc1-08002be10318} /v wvmic_ext.inf /f
reg delete HKEY_LOCAL_MACHINE\SYSTEM\DriverDatabase\DeviceIds\{4d36e97d-e325-11ce-bfc1-08002be10318} /v wvmic_guestinterface.inf /f
reg delete HKEY_LOCAL_MACHINE\SYSTEM\DriverDatabase\DeviceIds\{4d36e97d-e325-11ce-bfc1-08002be10318} /v wvmic_heartbeat.inf /f
reg delete HKEY_LOCAL_MACHINE\SYSTEM\DriverDatabase\DeviceIds\{4d36e97d-e325-11ce-bfc1-08002be10318} /v rdpbus.inf /f
reg delete HKEY_LOCAL_MACHINE\SYSTEM\DriverDatabase\DeviceIds\{4d36e97d-e325-11ce-bfc1-08002be10318} /v compositebus.inf /f
reg delete HKEY_LOCAL_MACHINE\SYSTEM\DriverDatabase\DeviceIds\{4d36e97d-e325-11ce-bfc1-08002be10318} /v amdgpio2.inf /f
reg delete HKEY_LOCAL_MACHINE\SYSTEM\DriverDatabase\DeviceIds\{4d36e97d-e325-11ce-bfc1-08002be10318} /v amdi2c.inf /f
reg delete HKEY_LOCAL_MACHINE\SYSTEM\DriverDatabase\DeviceIds\{4d36e97d-e325-11ce-bfc1-08002be10318} /v errdev.inf /f
reg delete HKEY_LOCAL_MACHINE\SYSTEM\DriverDatabase\DeviceIds\{4d36e97d-e325-11ce-bfc1-08002be10318} /v ipmidrv.inf /f
reg delete HKEY_LOCAL_MACHINE\SYSTEM\DriverDatabase\DeviceIds\{4d36e97d-e325-11ce-bfc1-08002be10318} /v npsvctrig.inf /f
reg delete HKEY_LOCAL_MACHINE\SYSTEM\DriverDatabase\DeviceIds\{4d36e97d-e325-11ce-bfc1-08002be10318} /v rhproxy.inf /f
reg delete HKEY_LOCAL_MACHINE\SYSTEM\DriverDatabase\DeviceIds\{4d36e97d-e325-11ce-bfc1-08002be10318} /v rdlsbuscbs.inf /f
reg delete HKEY_LOCAL_MACHINE\SYSTEM\DriverDatabase\DeviceIds\Root\VDRVROOT /f
reg delete HKEY_LOCAL_MACHINE\SYSTEM\DriverDatabase\DriverInfFiles\vdrvroot.inf /f
reg delete HKEY_LOCAL_MACHINE\SYSTEM\DriverDatabase\DriverPackages\vdrvroot.inf_amd64_5dbe5e81fafe4636 /f
reg delete HKEY_LOCAL_MACHINE\SYSTEM\DriverDatabase\DeviceIds\EH /f
reg delete HKEY_LOCAL_MACHINE\SYSTEM\DriverDatabase\DriverInfFiles\eaphost.inf /f
reg add hklm\system\controlset001\services\clfs /v "Start" /t REG_DWORD /d 4 /f
reg delete HKEY_LOCAL_MACHINE\SYSTEM\DriverDatabase\DriverPackages\eaphost.inf_amd64_d37080dfb66d830b /f
sc triggerinfo wersvc delete
reg delete hklm\system\controlset001\services\dmwappushservice /v delayedautostart /f
reg delete hklm\system\controlset001\services\cdpsvc /v delayedautostart /f
reg delete hklm\system\controlset001\services\dcsvc /v delayedautostart /f
reg delete hklm\system\controlset001\services\dispbrokerdesktopsvc /v delayedautostart /f
reg delete hklm\system\controlset001\services\storsvc /v delayedautostart /f
reg delete hklm\system\controlset001\services\policyagent\triggerinfo /f
reg delete hklm\system\controlset001\services\wbiosrvc\triggerinfo /f
reg delete hklm\system\controlset001\services\frameserver\triggerinfo /f
reg delete hklm\system\controlset001\services\systemeventsbroker\triggerinfo /f
reg delete hklm\system\controlset001\services\timebrokersvc\triggerinfo /f
reg delete hklm\system\controlset001\services\wuauserv\triggerinfo /f
reg delete hklm\system\controlset001\services\ikeext\triggerinfo /f
reg delete hklm\system\controlset001\services\keyiso\triggerinfo /f
reg delete hklm\system\controlset001\services\dispbrokerdesktopsvc\triggerinfo /f
reg delete hklm\system\controlset001\services\sppsvc\triggerinfo /f
reg delete hklm\system\controlset001\services\lanmanserver\triggerinfo /f
reg delete hklm\system\controlset001\services\fdrespub\triggerinfo /f
reg delete hklm\system\controlset001\services\dosvc\triggerinfo /f
reg delete hklm\system\controlset001\services\spectrum\triggerinfo /f
reg delete hklm\system\controlset001\services\smsrouter\triggerinfo /f
reg delete hklm\system\controlset001\services\wfdsconmgrsvc\triggerinfo /f
reg delete hklm\system\controlset001\services\sharedaccess\triggerinfo /f
reg delete hklm\system\controlset001\services\sensordataservice\triggerinfo /f
reg delete hklm\system\controlset001\services\sensorservice\triggerinfo /f
reg delete hklm\system\controlset001\services\icssvc\triggerinfo /f
reg delete hklm\system\controlset001\services\bthavctpsvc\triggerinfo /f
reg delete hklm\system\controlset001\services\wlidsvc\triggerinfo /f
reg delete hklm\system\controlset001\services\licensemanager\triggerinfo /f
reg delete hklm\system\controlset001\services\wlpasvc\triggerinfo /f
reg delete hklm\system\controlset001\services\appxsvc\triggerinfo /f
reg delete hklm\system\controlset001\services\wisvc\triggerinfo /f
reg delete hklm\system\controlset001\services\warpjitsvc\triggerinfo /f
reg delete hklm\system\controlset001\services\ipxlatcfgsvc\triggerinfo /f
reg delete hklm\system\controlset001\services\devquerybroker\triggerinfo /f
reg delete hklm\system\controlset001\services\ncdautosetup\triggerinfo /f
reg delete hklm\system\controlset001\services\printworkflowusersvc\triggerinfo /f
reg delete hklm\system\controlset001\services\autotimesvc\triggerinfo /f
reg delete hklm\system\controlset001\services\deviceassociationservice\triggerinfo /f
reg delete hklm\system\controlset001\services\displayenhancementservice\triggerinfo /f
reg delete hklm\system\controlset001\services\wephostsvc\triggerinfo /f
reg delete hklm\system\controlset001\services\tzautoupdate\triggerinfo /f
reg delete hklm\system\controlset001\services\btagservice\triggerinfo /f
reg delete hklm\system\controlset001\services\clipsvc\triggerinfo /f
reg delete hklm\system\controlset001\services\bluetoothuserservice\triggerinfo /f
reg delete hklm\system\controlset001\services\dmwappushservice\triggerinfo /f
reg delete hklm\system\controlset001\services\cdpsvc\triggerinfo /f
reg delete hklm\system\controlset001\services\dcsvc\triggerinfo /f
reg delete hklm\system\controlset001\services\lfsvc\triggerinfo /f
reg delete hklm\system\controlset001\services\graphicsperfsvc\triggerinfo /f
reg add hklm\system\controlset001\services\devicepickerusersvc_1b1d4 /v "Start" /t REG_DWORD /d 4 /f
reg add hklm\system\controlset001\services\dispbrokerdesktopsvc /v "Start" /t REG_DWORD /d 4 /f
reg add hklm\system\controlset001\services\winhttpautoproxysvc /v "Start" /t REG_DWORD /d 4 /f
reg add hklm\system\controlset001\services\urssynopsys /v "Start" /t REG_DWORD /d 4 /f
reg add hklm\system\controlset001\services\appreadiness /v "Start" /t REG_DWORD /d 4 /f
reg add hklm\system\controlset001\services\devicepickerusersvc_1b1d4 /v "Start" /t REG_DWORD /d 4 /f
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
sc stop windowstrustedrtproxy
sc stop windowstrustedrt
sc config windowstrustedrtproxy start= disabled
sc config windowstrustedrt start= disabled
sc stop WinHttpAutoProxySvc
sc config WinHttpAutoProxySvc start= disabled
sc stop "AMD Crash Defender Service"
sc config "AMD Crash Defender Service" start= disabled
sc stop "AMD External Events Utility"
sc config "AMD External Events Utility" start= disabled 
sc stop amdfendr
sc config amdfendr start= disabled 
sc stop amdfendrmgr
sc config amdfendrmgr start= disabled 
sc stop amdgpio2
sc config amdgpio2 start= disabled 
sc stop amdi2c
sc config amdi2c start= disabled
reg delete HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\vmbus /f
reg delete HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\vmbushid /f
reg delete HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\vmgid /f
reg delete HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\vmusbbus /f
reg delete HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\vmusbhub /f
reg delete HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\vmusbus /f
devcon disable ACPI\PNP0C14
devcon disable ACPI\AMDI0030
devcon disable ACPI\AMDIF030
exit
