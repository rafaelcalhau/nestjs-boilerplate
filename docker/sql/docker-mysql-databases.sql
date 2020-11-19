-- create databases
CREATE DATABASE IF NOT EXISTS `app_production`;
CREATE DATABASE IF NOT EXISTS `app_development`;
CREATE DATABASE IF NOT EXISTS `app_test`;

-- create root user and grant rights
CREATE USER IF NOT EXISTS 'root'@'%' IDENTIFIED BY 'root';
GRANT ALL ON *.* TO 'root'@'%';