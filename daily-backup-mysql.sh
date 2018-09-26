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

# MySql Database credentials
user="backup"
password="MyFuckingPassword..."
host="localhost"
db_name="mysql"

# MYSQL
# create folder hierarchy mysql databases
backup_path_mysql=$backup_path_databases/mysql
backup_path_year=$backup_path_mysql/$year
backup_path_month=$backup_path_year/$month
backup_path_day=$backup_path_month/$date

# Create Backup Directories for MYSQL
mkdir -p $backup_path_day

# Dump database into SQL file

# ---------------------------------------------------
db_name="dbtest"
mysqldump --user=$user --password=$password --host=$host $db_name > $backup_path_day/$date$time$db_name.sql
# ---------------------------------------------------

