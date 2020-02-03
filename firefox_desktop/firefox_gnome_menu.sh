#!/usr/bin/env bash
BACKUP_DIR=~/.local/patch_backup
TARGET_FILE=/usr/share/applications/firefox.desktop
if [ ! -d $BACKUP_DIR ]; then
    mkdir $BACKUP_DIR
fi

cp $TARGET_FILE $BACKUP_DIR
patch $TARGET_FILE firefox.desktop.patch 
