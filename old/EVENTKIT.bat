SC STOP eventlog BITS
SC CONFIG eventlog START= DISABLED
SC STOP mssecflt BITS
SC CONFIG mssecflt START= DISABLED
SC STOP wecsvc
SC CONFIG wecsvc START= DISABLED
SC STOP Systemeventsbroker BITS
SC CONFIG systemeventsbroker START= DISABLED
EXIT
