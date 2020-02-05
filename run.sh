#!/bin/bash

BASE_DIR=$(pwd)
#echo $BASE_DIR
for app in `ls APKs`; 
do
    app_name=$(echo $app | cut -f1 -d'.')
#    echo $app_name
    mkdir -p dare_out/$app_name
    $BASE_DIR/dare-1.1.0-linux/dare -d $BASE_DIR/dare_out/$app_name $BASE_DIR/APKs/$app
    java -Xmx8g -jar ic3-0.2.0/ic3-0.2.0-full.jar -apkormanifest APKs/$app -input dare_out/$app_name/retargeted/$app_name -cp ic3-0.2.0/android.jar -protobuf dare_out/$app_name -binary
done
