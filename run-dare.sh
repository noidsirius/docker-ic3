#!/bin/bash

APK_PATH=$1
APK_NAME=$(basename "$APK_PATH")
APK_NAME=${APK_NAME%.*}
DARE_OUT=${2:-/dare_out/$APK_NAME}
mkdir -p $DARE_OUT
TMP_DIR=$(pwd)/tmp_dir
echo Retargetting $APK_NAME
./dare/dare -d $TMP_DIR $APK_PATH &> $DARE_OUT/dare.log
cp -r $TMP_DIR/* $DARE_OUT
rm -r $TMP_DIR
