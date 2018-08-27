FROM mysql:5.6

COPY database/siompubarat.sql /docker-entrypoint-initdb.d
