reg delete HKEY_CLASSES_ROOT\CLSID\{A6FF50C0-56C0-71CA-5732-BED303A59628} /f
ECHO OFF
ECHO ....................disable kdnic, compositebus, umbus, ndis virt, RDPREMOTETERM,...in devmgmt.msc......or windows breaks...........
SC STOP BITS
SC CONFIG BITS START= DISABLED
SC STOP SECLOGON
SC CONFIG SECLOGON START= DISABLED
SC STOP WSCSVC
SC CONFIG WSCSVC START= DISABLED
SC STOP SGRMBROKER
SC CONFIG SGRMBROKER START= DISABLED
SC STOP WSEARCH
SC CONFIG WSEARCH START= DISABLED
SC STOP NGCCTNRSVC
SC CONFIG NGCCTNRSVC START= DISABLED
SC STOP SECURITYHEALTHSERVICE
SC CONFIG SECURITYHEALTHSERVICE START= DISABLED
SC STOP LANMANSERVER
SC CONFIG LANMANSERVER START= DISABLED
SC STOP WINDEFEND
SC CONFIG WINDEFEND START= DISABLED
SC STOP DIAGTRACK
SC CONFIG DIAGTRACK START= DISABLED
SC STOP SPOOLER
SC CONFIG SPOOLER START= DISABLED
SC STOP LANMANWORKSTATION
SC CONFIG LANMANWORKSTATION START= DISABLED
SC STOP WINHTTPAUTOPROXYSVC
SC CONFIG WINHTTPAUTOPROXYSVC START= DISABLED
SC STOP SHELLHWDETECTION
SC CONFIG SHELLHWDETECTION START= DISABLED
SC STOP STATEREPOSITORY
SC CONFIG STATEREPOSITORY START= DISABLED
SC STOP DUSMSVC
SC CONFIG DUSMSVC START= DISABLED
SC STOP TABLETINPUTSERVICE
SC CONFIG TABLETINPUTSERVICE START= DISABLED
SC STOP FONTCACHE
SC CONFIG FONTCACHE START= DISABLED
SC STOP "AMD EXTERNAL EVENTS UTILITY"
SC CONFIG "AMD EXTERNAL EVENTS UTILITY" START= DISABLED
SC STOP TOKENBROKER
SC CONFIG TOKENBROKER START= DISABLED
SC STOP HIDSERV
SC CONFIG HIDSERV START= DISABLED
SC STOP NCBSERVICE 
SC CONFIG NCBSERVICE START= DISABLED
SC STOP SYSMAIN
SC CONFIG SYSMAIN START= DISABLED
SC STOP SAMSS
SC CONFIG SAMSS START= DISABLED
SC STOP VAULTSVC
SC CONFIG VAULTSVC START= DISABLED
SC STOP KEYISO
SC CONFIG KEYISO START= DISABLED
SC STOP SPPSVC
SC CONFIG SPPSVC START= DISABLED
SC STOP TIMEBROKERSVC
SC CONFIG TIMEBROKERSVC START= DISABLED
SC STOP AHCACHE
SC CONFIG AHCACHE START= DISABLED
SC STOP AMDGPIO2
SC CONFIG AMDGPIO2 START= DISABLED
SC STOP AMDGPIO
SC CONFIG AMDGPIO START= DISABLED
SC STOP BROWSER
SC CONFIG BROWSER START= DISABLED
SC STOP VWIFIFLT
SC CONFIG VWIFIFLT START= DISABLED
SC STOP CLFS
SC CONFIG CLFS START= DISABLED
SC STOP COMPOSITEBUS
SC CONFIG COMPOSITEBUS START= DISABLED
SC STOP CSC
SC CONFIG CSC START= DISABLED
SC STOP DFSC
SC CONFIG DFSC START= DISABLED
SC STOP HTTP
SC CONFIG HTTP START= DISABLED
SC STOP INTELPEP
SC CONFIG INTELPEP START= DISABLED
SC STOP GPIOCIX0101
SC CONFIG GPIOCIX0101 START= DISABLED
SC STOP UMBUS
SC CONFIG UMBUS START= DISABLED
SC STOP MMCSS
SC CONFIG MMCSS START= DISABLED
SC STOP MRXSMB20
SC CONFIG MRXSMB20 START= DISABLED
SC STOP MRXSMB
SC CONFIG MRXSMB START= DISABLED
SC STOP PCW
SC CONFIG PCW START= DISABLED
SC STOP RDPBUS
SC CONFIG RDPBUS START= DISABLED
SC STOP RDBSS
SC CONFIG RDBSS START= DISABLED
SC STOP NPSVCTRIG
SC CONFIG NPSVCTRIG START= DISABLED
SC STOP TCPIPREG
SC CONFIG TCPIPREG START= DISABLED
SC STOP SRV2
SC CONFIG SRV2 START= DISABLED
SC STOP STORAGEQOSFLT
SC CONFIG STORAGEQOSFLT START= DISABLED
SC STOP SERIAL
SC CONFIG SERIAL START= DISABLED
SC STOP SGRMAGENT
SC CONFIG SGRMAGENT START= DISABLED
SC STOP NETBIOS
SC CONFIG NETBIOS START= DISABLED
SC STOP LMHOSTS
SC CONFIG LMHOSTS START= DISABLED
SC STOP NDU
SC CONFIG NDU START= DISABLED
SC STOP NDISVIRTUALBUS
SC CONFIG NDISVIRTUALBUS START= DISABLED
SC STOP DSMSVC
SC CONFIG DSMSVC START= DISABLED
EXIT