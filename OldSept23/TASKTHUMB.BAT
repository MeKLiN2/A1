REG DELETE HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\Taskband\AuxilliaryPins /F
REG ADD HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\Taskband /T REG_DWORD /D 0 /F
REG ADD HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\Taskband /V NUMTHUMBNAILS /T REG_DWORD /D 0 /F
REG ADD HKLM\Software\Microsoft\Windows\CurrentVersion\Explorer\Taskband /V NUMTHUMBNAILS /T REG_DWORD /D 0 /F
EXIT
