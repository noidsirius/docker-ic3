#!/bin/bash

APK_PATH=$1
APK_NAME=$(basename "$APK_PATH")
APK_NAME=${APK_NAME%.*}
DARE_OUT=${2:-/dare_out/$APK_NAME}
ANDROID_JAR=android-28.jar
echo Run IC3 for $APK_NAME
java -Xmx8g -jar ic3.jar -input $DARE_OUT/retargeted/$APK_NAME -apkormanifest $APK_PATH -cp $ANDROID_JAR -protobuf $DARE_OUT -binary &> $DARE_OUT/ic3.log
