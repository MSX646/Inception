CREATE DATABASE IF NOT EXISTS wordpress;
CREATE USER IF NOT EXISTS 'kezekiel'@'%' IDENTIFIED BY 'strong';
GRANT ALL PRIVILEGES ON wordpress.* TO 'kezekiel'@'%';
FLUSH PRIVILEGES;
ALTER USER 'root'@'localhost' IDENTIFIED BY 'rootstrong';
