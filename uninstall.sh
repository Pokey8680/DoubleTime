#!/bin/bash

# Define the backup file location inside the module's directory
BACKUP_FILE="/data/adb/modules/$(basename $MODPATH)/media_profiles_V1_0.xml.bak"

# Check if the backup file exists
if [ -f "$BACKUP_FILE" ]; then
    # Restore the original file from the backup
    cp "$BACKUP_FILE" /vendor/etc/media_profiles_V1_0.xml
fi
