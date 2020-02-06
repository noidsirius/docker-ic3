#!/bin/bash

BASE_DIR=""
APPS=${1:-`ls $BASE_DIR/APKs`}
for app in $APPS; 
do
    ./run-dare.sh $BASE_DIR/APKs/$app
    ./run-IC3.sh $BASE_DIR/APKs/$app 
done
