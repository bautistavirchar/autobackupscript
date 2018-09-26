<!--Headings-->
# This is a simple daily backup for:

> * **Configuration** files
> * **MSSQL** .bak files
> * **MySQL** script files
> * **Services** files

> * ```sudo crontab -e```

> * 58 23  * * 1-6 /media/driveD/scripts/daily-backup-services.sh
> * 58 23  * * 1-6 /media/driveD/scripts/daily-backup-mysql.sh
> * 58 23  * * 1-6 /media/driveD/scripts/daily-backup-mssql.sh
> * 58 23  * * 1-6 /media/driveD/scripts/daily-backup-config.sh
> * 0 0 1 * * /media/driveD/scripts/backup-monthly.sh