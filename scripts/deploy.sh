#!/bin/bash

ARTIFACT="demo-${TRAVIS_COMMIT:0:6}.war"
scp "$HOME/build/voidreamy/demo/target/demo-0.0.1-SNAPSHOT.war" $DEPLOY_USER@$DEPLOY_HOST:$DEPLOY_PATH/$ARTIFACT
ssh $DEPLOY_USER@$DEPLOY_HOST "sh $DEPLOY_PATH/restart.sh $ARTIFACT"
