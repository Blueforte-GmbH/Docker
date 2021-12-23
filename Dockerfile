FROM ubuntu:20.04

RUN apt-get update && apt-get install -y python3.8 pip mysql-server vim wget curl sudo
RUN pip install mysql-connector-python

# EXPOSE 3306
WORKDIR /mysql_docker

COPY run_mysql.sh .
COPY create_tables.sql .
COPY query_db.py .

RUN ./run_mysql.sh
RUN python3 query_db.py
