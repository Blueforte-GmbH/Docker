#!/bin/bash

# Allow  query from outside
# sed -i '31 s/bind-address/#bind-address/' /etc/mysql/mysql.conf.d/mysqld.cnf

# start service
sudo service mysql start

# update admin password
# mysqlsdmin -u root password mdapass


# run the sql script
mysql -u root < create_tables.sql 

while [ true ]; do sleep 60; done
