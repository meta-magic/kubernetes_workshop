#!/bin/sh

IP=$POD_IP
FILE=$IP".txt"

while : 
do 
DATA="`date`:Omega GB Volume Test for $IP : File = $FILE"
echo $DATA
echo $DATA >> $FILE
sleep 2
done;
