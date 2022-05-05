FROM ubuntu:20.04
ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get install -y python3.8 pip mysql-server vim wget curl sudo
RUN pip install mysql-connector-python

EXPOSE 3306
WORKDIR /mysql_docker

COPY run_mysql.sh .
COPY create_tables.sql .
COPY query_db.py .

RUN chmod +x ./run_mysql.sh

CMD [ "./run_mysql.sh" ]
