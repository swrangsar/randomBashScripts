#!/bin/bash
LOGFILE=timeWhoUptime.log
date > $LOGFILE
who >> $LOGFILE
uptime >> $LOGFILE
cat $LOGFILE
rm $LOGFILE