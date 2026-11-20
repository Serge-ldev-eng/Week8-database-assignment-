
# Week 8 Assignment: MySQL Database Backup and Restore
Database: sales

## Question 1: Creating a Complete Database Backup

**Task:** Create a complete backup of the sales database.

**Command:**
mysqldump -u root -p sales > sales_backup.sql

**Explanation:**
- `mysqldump` is the MySQL command-line utility used for backups.
- `-u root` uses root as the MySQL username.
- `-p` makes MySQL prompt for the password, so the password is not written in plain text.
- `sales` is the database we are backing up.
- `> sales_backup.sql` saves the backup into a file named sales_backup.sql.

Regular database backups are important because they protect against data loss from hardware failure, accidental deletion, corruption, or a failed update. If anything goes wrong, we can restore the database from the backup file and continue working.

## Question 2: Backing Up All Databases

**Task:** Create a backup of every database on the server before server migration.

**Command:**
mysqldump -u root -p --all-databases > all_databases_backup.sql

**Explanation:**
- `--all-databases` tells mysqldump to export every database on the MySQL server, not just sales.
- `-u root` uses root as the username.
- `-p` prompts for the password.
- `> all_databases_backup.sql` saves the backup into a file named all_databases_backup.sql.

Backing up all databases before migrating to another server is important because migration can fail or data can be lost. If we have a full backup, we can restore all databases on the new server exactly as they were on the old server.
