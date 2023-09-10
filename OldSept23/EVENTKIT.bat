SC STOP eventlog
SC CONFIG eventlog START= DISABLED
SC STOP mssecflt
SC CONFIG mssecflt START= DISABLED
SC STOP wecsvc
SC CONFIG wecsvc START= DISABLED
SC STOP Systemeventsbroker
SC CONFIG systemeventsbroker START= DISABLED
EXIT
