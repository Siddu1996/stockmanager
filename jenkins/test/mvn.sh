#!/bin/bash

echo "*************************************"
echo "** TESTING THE CODE *********************"
echo "*************************************"

WORKSPACE=/var/lib/jenkins/workspace/stock-maven-app


docker run --rm -v $WORKSPACE/stockmanager:/stockmanager-s -v /root/.m2/:/root/.m2/ -w /stockmanager-s maven:latest "$@"

