# Week 8 Assignment: MySQL Database Backup and Restore
Database: sales

## Question 1: Creating a Complete Database Backup

**Command:**
mysqldump -u root -p sales > sales_backup.sql

**Explanation:**
- `mysqldump` is the MySQL backup utility
- `-u root` uses root as the username
- `-p` prompts for the password, so the password is not exposed in history
- `sales` is the database to backup
- `> sales_backup.sql` saves the backup to a file

Regular backups are important because they protect against data loss from hardware failure, accidental deletion, corruption, or failed updates. With a backup, we can restore the database quickly and continue work.

## Question 2: Backing Up All Databases

**Command:**
mysqldump -u root -p --all-databases > all_databases_backup.sql

**Explanation:**
- `--all-databases` exports every database on the MySQL server, not just sales
- `-u root` and `-p` same as above
- Output saved to all_databases_backup.sql

Backing up all databases before migration is important because migration can fail, data can be lost, or settings can change. A full backup ensures we can restore everything on the new server exactly as it was.

## Question 3: Data-Only Backup

**Command:**
mysqldump -u root -p --no-create-info sales > sales_data_only.sql

**Explanation:**
- `--no-create-info` skips CREATE TABLE statements, so only INSERT data is backed up
- Useful when the table structure already exists and we only need the data, for example to move data or to restore data without changing structure.

## Question 4: Restoring a Backup

**Command to restore sales backup:**
mysql -u root -p sales < sales_backup.sql

**Command to restore all databases:**
mysql -u root -p < all_databases_backup.sql

**Explanation:**
Restore uses `mysql` (not mysqldump) with `<` to read the .sql file back into the database. This is how disaster recovery and migration work - backup with mysqldump, restore with mysql.
