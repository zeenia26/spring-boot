FROM mysql:latest

ENV MYSQL_ROOT_USER='root'
ENV MYSQL_ROOT_PASSWORD='Chris93!'
ENV MYSQL_DATABASE='springdb'

ADD db_backup.sql docker-entrypoint-initdb.d/db_backup.sql
