
export ORACLE_SID=ORCL
FECHA=$(date +"%Y%m%d")
DUMP_FILE_NAME=BD_COMPLETA_$FECHA.dmp
LOGFILE=BD_COMPLETA_$FECHA.log
USER=system
expdp $USER/admin@localhost:1521/$ORACLE_SID dumpfile=$DUMP_FILE_NAME logfile=$LOGFILE full=y Directory=DATA_PUMP_DIR


