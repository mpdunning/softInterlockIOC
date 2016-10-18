#!../../bin/linux-x86_64/softInt

< envPaths

cd ${TOP}

dbLoadDatabase "dbd/softInt.dbd"
softInt_registerRecordDeviceDriver pdbbase

epicsEnvSet("N", "01")
epicsEnvSet("P", "ESB:SOFTINT$(N)")

save_restoreSet_status_prefix("")
save_restoreSet_IncompleteSetsOk(1)
save_restoreSet_DatedBackupFiles(1)
set_savefile_path("/nfs/slac/g/testfac/esb/$(IOC)", "autosave")
set_pass0_restoreFile("softInt.sav")
set_pass1_restoreFile("softInt.sav")

dbLoadRecords("db/softInt-nlcta.db", "P=$(P)")

#cd ${AUTOSAVE}
#dbLoadRecords("db/save_restoreStatus.db", "P=$(P)")

cd ${TOP}/iocBoot/${IOC}
iocInit

create_monitor_set("softInt.req", 30, "P=$(P)")
