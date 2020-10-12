#!/usr/bin/env bash
BACKUP_DIR=~/.local/patch_backup
TARGET_FILE=/usr/share/applications/firefox.desktop

if [ $(id -u) -ne 0 ]; then
    echo "admin right necessary"
    exit
fi

if [ ! -d $BACKUP_DIR ]; then
    mkdir $BACKUP_DIR
fi

cp $TARGET_FILE $BACKUP_DIR/firefox.desktop_$(date +%d%m%y)
patch $TARGET_FILE patch_firefox.desktop
