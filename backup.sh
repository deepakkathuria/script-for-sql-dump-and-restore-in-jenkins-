#!/bin/bash
database_name=""# name of database you have to dump
password=''
username=''
db_2=''# name of the database you have to restore your dump
mysqldump --user=$username --password=$password $database_name > p.sql
mysql --user=$username --password=$password $db_2 < p.sql
