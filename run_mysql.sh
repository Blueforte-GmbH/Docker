#!/bin/bash

# cd /var/mysql_dock_test/
# start service
sudo service mysql start


# run the sql script
mysql -u root < create_tables.sql 