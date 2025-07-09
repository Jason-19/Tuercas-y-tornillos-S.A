#!/bin/bash

# Variables básicas
REMOTE_USER=jason2025
REMOTE_HOST=192.168.1.100
REMOTE_PATH=/home/jason2025/oracle_bk
LOCAL_PATH=C:\\Users\\Jason\\containers\\Oracle\\oradata\\BD_BACKUP
ORACLE_HOME=/opt/oracle/product/19c/dbhome_1
ORACLE_SID=CONTINGENCIA

export ORACLE_HOME
export ORACLE_SID
export PATH=$ORACLE_HOME/bin:$PATH

mkdir -p $LOCAL_PATH

echo "Copiando backup desde $REMOTE_HOST ..."
scp $REMOTE_USER@$REMOTE_HOST:$REMOTE_PATH/full_*.bkp $LOCAL_PATH/

if [ $? -ne 0 ]; then
  echo "Error copiando el backup"
  exit 1
fi


rman target / <<EOF
STARTUP NOMOUNT;
RUN {
  ALLOCATE CHANNEL ch1 DEVICE TYPE DISK;
  RESTORE CONTROLFILE FROM '$LOCAL_PATH/full_*.bkp';
  ALTER DATABASE MOUNT;
  RESTORE DATABASE;
  RECOVER DATABASE;
  ALTER DATABASE OPEN RESETLOGS;
  RELEASE CHANNEL ch1;
}
EOF

echo "Restauración completa."
