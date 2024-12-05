#!/bin/bash

# Define the backup file location inside the module's directory
BACKUP_FILE="/data/adb/modules/$(basename $MODPATH)/media_profiles_V1_0.xml.bak"

# Check if the original file exists and is not already backed up
if [ -f /vendor/etc/media_profiles_V1_0.xml ] && [ ! -f "$BACKUP_FILE" ]; then
    # Backup the original file to the module's directory
    cp /vendor/etc/media_profiles_V1_0.xml "$BACKUP_FILE"
# Inform user of backup location
  ui_print "Your original media_profiles was backed up at $BACKUP_FILE"
fi
