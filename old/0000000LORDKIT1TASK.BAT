SC STOP SCHEDULE
SC CONFIG SCHEDULE START= DISABLED
SC STOP USOSVC
SC CONFIG USOSVC START= DISABLED
SC STOP WAASMEDICSVC
SC CONFIG WAASMEDICSEVC START= DISABLED
REG DELETE "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache" /F
REG ADD "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache" /F
REG DELETE "HKEY_LOCAL_MACHINE\SOFTWARE\WOW6432Node\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache" /F
REG ADD "HKEY_LOCAL_MACHINE\SOFTWARE\WOW6432Node\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache" /F
REN C:\WINDOWS\SYSTEM32\TASKHOSTW.EXE TASKHOSTW.EX
REN C:\Windows\WinSxS\amd64_microsoft-windows-taskhost_31bf3856ad364e35_10.0.18362.1_none_fa9c1854d78e47d9\TASKHOSTW.EXE TASKHOSTW.EX
REN C:\WINDOWS\SYSTEM32\EN-US TASKHOSTW.EXE.MUI TASKHOSTW.EXE.MU
REN C:\Windows\WinSxS\amd64_microsoft-windows-s..-taskhost.resources_31bf3856ad364e35_10.0.18362.1_en-us_ce8a0cb7788c84b9\TASKHOSTW.EXE.MUI TASKHOSTW.EXE.MU
REN C:\WINDOWS\SYSTEM32\BACKGROUNDTASKHOST.EXE BACKGROUNDTASKHOST.EX
REN C:\WINDOWS\SYSWOW64\BACKGROUNDTASKHOST.EXE BACKGROUNDTASKHOST.EX
REN C:\Windows\WinSxS\amd64_microsoft-windows-b..nfrastructurebghost_31bf3856ad364e35_10.0.18362.1_none_4350504de6533b61\BACKGROUNDTASKHOST.EXE BACKGROUNDTASKHOST.EX
REN C:\Windows\WinSxS\wow64_microsoft-windows-b..nfrastructurebghost_31bf3856ad364e35_10.0.18362.1_none_4da4faa01ab3fd5c\BACKGROUNDTASKHOST.EXE BACKGROUNDTASKHOST.EX
REN C:\WINDOWS\SYSTEM32\SCHTASKS.EXE SCHTASKS.EX
REN C:\WINDOWS\SYSWOW64\SCHTASKS.EXE SCHTASKS.EX
REN C:\Windows\WinSxS\amd64_microsoft-windows-sctasks_31bf3856ad364e35_10.0.18362.1_none_5c9ce78f328ec960\schtasks.exe SCHTASKS.EX
REN C:\Windows\WinSxS\wow64_microsoft-windows-sctasks_31bf3856ad364e35_10.0.18362.1_none_66f191e166ef8b5b\schtasks.exe SCHTASKS.EX
REN C:\Windows\System32\en-US\schtasks.exe.mui SCHTASKS.EXE.MU
REN C:\Windows\SysWOW64\en-US\schtasks.exe.mui SCHTASKS.EXE.MU
REN C:\Windows\WinSxS\amd64_microsoft-windows-sctasks.resources_31bf3856ad364e35_10.0.18362.1_en-us_f57596cfc61bad77\schtasks.exe.mui SCHTASKS.EXE.MU
REN C:\Windows\WinSxS\wow64_microsoft-windows-sctasks.resources_31bf3856ad364e35_10.0.18362.1_en-us_ffca4121fa7c6f72\schtasks.exe.mui SCHTASKS.EXE.MU
SC STOP SCHEDULE
SC CONFIG SCHEDULE START= DISABLED
RD /S /Q C:\WINDOWS\TASKS
RD /S /Q C:\WINDOWS\SYSWOW64\TASKS
RD /S /Q C:\WINDOWS\SYSTEM32\TASKS
RD /S /Q C:\Windows\WaaS\tasks
MKDIR C:\Windows\WaaS\tasks
ATTRIB +S +R +H C:\Windows\WaaS\tasks
MKDIR C:\WINDOWS\TASKS
MKDIR C:\WINDOWS\SYSWOW64\TASKS
MKDIR C:\WINDOWS\SYSTEM32\TASKS
ATTRIB +S +R +H C:\WINDOWS\TASKS
ATTRIB +S +R +H C:\WINDOWS\SYSWOW64\TASKS
ATTRIB +S +R +H C:\WINDOWS\SYSTEM32\TASKS
EXIT
