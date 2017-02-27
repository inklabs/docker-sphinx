#!/bin/bash
set -e

while ! mysqladmin -h mysql -u user -ppass ping --silent; do
    >&2 echo "Mysql is unavailable - sleeping"
    sleep 1
done

>&2 echo "Mysql is up."
