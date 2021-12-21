FROM ubuntu:20.04

RUN apt-get update && apt-get install -y python3.8 pip mysql-server vim wget curl
RUN pip install mysql-connector-python

# EXPOSE 3306
