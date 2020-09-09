#!/bin/bash
set -x
mysql -uroot <<MYSQL_SCRIPT
CREATE DATABASE petclinic;
CREATE USER 'petclinic'@'localhost' IDENTIFIED BY 'petclinic';
GRANT ALL PRIVILEGES ON petclinic.* TO 'petclinic'@'%';
GRANT ALL ON . TO petclinic@'%' IDENTIFIED BY "petclinic";
FLUSH PRIVILEGES;
SHOW DATABASES;
MYSQL_SCRIPT