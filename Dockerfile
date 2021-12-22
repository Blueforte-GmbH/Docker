FROM ubuntu:20.04

RUN apt-get update && apt-get install -y python3.8 pip mysql-server vim wget curl sudo
RUN pip install mysql-connector-python

# EXPOSE 3306
ENV PROJECT_FOLDER /var/mysql_dock_test/
COPY run_mysql.sh $PROJECT_FOLDER
COPY create_tables.sql $PROJECT_FOLDER

RUN /var/my_sql_dock_test/run_mysql.sh