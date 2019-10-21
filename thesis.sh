#!/bin/bash       
#title           :thesis.sh
#description     :This script will run as a cronjob every 'X' seconds
#author		 :Rohan Dsouza
#usage		 :bash thesis.sh OR ./thesis.sh
#=========================================================================================================

HOSTS='./hosts'
PID='/tmp/lock.file'

if [ -f "$PID" ]
then
	echo "Exiting from if loop"
      	exit 2
else
	echo > $PID
fi

for i in `tail -n +2 $HOSTS`
do
	echo $i
done







rm -f $PID
