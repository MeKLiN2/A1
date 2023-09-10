del /f /q C:\Windows\winsxs\amd64_microsoft-windows-help-client.resources_31bf3856ad364e35_6.1.7600.16385_es-es_dd93b6bcf77e433e\helppane.exe.mui +r
del /f /q c:\windows\es-es\helppane.exe.mui +r
del /f /q c:\windows\syswow64\helppane.exe.mui +r
copy c:\windows\system32\helppane.exe.mui c:\windows\syswow64
copy c:\windows\system32\helppane.exe.mui c:\windows\es-es
copy c:\windows\system32\helppane.exe.mui C:\Windows\winsxs\amd64_microsoft-windows-help-client.resources_31bf3856ad364e35_6.1.7600.16385_es-es_dd93b6bcf77e433e
attrib C:\Windows\winsxs\amd64_microsoft-windows-help-client.resources_31bf3856ad364e35_6.1.7600.16385_es-es_dd93b6bcf77e433e\helppane.exe.mui +r
attrib c:\windows\es-es\helppane.exe.mui +r
attrib c:\windows\syswow64\helppane.exe.mui +r
pause