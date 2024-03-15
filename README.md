# MySQL Database Backup Script

This script automates the backup of a MySQL database. It connects to the database, exports a dump, and stores it in a specified backup directory. Additionally, it logs the backup status with timestamps for monitoring.

## Usage

1. Open the `backup.sh` script in a text editor.
2. Update the following variables with your MySQL database credentials and backup directory:
   - `DB_USER`: Your MySQL database username.
   - `DB_PASS`: Your MySQL database password.
   - `DB_NAME`: The name of the MySQL database you want to backup.
   - `BACKUP_DIR`: The directory where you want to store the backup file.
   - `LOG_FILE`: The path to the log file for monitoring.
3. Save the changes.
4. Make the script executable by running:
   ```bash
   chmod +x backup.sh

## Running the Script

To run the backup script, follow these steps:

1. Open a terminal.
2. Navigate to the directory containing the `backup.sh` script.
3. Execute the script by running the following command:
   ```bash
   ./backup.sh

## Verifying the Backup

After running the script, verify the backup by checking the specified backup directory for the generated backup file ('backup_TIMESTAMP.sql').

## Scheduling Automatic Backups

To schedule the backup script to run automatically at specified intervals, you can use cron or any other scheduling tool. For example, to schedule the backup to run daily at midnight, you can add the following entry to your crontab:

```bash
  0 0 * * * /path/to/backup.sh
