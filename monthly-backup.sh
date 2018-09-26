#!/bin/bash
# Author: Virchar C. Bautista
# Email: bautistavirchar@gmail.com
# LinkedIn: https://linkedin.com/in/bautistavirchar

# create folder hierarchy
backup_path_mysql="/media/driveD/backups/databases/mysql"
backup_path_mssql="/media/driveD/backups/databases/mssql"
year=$(date +"%Y")

backup_path_mysql_year=$backup_path_mysql/$year
backup_path_mssql_year=$backup_path_mssql/$year

# Only keep archives older than 5 months
# Delete files or folders older than 155 days
find $backup_path_mysql_year/* -mtime +155 exec rm -r {} \;
find $backup_path_mssql_year/* -mtime +155 exec rm -r {} \;