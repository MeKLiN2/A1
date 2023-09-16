REG DELETE HKEY_LOCAL_MACHINE\COMPONENTS\DerivedData\Components\wow64_wininet.etw_31bf3856ad364e35_10.0.18362.1_none_2f8560056c01225c /F
REG DELETE "HKEY_LOCAL_MACHINE\COMPONENTS\DerivedData\VersionedIndex\10.0.18362.30 (WinBuild.160101.0800)\ComponentFamilies\amd64_wininet.etw_31bf3856ad364e35_none_7e553f52ba809ea7" /F
REG DELETE "HKEY_LOCAL_MACHINE\COMPONENTS\DerivedData\VersionedIndex\10.0.18362.30 (WinBuild.160101.0800)\ComponentFamilies\wow64_wininet.etw_31bf3856ad364e35_none_88a9e9a4eee160a2" /F
REG DELETE HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\WINEVT\Channels\Microsoft-Windows-WinINet/UsageLog /F
REG DELETE HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\WINEVT\Channels\Microsoft-Windows-WinINet/WebSocket /F
REG DELETE HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\WINEVT\Channels\Microsoft-Windows-WinINet-Capture/Analytic /F
REG DELETE HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\WINEVT\Channels\Microsoft-Windows-WinINet-Config/ProxyConfigChanged /F
REG DELETE HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\WINEVT\Publishers\{5402e5ea-1bdd-4390-82be-e108f1e634f5} /F
REG DELETE HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\WINEVT\Publishers\{a70ff94f-570b-4979-ba5c-e59c9feab61b} /F
REG DELETE "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tasks\{4B79A419-F671-47D7-B001-888A456864AE}" /F
REG DELETE HKEY_LOCAL_MACHINE\COMPONENTS\DerivedData\Components\amd64_wininet.etw_31bf3856ad364e35_10.0.18362.1_none_2530b5b337a06061 /F
REG DELETE HKEY_LOCAL_MACHINE\Software\Classes\AppID\{3eb3c877-1f16-487c-9050-104dbcd66683} /F
REG DELETE HKEY_LOCAL_MACHINE\Software\Classes\AppID\{F9717507-6651-4EDB-BFF7-AE615179BCCF} /F
REG DELETE HKEY_LOCAL_MACHINE\Software\Classes\CLSID\{0358b920-0ac7-461f-98f4-58e32cd89148} /F
REG DELETE HKEY_LOCAL_MACHINE\Software\Classes\CLSID\{057EEE47-2572-4AA1-88D7-60CE2149E33C} /F
REG DELETE HKEY_LOCAL_MACHINE\Software\Classes\CLSID\{c39ee728-d419-4bd4-a3ef-eda059dbd935} /F
REG DELETE HKEY_LOCAL_MACHINE\Software\Classes\Interface\{a168aadc-1674-49da-ad4f-4f27df8760d0} /F
REG DELETE HKEY_LOCAL_MACHINE\Software\Classes\Interface\{B06B0CE5-689B-4AFD-B326-0A08A1A647AF} /F
REG DELETE HKEY_LOCAL_MACHINE\Software\Classes\WinInetBroker.WinInetBroker /F
REG DELETE HKEY_LOCAL_MACHINE\Software\Classes\WinInetBroker.WinInetBroker.1 /F
REG DELETE HKEY_LOCAL_MACHINE\Software\Classes\WinInetCache.WinInetCache /F
REG DELETE HKEY_LOCAL_MACHINE\Software\Classes\WinInetCache.WinInetCache.1 /F
REG DELETE HKEY_LOCAL_MACHINE\Software\Classes\Wow6432Node\CLSID\{0358b920-0ac7-461f-98f4-58e32cd89148} /F
REG DELETE HKEY_LOCAL_MACHINE\Software\Classes\Wow6432Node\CLSID\{057EEE47-2572-4AA1-88D7-60CE2149E33C} /F
REG DELETE HKEY_LOCAL_MACHINE\Software\Classes\Wow6432Node\CLSID\{c39ee728-d419-4bd4-a3ef-eda059dbd935} /F
REG DELETE HKEY_LOCAL_MACHINE\Software\Classes\Wow6432Node\Interface\{a168aadc-1674-49da-ad4f-4f27df8760d0} /F
REG DELETE HKEY_LOCAL_MACHINE\Software\Classes\Wow6432Node\Interface\{B06B0CE5-689B-4AFD-B326-0A08A1A647AF} /F
REG DELETE HKEY_LOCAL_MACHINE\Software\Microsoft\Internet Explorer\Capabilities\Roaming\WinInet /F
REG DELETE HKEY_LOCAL_MACHINE\Software\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tasks\{325B4FF1-5F84-4166-A23F-FB7825145862} /F
REG DELETE HKEY_LOCAL_MACHINE\Software\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tree\Microsoft\Windows\Wininet /F
REG DELETE HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\SideBySide\Winners\amd64_wininet.etw_31bf3856ad364e35_none_7e553f52ba809ea7 /F
REG DELETE HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\SideBySide\Winners\wow64_wininet.etw_31bf3856ad364e35_none_88a9e9a4eee160a2 /F
REG DELETE HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\WINEVT\Channels\Microsoft-Windows-WinINet/Analytic /F
REG DELETE HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\WINEVT\Publishers\{43d1a55c-76d6-4f7e-995c-64c711e5cafe} /F
REG DELETE HKEY_LOCAL_MACHINE\Software\Wow6432Node\Microsoft\Internet Explorer\Capabilities\Roaming\WinInet /F
REG DELETE HKEY_LOCAL_MACHINE\System\ControlSet001\Control\Ubpm /F
REG DELETE HKEY_LOCAL_MACHINE\System\ControlSet002\Control\Ubpm /F
DEL /F /Q C:\WINDOWS\WINSXS\MANIFESTS\amd64_wininet.etw_31bf3856ad364e35_10.0.18362.1_none_2530b5b337a06061.manifest
DEL /F /Q C:\WINDOWS\WINSXS\MANIFESTS\wow64_wininet.etw_31bf3856ad364e35_10.0.18362.1_none_2f8560056c01225c.manifest
REN C:\Windows\WinSxS\amd64_microsoft-windows-u..roundprocessmanager_31bf3856ad364e35_10.0.18362.1_none_38ad80f66ea09a5c\UBPM.DLL UBPM.DL
REN C:\WINDOWS\SYSTEM32\UBPM.DLL UBPM.DL
REN C:\WINDOWS\SYSTEM32\WHEALOGR.DLL WHEALOGR.DL
REN C:\WINDOWS\SYSTEM32\CATSRV.DLL CATSRV.DL
REN C:\WINDOWS\SYSTEM32\CATSRVPS.DLL CATSRVPS.DL
REN C:\WINDOWS\SYSTEM32\CLBCATQ.DLL CLBCATQ.DL
REN C:\WINDOWS\SYSTEM32\CATSRVUT.DLL CATSRVUT.DL
REN C:\WINDOWS\SYSTEM32\COMSVCS.DLL COMSVCS.DL
REN C:\WINDOWS\SYSTEM32\COLBACT.DLL COLBACT.DL
REN C:\WINDOWS\SYSWOW64\UBPM.DLL UBPM.DL
REN C:\WINDOWS\SYSWOW64\WHEALOGR.DLL WHEALOGR.DL
REN C:\WINDOWS\SYSWOW64\CATSRV.DLL CATSRV.DL
REN C:\WINDOWS\SYSWOW64\CATSRVPS.DLL CATSRVPS.DL
REN C:\WINDOWS\SYSWOW64\CLBCATQ.DLL CLBCATQ.DL
REN C:\WINDOWS\SYSWOW64\CATSRVUT.DLL CATSRVUT.DL
REN C:\WINDOWS\SYSWOW64\COMSVCS.DLL COMSVCS.DL
REN C:\WINDOWS\SYSWOW64\COLBACT.DLL COLBACT.DL
REN C:\Windows\WinSxS\amd64_microsoft-windows-c..complus-runtime-qfe_31bf3856ad364e35_10.0.18362.1_none_3dc09e7cf5c741b9\CATSRV.DLL CATSRV.DL
REN C:\Windows\WinSxS\amd64_microsoft-windows-c..complus-runtime-qfe_31bf3856ad364e35_10.0.18362.1_none_3dc09e7cf5c741b9\CATSRVUT.DLL CATSRVUT.DL
REN C:\Windows\WinSxS\amd64_microsoft-windows-com-complus-runtime_31bf3856ad364e35_10.0.18362.1_none_2c282f0d51e9fc6a\CATSRVPS.DLL CATSRVPS.DL
REN C:\Windows\WinSxS\wow64_microsoft-windows-c..complus-runtime-qfe_31bf3856ad364e35_10.0.18362.1_none_481548cf2a2803b4\CATSRV.DLL CATSRV.DL
REN C:\Windows\WinSxS\wow64_microsoft-windows-c..fe-catsrvut-comsvcs_31bf3856ad364e35_10.0.18362.1_none_4f747f7b51772bd8\CATSRVPS.DLL CATSRVPS.DL
REN C:\Windows\WinSxS\wow64_microsoft-windows-com-complus-runtime_31bf3856ad364e35_10.0.18362.1_none_367cd95f864abe65\CATSRVPS.DLL CATSRVPS.DL
REN C:\Windows\WinSxS\amd64_microsoft-windows-c..complus-runtime-qfe_31bf3856ad364e35_10.0.18362.1_none_3dc09e7cf5c741b9\COLBACT.DLL COLBACT.DL
REN C:\Windows\WinSxS\wow64_microsoft-windows-c..complus-runtime-qfe_31bf3856ad364e35_10.0.18362.1_none_481548cf2a2803b4\COLBACT.DLL COLBACT.DL
REN C:\Windows\WinSxS\amd64_microsoft-windows-c..fe-catsrvut-comsvcs_31bf3856ad364e35_10.0.18362.1_none_451fd5291d1669dd\COMSVCS.DLL COMSVCS.DL
REN C:\Windows\WinSxS\wow64_microsoft-windows-c..fe-catsrvut-comsvcs_31bf3856ad364e35_10.0.18362.1_none_4f747f7b51772bd8\COMSVCS.DLL COMSVCS.DL
REN C:\Windows\WinSxS\amd64_microsoft-windows-c..fe-catsrvut-comsvcs_31bf3856ad364e35_10.0.18362.1_none_451fd5291d1669dd\CATSRVUT.DLL CATSRVUT.DL
REN C:\Windows\WinSxS\wow64_microsoft-windows-c..fe-catsrvut-comsvcs_31bf3856ad364e35_10.0.18362.1_none_4f747f7b51772bd8\CATSRVUT.DLL CATSRVUT.DL
REN C:\Windows\WinSxS\amd64_microsoft-windows-c..complus-runtime-qfe_31bf3856ad364e35_10.0.18362.1_none_3dc09e7cf5c741b9\CLBCATQ.DLL CLBCATQ.DL
REN C:\Windows\WinSxS\wow64_microsoft-windows-c..complus-runtime-qfe_31bf3856ad364e35_10.0.18362.1_none_481548cf2a2803b4\CLBCATQ.DLL CLBCATQ.DL
REN C:\Windows\WinSxS\wow64_microsoft-windows-thumbnailcache_31bf3856ad364e35_10.0.18362.1_none_1bcca0aacac057bf\THUMBCACHE.DLL THUMBCACHE.DL
REN C:\Windows\WinSxS\amd64_microsoft-windows-thumbnailcache_31bf3856ad364e35_10.0.18362.1_none_1177f658965f95c4\THUMBCACHE.DLL THUMBCACHE.DL
REN C:\WINDOWS\SYSTEM32\THUMBCACHE.DLL THUMBCACHE.DL
REN C:\WINDOWS\SYSWOW64\THUMBCACHE.DLL THUMBCACHE.DL
REN C:\WINDOWS\SYSTEM32\MS3DTHUMBNAILPROVIDER.DLL MS3DTHUMBNAILPROVIDER.DL
REN C:\WINDOWS\SYSWOW64\MS3DTHUMBNAILPROVIDER.DLL MS3DTHUMBNAILPROVIDER.DL
REN C:\WINDOWS\SYSWOW64\THUMBNAILEXTRACTIONHOST.EXE THUMBNAILEXTRACTIONHOST.EX
REN C:\WINDOWS\SYSTEM32\THUMBNAILEXTRACTIONHOST.EXE THUMBNAILEXTRACTIONHOST.EX
REN C:\Windows\WinSxS\amd64_microsoft-windows-p..ellextensionhandler_31bf3856ad364e35_10.0.18362.1_none_eef03df1208a56a5\MS3DTHUMBNAILPROVIDER.DLL MS3DTHUMBNAILPROVIDER.DL
REN C:\Windows\WinSxS\wow64_microsoft-windows-thumbexthost_31bf3856ad364e35_10.0.18362.1_none_cd1f1327ef03e420\THUMBNAILEXTRACTIONHOST.EXE THUMBNAILEXTRACTIONHOST.EX
REN C:\Windows\WinSxS\amd64_microsoft-windows-thumbexthost_31bf3856ad364e35_10.0.18362.1_none_c2ca68d5baa32225\THUMBNAILEXTRACTIONHOST.EXE THUMBNAILEXTRACTIONHOST.EX
REN C:\Windows\WinSxS\wow64_microsoft-windows-p..ellextensionhandler_31bf3856ad364e35_10.0.18362.1_none_f944e84354eb18a0\MS3DTHUMBNAILPROVIDER.DLL MS3DTHUMBNAILPROVIDER.DL
REN C:\WINDOWS\SYSTEM32\MOBSYNC.EXE MOBSYNC.EX
REN C:\WINDOWS\SYSWOW64\MOBSYNC.EXE MOBSYNC.EX
REN C:\Windows\WinSxS\amd64_microsoft-windows-mobsyncexe_31bf3856ad364e35_10.0.18362.1_none_c1ae4989d18d8cdd\MOBSYNC.EXE MOBSYNC.EX
REN C:\Windows\WinSxS\wow64_microsoft-windows-mobsyncexe_31bf3856ad364e35_10.0.18362.1_none_cc02f3dc05ee4ed8\MOBSYNC.EXE MOBSYNC.EX
REN C:\WINDOWS\SYSTEM32\SYNCCENTER.DLL SYNCCENTER.DL
REN C:\WINDOWS\SYSWOW64\SYNCCENTER.DLL SYNCCENTER.DL
REN C:\Windows\WinSxS\amd64_microsoft-windows-mobsync_31bf3856ad364e35_10.0.18362.1_none_c7cd16fcc69993cb\SYNCCENTER.DLL SYNCCENTER.DL
REN C:\Windows\WinSxS\wow64_microsoft-windows-mobsync_31bf3856ad364e35_10.0.18362.1_none_d221c14efafa55c6\SYNCCENTER.DLL SYNCCENTER.DL
REN C:\Windows\WinSxS\amd64_microsoft-windows-d..ommandline-adamsync_31bf3856ad364e35_10.0.18362.1_none_c4803cf49bd9a36f\adamsync.exe adamsync.ex
REN C:\Windows\System32\Microsoft.Uev.SyncController.exe Microsoft.Uev.SyncController.ex
REN C:\Windows\WinSxS\amd64_microsoft-windows-appmanagement-uevagent_31bf3856ad364e35_10.0.18362.1_none_cf09156b62331c1c\Microsoft.Uev.SyncController.exe Microsoft.Uev.SyncController.ex
REN C:\Windows\System32\msfeedssync.exe msfeedssync.ex
REN C:\Windows\SysWOW64\msfeedssync.exe msfeedssync.ex
REN C:\Windows\WinSxS\amd64_microsoft-windows-ie-feedsbs_31bf3856ad364e35_11.0.18362.1_none_029cd9ddc2d4507c\msfeedssync.exe msfeedssync.ex
REN C:\Windows\WinSxS\x86_microsoft-windows-ie-feedsbs_31bf3856ad364e35_11.0.18362.1_none_a67e3e5a0a76df46\msfeedssync.exe msfeedssync.ex
REN C:\Windows\System32\SettingSyncHost.exe SettingSyncHost.ex
REN C:\Windows\SysWOW64\SettingSyncHost.exe SettingSyncHost.ex
REN C:\Windows\WinSxS\amd64_microsoft-windows-settingsynchost_31bf3856ad364e35_10.0.18362.1_none_52409c86a06208c5\SettingSyncHost.exe SettingSyncHost.ex
REN C:\Windows\WinSxS\wow64_microsoft-windows-settingsynchost_31bf3856ad364e35_10.0.18362.1_none_5c9546d8d4c2cac0\SettingSyncHost.exe SettingSyncHost.ex
REN C:\Windows\System32\SyncAppvPublishingServer.exe SyncAppvPublishingServer.ex
REN C:\Windows\WinSxS\amd64_microsoft-windows-a..nagement-appvclient_31bf3856ad364e35_10.0.18362.1_none_9ecfe716455f6af7\SyncAppvPublishingServer.exe SyncAppvPublishingServer.ex
REN C:\Windows\System32\SyncHost.exe SyncHost.ex
REN C:\Windows\SysWOW64\SyncHost.exe SyncHost.ex
REN C:\Windows\WinSxS\amd64_microsoft-windows-synchost_31bf3856ad364e35_10.0.18362.1_none_3bde7d1479cad5c3\SyncHost.exe SyncHost.ex
REN C:\Windows\WinSxS\wow64_microsoft-windows-synchost_31bf3856ad364e35_10.0.18362.1_none_46332766ae2b97be\SyncHost.exe SyncHost.ex
REN C:\Windows\System32\tzsync.exe tzsync.ex
REN C:\Windows\WinSxS\amd64_microsoft-windows-timezone-sync_31bf3856ad364e35_10.0.18362.1_none_618e5fdf9d8d43cf\tzsync.exe tzsync.ex
EXIT