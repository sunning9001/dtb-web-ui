#!/bin/bash

export JAVA_HOME=$HOME/jdk1.7.0_21

export MAIN_SERVER_OBJECT=com.afis.dtb.SpringBootAdminApplication
export MAIN_SERVRt_OPTS=" -d64 -server -Xms1024M -Xmx1536M "
export HFP_SERVER_HOME=$HOME/dtb-web-ui
export HFP_SERVER_CONFIG=$HFP_SERVER_HOME/config
export HFP_SERVER_LIB=$HFP_SERVER_HOME/lib
export HFP_SERVER_LOG=$HFP_SERVER_HOME/logs
export HFP_SERVER_PID=$HFP_SERVER_HOME/bin/$MAIN_SERVER_OBJECT.pid

CLASSPATH=.:$HFP_SERVER_CONFIG
cd $HFP_SERVER_LIB
for  lname in `ls -rt *.jar`
do
        CLASSPATH=$CLASSPATH:$HFP_SERVER_LIB"/"$lname
done
export CLASSPATH=$CLASSPATH

