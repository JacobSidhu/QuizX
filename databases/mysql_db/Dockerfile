# Using official MySQL base image
FROM mysql:8.0

# Setting default environment variables (can still be overridden at runtime)
ENV MYSQL_ROOT_PASSWORD=${PASSWORD}
ENV MYSQL_DATABASE=${DATABASE}

# Initialize database with seed data (executed on first container start)
COPY ./seed.sql /docker-entrypoint-initdb.d/seed.sql

# Expose default MySQL port
EXPOSE 3306