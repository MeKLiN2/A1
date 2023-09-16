takeown /f c:\windows\system32\rundll32.ex
icacls c:\windows\system32\rundll32.ex /grant administrators:f
ren c:\windows\system32\rundll32.ex rundll32.exe
takeown /f c:\windows\system32\dllhost.ex
icacls c:\windows\system32\dllhost.ex /grant administrators:f
ren c:\windows\system32\dllhost.ex dllhost.exe