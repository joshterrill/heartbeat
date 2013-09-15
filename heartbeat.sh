#!/bin/bash

SERVER=google.com  #SERVER TO PING
SID=  #ACCOUNT SID
AUTH_TOKEN=  #AUTH TOKEN
NUMBER=  #NUMBER REGISTERED WITH TWILIO
RECIPIENT=  #SMS RECIPIENT

while true
do
  if ping -c 1 $SERVER > /dev/null;
    then echo "Everything is OK"
  else
    echo "Server could not be reached" | ./twilio-sms.sh -d $NUMBER -u $SID -p $AUTH_TOKEN $RECIPIENT
  fi
  sleep 300
done