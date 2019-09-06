sudo /etc/init.d/mysql start
mysql -uroot -e "create database stepic;"
mysql -uroot -e "grant all privileges on stepic.* to 'django'@'localhost';"
mysql -uroot -e "FLUSH PRIVILEGES;"
