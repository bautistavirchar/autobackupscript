#!/bin/bash
# Author: Virchar C. Bautista
# Email: bautistavirchar@gmail.com
# LinkedIn: https://linkedin.com/in/bautistavirchar

# Backup paths
backup_path="/media/driveD/backups"
backup_path_databases=$backup_path/databases

# Initialize dates
time=$(date +"_%H-%M-%S_")
date=$(date +"%Y-%m-%d")
month=$(date +"%Y-%m")
year=$(date +"%Y")

# MSSQL 
# Credentials
mssql_cmd=/opt/mssql-tools/bin/sqlcmd
mssql_user=sa
mssql_pwd=MyFuckingPassword...

# MSSQL
# create folder hierarchy mssql databases
path_mssql_data="/var/opt/mssql/data"
backup_path_mssql=$backup_path_databases/mssql
backup_path_year=$backup_path_mssql/$year
backup_path_month=$backup_path_year/$month
backup_path_day_mssql=$backup_path_month/$date

# Create Backup Directories for MSSQL
mkdir -p $backup_path_day_mssql
datetime=$date$time

# ---------------------------------------------------
# DbTest
database_name=DbTest       
filename=$database_name-$datetime.bak

# mssql commands backup
$mssql_cmd -S localhost -U $mssql_user -P $mssql_pwd -Q"
BACKUP DATABASE [$database_name] TO  DISK = N'$path_mssql_data/$filename' WITH NOFORMAT, NOINIT,  NAME = N'$database_name-Full-$datetime', NOSKIP, REWIND, NOUNLOAD, STATS = 10
GO
exit"
mv $path_mssql_data/$filename $backup_path_day_mssql
# ---------------------------------------------------

