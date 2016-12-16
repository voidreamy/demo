#!/bin/bash

nohup java -jar /home/ec2-user/demo-0.0.1-SNAPSHOT.war >> /home/ec2-user/logs/demo.log 2>> /home/ec2-user/logs/demo_err.log < /dev/null &
