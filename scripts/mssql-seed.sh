#!/bin/bash
#set -euo pipefail
PATH="/opt/mssql-tools/bin:$PATH"

# Environmentals
# Optional:
SQL_HOST="${SQL_HOST:-"127.0.0.1"}"
SQL_PORT="${SQL_PORT:-"1433"}"
SQL_USERNAME="${SQL_USERNAME:-"sa"}"
SQL_PASSWORD="${SQL_PASSWORD:-"Your_password123"}"
# Required:
# SQL_DATABASE
if [[ -z "${SQL_DATABASE}" ]]; then
    echo "SQL_DATABASE env variable is required. Exiting.."
    exit 1
fi

# Create database if not exists.
sqlcmd \
    -S "$SQL_HOST,$SQL_PORT" \
    -U "$SQL_USERNAME" \
    -P "$SQL_PASSWORD" \
    -Q "IF NOT EXISTS (SELECT * FROM sys.databases WHERE name = '$SQL_DATABASE') BEGIN CREATE DATABASE $SQL_DATABASE; END"
if [ $? -eq 1 ]; then
    exit 1
fi

# Execute each file in working dir in aphabetical order.
for currentFile in $(ls | sort | grep .sql); do
    echo "Processing ${currentFile}"
    sqlcmd \
        -S "$SQL_HOST,$SQL_PORT" \
        -U "$SQL_USERNAME" \
        -P "$SQL_PASSWORD" \
        -d "$SQL_DATABASE" \
        -i "$currentFile"
    if [ $? -eq 1 ]; then
        exit 1
    fi
done
