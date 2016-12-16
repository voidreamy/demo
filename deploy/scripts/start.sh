#!/bin/bash

nohup java -jar /home/ec2-user/demo.war >> /home/ec2-user/logs/demo.log 2>> /home/ec2-user/logs/demo_err.log < /dev/null &
