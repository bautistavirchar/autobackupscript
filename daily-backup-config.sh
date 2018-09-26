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
backup_path_config=$backup_path/config
backup_path_config_year=$backup_path_config/$year
backup_path_config_month=$backup_path_config_year/$month
backup_path_config_day=$backup_path_config_month/$date

# Create backup directories for config
mkdir -p $backup_path_config_day

# mysql config
mkdir -p $backup_path_config_day/mysql

# apache config
mkdir -p $backup_path_config_day/apache
mkdir -p $backup_path_config_day/apache/sites-available
mkdir -p $backup_path_config_day/apache/sites-enabled

# fstab
mkdir -p $backup_path_config_day/fstab

# copy configuration files
# mysql 
# /etc/mysql/my.cnf
config=my.cnf
cp /etc/mysql/$config /$backup_path_config_day/mysql/$date$time$config

# apache        apache2.conf, ports.conf, sites-available/000-default.conf, sites-enabled/000-default.conf
# /etc/apache2/apache2.conf
config=apache2.conf
cp /etc/apache2/$config $backup_path_config_day/apache/$date$time$config

# /etc/apache2/ports.conf
config=ports.conf
cp /etc/apache2/$config $backup_path_config_day/apache/$date$time$config

# /etc/apache2/sites-available/000-default.conf
config=000-default.conf
cp /etc/apache2/sites-available/$config $backup_path_config_day/apache/sites-available/$date$time$config

# nextcloud
# /etc/apache2/sites-available/nextcloud.conf
config=nextcloud.conf
cp /etc/apache2/sites-available/$config $backup_path_config_day/apache/sites-available/$date$time$config

# /etc/apache2/sites-enabled/000-default.conf
config=000-default.conf
cp /etc/apache2/sites-enabled/$config $backup_path_config_day/apache/sites-enabled/$date$time$config

# nextcloud
# /etc/apache2/sites-enabled/nextcloud.conf
config=nextcloud.conf
cp /etc/apache2/sites-enabled/$config $backup_path_config_day/apache/sites-enabled/$date$time$config


# nginx config
mkdir -p $backup_path_config_day/nginx
mkdir -p $backup_path_config_day/nginx/sites-available
mkdir -p $backup_path_config_day/nginx/sites-enabled

# nginx
# /etc/nginx/nginx.conf
config=nginx.conf
cp /etc/nginx/$config $backup_path_config_day/nginx/$date$time$config

# nginx sites-available
# /etc/nginx/sites-available/default
config=default
cp /etc/nginx/sites-available/$config $backup_path_config_day/nginx/sites-available/$date$time$config

# fstab
config=fstab
cp /etc/$config $backup_path_config_day/fstab/$date$time$config