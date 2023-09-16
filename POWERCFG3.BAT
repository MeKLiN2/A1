SET SCRIPTPATH=%~DP0
copy %SCRIPTPATH%\ryzenUltimate.pow %SYSTEMDRIVE%\WINDOWS\SYSTEM32
powercfg -import %SYSTEMDRIVE%\WINDOWS\SYSTEM32\ryzenUltimate.pow
echo.
echo.
echo off
echo now you need to type this in DOS but change it to the GUID shown above:
echo.
echo powercfg -setactive 82d9f733-0e1c-42b9-a38b-bd219ba49245
echo.
echo.
pause
cmd