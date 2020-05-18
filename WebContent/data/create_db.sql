CREATE DATABASE HBUSER;
SELECT USER, HOST, PLUGIN FROM MYSQL.USER; 

DROP USER 'hbuser'@'localhost';
CREATE USER 'hbuser'@'localhost' IDENTIFIED BY 'hbuser';

GRANT ALL PRIVILEGES ON LARAVEL.* TO 'hbuser'@'localhost';
GRANT ALL PRIVILEGES ON HBUSER.* TO 'hbuser'@'localhost';
