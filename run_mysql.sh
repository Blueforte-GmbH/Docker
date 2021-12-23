#!/bin/bash

# start service
sudo service mysql start

# run the sql script
mysql -u root < create_tables.sql 