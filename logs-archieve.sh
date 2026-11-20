#!/bin/bash

SOURCE_DIR=$1
DEST_DIR=$2
DAYS=${3:-14}

if [ -z "$SOURCE_DIR" ] || [ -z "DEST_DIR" ];then
    echo "ERROR: source and destination directory empty"
    echo "Usage: $0 [source_dir] [destination_dir] [days: default 14]"
    exit 1
fi

if [ ! -d $SOURCE_DIR ]; then
    echo "Source dir: $SOURCE_DIR does not exist"
    exit 1
fi

if [ ! -d $DEST_DIR ]; then
    echo "Destination dir: $DEST_DIR does not exist"
    exit 1
fi