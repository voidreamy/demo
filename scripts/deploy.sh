#!/bin/bash

ARTIFACT="demo-0.0.1-SNAPSHOT.war"
ssh $DEPLOY_USER@$DEPLOY_HOST "mv $DEPLOY_PATH/$ARTIFACT $DEPLOY_PATH/$ARTIFACT.old"
scp "$HOME/build/voidreamy/demo/target/$ARTIFACT" $DEPLOY_USER@$DEPLOY_HOST:$DEPLOY_PATH
ssh $DEPLOY_USER@$DEPLOY_HOST "PID=`pgrep -f $ARTIFACT`; echo "kill $PID"; kill $PID; while kill -0 $PID >/dev/null 2>&1; do sleep 0.5; done"
ssh $DEPLOY_USER@$DEPLOY_HOST "nohup java -jar $DEPLOY_PATH/$ARTIFACT >> nohup.out 2>> nohup.err < /dev/null &"
