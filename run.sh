service mariadb start &&
mysql -u root -e "CREATE DATABASE aerocms;" &&
mysql -u root aerocms < /var/www/html/aerocms.sql &&
rm /var/www/html/aerocms.sql && #it contains the admin password hash
mysql -u root -e "grant all privileges on *.* to root@localhost identified by '' with grant option;" &&
mysql -u root -e "flush privileges" &&
sleep 3 && service apache2 start