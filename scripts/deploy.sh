#!/bin/bash
ARTIFACT='/home/travis/build/voidreamy/demo/target/demo-0.0.1-SNAPSHOT.war'
scp $ARTIFACT $DEPLOY_USER@$DEPLOY_HOST:$DEPLOY_PATH
ssh $DEPLOY_USER@$DEPLOY_HOST "nohup java jar $ARTIFACT nohup.out &"
