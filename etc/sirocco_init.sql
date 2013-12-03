CREATE USER 'sirocco'@'localhost' IDENTIFIED BY 'sirocco';
GRANT ALL PRIVILEGES ON *.* TO 'sirocco'@'localhost' WITH GRANT OPTION;
CREATE DATABASE sirocco;
GRANT ALL ON *.* to sirocco@'%' IDENTIFIED BY 'sirocco';