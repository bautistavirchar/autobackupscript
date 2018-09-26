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

# create folder hierrarchy for configuration files
backup_path_services=$backup_path/services
backup_path_services_year=$backup_path_services/$year
backup_path_services_month=$backup_path_services_year/$month
backup_path_services_day=$backup_path_services_month/$date

# create backup services directory
mkdir -p $backup_path_services_day

# EmployeeAttendanceCore
service=EmployeeAttendanceCore.service
cp /etc/systemd/system/$service $backup_path_services_day/$date$time$service

# NumberToWords
service=NumberToWords.service
cp /etc/systemd/system/$service $backup_path_services_day/$date$time$service

# PayrollSystem
service=PayrollSystem.service
cp /etc/systemd/system/$service $backup_path_services_day/$date$time$service

# searchAgentWebApiCoreMySQL
service=searchAgentWebApiCoreMySQL.service
cp /etc/systemd/system/$service $backup_path_services_day/$date$time$service