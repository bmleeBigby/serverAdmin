FROM mysql

COPY src/trucorp-db.sql /docker-entrypoint-initdb.d/