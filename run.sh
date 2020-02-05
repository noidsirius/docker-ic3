#!/bin/bash

BASE_DIR=""
#echo $BASE_DIR
for app in `ls $BASE_DIR/APKs`; 
do
    app_name=$(echo $app | cut -f1 -d'.')
#    echo $app_name
    mkdir -p $BASE_DIR/dare_out/$app_name
    dare-1.1.0-linux/dare -d $BASE_DIR/dare_out/$app_name $BASE_DIR/APKs/$app
    java -Xmx8g -jar ic3-0.2.0/ic3-0.2.0-full.jar -apkormanifest $BASE_DIR/APKs/$app -input $BASE_DIR/dare_out/$app_name/retargeted/$app_name -cp ic3-0.2.0/android.jar -protobuf $BASE_DIR/dare_out/$app_name -binary
done
