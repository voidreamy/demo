#!/bin/bash

PID=`pgrep -f "java -jar demo-0.0.1-SNAPSHOT.war"`
kill $PID
if [ $PID ]; then
    while [ kill -0 $PID > /dev/null 2>&1 ]; do
      sleep 0.5
    done
fi
