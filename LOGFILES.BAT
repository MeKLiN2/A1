takeown /f C:\Windows\System32\MSDtc\* /r /d y
icacls C:\Windows\System32\MSDtc\* /grant administrators:f /t
del /f C:\Windows\System32\MSDtc\msdtc.log
nul > C:\Windows\System32\MSDtc\msdtc.log
attrib +r +s +i +h C:\Windows\System32\MSDtc\msdtc.log
takeown /f C:\ProgramData\Microsoft\Network\Downloader\* /r /d y
icacls C:\ProgramData\Microsoft\Network\Downloader\* /grant administrators:f /t
del /f C:\ProgramData\Microsoft\Network\Downloader\edbtmp.log
del /f C:\ProgramData\Microsoft\Network\Downloader\edbres00002.jrs
del /f C:\ProgramData\Microsoft\Network\Downloader\edbres00001.jrs
del /f C:\ProgramData\Microsoft\Network\Downloader\edb.log
del /f C:\ProgramData\Microsoft\Network\Downloader\qmgr.jfm
del /f C:\ProgramData\Microsoft\Network\Downloader\edb.chk
del /f C:\ProgramData\Microsoft\Network\Downloader\qmgr.db
nul > C:\ProgramData\Microsoft\Network\Downloader\edbtmp.log
nul > C:\ProgramData\Microsoft\Network\Downloader\edbres00002.jrs
nul > C:\ProgramData\Microsoft\Network\Downloader\edbres00001.jrs
nul > C:\ProgramData\Microsoft\Network\Downloader\edb.log
nul > C:\ProgramData\Microsoft\Network\Downloader\qmgr.jfm
nul > C:\ProgramData\Microsoft\Network\Downloader\edb.chk
nul > C:\ProgramData\Microsoft\Network\Downloader\qmgr.db
attrib +r +s +i +h C:\ProgramData\Microsoft\Network\Downloader\edbtmp.log
attrib +r +s +i +h C:\ProgramData\Microsoft\Network\Downloader\edbres00002.jrs
attrib +r +s +i +h C:\ProgramData\Microsoft\Network\Downloader\edbres00001.jrs
attrib +r +s +i +h C:\ProgramData\Microsoft\Network\Downloader\edb.log
attrib +r +s +i +h C:\ProgramData\Microsoft\Network\Downloader\qmgr.jfm
attrib +r +s +i +h C:\ProgramData\Microsoft\Network\Downloader\edb.chk
attrib +r +s +i +h C:\ProgramData\Microsoft\Network\Downloader\qmgr.db
takeown /f C:\Users\Administrator\AppData\Local\Microsoft\Windows\WebCache\* /r /d y
icacls C:\Users\Administrator\AppData\Local\Microsoft\Windows\WebCache /grant administrators:f /t
del /f C:\Users\Administrator\AppData\Local\Microsoft\Windows\WebCache\V01tmp.log
del /f C:\Users\Administrator\AppData\Local\Microsoft\Windows\WebCache\V01res00002.jrs
del /f C:\Users\Administrator\AppData\Local\Microsoft\Windows\WebCache\V01res00001.jrs
del /f C:\Users\Administrator\AppData\Local\Microsoft\Windows\WebCache\V0100001.log
del /f C:\Users\Administrator\AppData\Local\Microsoft\Windows\WebCache\webcachev01.jfm
del /f C:\Users\Administrator\AppData\Local\Microsoft\Windows\WebCache\webcachev01.dat
del /f C:\Users\Administrator\AppData\Local\Microsoft\Windows\WebCacheLock.dat
del /f C:\Users\Administrator\AppData\Local\Microsoft\Windows\WebCache\v01.log
del /f C:\Users\Administrator\AppData\Local\Microsoft\Windows\WebCache\v01.chk
nul > C:\Users\Administrator\AppData\Local\Microsoft\Windows\WebCache\V01tmp.log
nul > C:\Users\Administrator\AppData\Local\Microsoft\Windows\WebCache\V01res00002.jrs
nul > C:\Users\Administrator\AppData\Local\Microsoft\Windows\WebCache\V01res00001.jrs
nul > C:\Users\Administrator\AppData\Local\Microsoft\Windows\WebCache\V0100001.log
nul > C:\Users\Administrator\AppData\Local\Microsoft\Windows\WebCache\webcachev01.jfm
nul > C:\Users\Administrator\AppData\Local\Microsoft\Windows\WebCache\webcachev01.dat
nul > C:\Users\Administrator\AppData\Local\Microsoft\Windows\WebCacheLock.dat
nul > C:\Users\Administrator\AppData\Local\Microsoft\Windows\WebCache\v01.log
nul > C:\Users\Administrator\AppData\Local\Microsoft\Windows\WebCache\v01.chk
attrib +r +s +i +h C:\Users\Administrator\AppData\Local\Microsoft\Windows\WebCache\V01tmp.log
attrib +r +s +i +h C:\Users\Administrator\AppData\Local\Microsoft\Windows\WebCache\V01res00002.jrs
attrib +r +s +i +h C:\Users\Administrator\AppData\Local\Microsoft\Windows\WebCache\V01res00001.jrs
attrib +r +s +i +h C:\Users\Administrator\AppData\Local\Microsoft\Windows\WebCache\V0100001.log
attrib +r +s +i +h C:\Users\Administrator\AppData\Local\Microsoft\Windows\WebCache\webcachev01.jfm
attrib +r +s +i +h C:\Users\Administrator\AppData\Local\Microsoft\Windows\WebCache\webcachev01.dat
attrib +r +s +i +h C:\Users\Administrator\AppData\Local\Microsoft\Windows\WebCacheLock.dat
attrib +r +s +i +h C:\Users\Administrator\AppData\Local\Microsoft\Windows\WebCache\v01.log
attrib +r +s +i +h C:\Users\Administrator\AppData\Local\Microsoft\Windows\WebCache\v01.chk
rd /s /q C:\Users\Administrator\AppData\Local\Packages\MicrosoftWindows.UndockedDevKit_cw5n1h2txyewy
rd /s /q C:\Users\Administrator\AppData\Local\Packages\Microsoft.Windows.Cortana_cw5n1h2txyewy
rd /s /q C:\Users\Administrator\AppData\Local\Packages\Microsoft.Windows.Search_cw5n1h2txyewy
takeown /f "C:\Users\Administrator\AppData\Local\Microsoft\Internet Explorer\CacheStorage\*" /r /d y
icacls "C:\Users\Administrator\AppData\Local\Microsoft\Internet Explorer\CacheStorage\*" /grant administrators:f /t
del /f "C:\Users\Administrator\AppData\Local\Microsoft\Internet Explorer\CacheStorage\edbtmp.log"
del /f "C:\Users\Administrator\AppData\Local\Microsoft\Internet Explorer\CacheStorage\edbres00002.jrs"
del /f "C:\Users\Administrator\AppData\Local\Microsoft\Internet Explorer\CacheStorage\edbres00001.jrs"
del /f "C:\Users\Administrator\AppData\Local\Microsoft\Internet Explorer\CacheStorage\edb.log"
del /f "C:\Users\Administrator\AppData\Local\Microsoft\Internet Explorer\CacheStorage\edb.chk"
del /f "C:\Users\Administrator\AppData\Local\Microsoft\Internet Explorer\CacheStorage\.inUse"
nul > "C:\Users\Administrator\AppData\Local\Microsoft\Internet Explorer\CacheStorage\edbtmp.log"
nul > "C:\Users\Administrator\AppData\Local\Microsoft\Internet Explorer\CacheStorage\edbres00002.jrs"
nul > "C:\Users\Administrator\AppData\Local\Microsoft\Internet Explorer\CacheStorage\edbres00001.jrs"
nul > "C:\Users\Administrator\AppData\Local\Microsoft\Internet Explorer\CacheStorage\edb.log"
nul > "C:\Users\Administrator\AppData\Local\Microsoft\Internet Explorer\CacheStorage\edb.chk"
nul > "C:\Users\Administrator\AppData\Local\Microsoft\Internet Explorer\CacheStorage\.inUse"
attrib +r +s +i +h "C:\Users\Administrator\AppData\Local\Microsoft\Internet Explorer\CacheStorage\edbtmp.log"
attrib +r +s +i +h "C:\Users\Administrator\AppData\Local\Microsoft\Internet Explorer\CacheStorage"\edbres00002.jrs"
attrib +r +s +i +h "C:\Users\Administrator\AppData\Local\Microsoft\Internet Explorer\CacheStorage\edbres00001.jrs"
attrib +r +s +i +h "C:\Users\Administrator\AppData\Local\Microsoft\Internet Explorer\CacheStorage\edb.log"
attrib +r +s +i +h "C:\Users\Administrator\AppData\Local\Microsoft\Internet Explorer\CacheStorage\edb.chk"
attrib +r +s +i +h "C:\Users\Administrator\AppData\Local\Microsoft\Internet Explorer\CacheStorage\.inUse"
exit