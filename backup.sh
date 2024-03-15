#!/bin/bash

# MySQL database credentials
DB_USER="your_db_user"
DB_PASS="your_db_password"
DB_NAME="your_db_name"

# Backup directory
BACKUP_DIR="/path/to/backup/directory"

# Timestamp for backup file
TIMESTAMP=$(date '+%Y%m%d%H%M%S')

# Log file
LOG_FILE="/path/to/logfile.log"

# Connect to MySQL database and export a dump
mysqldump -u $DB_USER -p$DB_PASS $DB_NAME > $BACKUP_DIR/backup_$TIMESTAMP.sql

# Check if backup was successful
if [ $? -eq 0 ]; then
    echo "$(date '+%Y-%m-%d %H:%M:%S') - Backup successful" >> $LOG_FILE
else
    echo "$(date '+%Y-%m-%d %H:%M:%S') - Backup failed" >> $LOG_FILE
    exit 1
fi

# Remove old backups 
find $BACKUP_DIR -type f -mtime +7 -exec rm {} \;
