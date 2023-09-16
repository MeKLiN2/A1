SET SCRIPTPATH=%~DP0
ren C:\Windows\System32\DriverStore\FileRepository\machine.inf_amd64_b748590104fe1c15\machine.inf MACHINE.OLD
ren C:\WINDOWS\INF\MACHINE.INF MACHINE.OLD
COPY %SCRIPTPATH%\MACHINE.INF C:\Windows\System32\DriverStore\FileRepository\machine.inf_amd64_b748590104fe1c15
COPY %SCRIPTPATH%\MACHINE.INF C:\WINDOWS\INF
reg import %SCRIPTPATH%\sysdel.reg
pnputil -i -a C:\Windows\System32\DriverStore\FileRepository\machine.inf_amd64_b748590104fe1c15\machine.inf
pnputil -i -a C:\WINDOWS\INF\MACHINE.INF
exit