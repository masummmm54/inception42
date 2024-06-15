#!/bin/bash
set -e

# Start MariaDB server
docker-entrypoint.sh mysqld &

# Wait for MariaDB server to start (use a better check in production)
sleep 10

# Run the upgrade script
mysql -u root -p"$MYSQL_ROOT_PASSWORD" < /docker-entrypoint-initdb.d/upgrade.sql

# Keep the container running
tail -f /dev/null
