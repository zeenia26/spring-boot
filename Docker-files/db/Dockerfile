FROM mysql:latest

ENV MYSQL_ROOT_USER='root'
ENV MYSQL_ROOT_PASSWORD='fQq0E5MWfR'
ENV MYSQL_DATABASE='springdb'

ADD db_backup.sql docker-entrypoint-initdb.d/db_backup.sql

EXPOSE 3306
