takeown /f c:\windows\system32\rundll32.exe
icacls c:\windows\system32\rundll32.exe /grant administrators:f
ren c:\windows\system32\rundll32.exe rundll32.ex
takeown /f c:\windows\system32\dllhost.exe
icacls c:\windows\system32\dllhost.exe /grant administrators:f
ren c:\windows\system32\dllhost.exe dllhost.ex
pause