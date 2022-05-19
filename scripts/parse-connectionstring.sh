#!/bin/bash

# extract the values from the connection string
IFS=';' read -ra connectionStringSections <<< "$SQL_CONNECTION_STRING"

for section in "${connectionStringSections[@]}"
do
    IFS='=' read -ra sectionKeyValue <<< "$section"
    # key to lowecase
    sectionKeyValue[0]=${sectionKeyValue[0],,}
    # trim key
    sectionKeyValue[0]=$(echo -e "${sectionKeyValue[0]}" | sed -e 's/^[[:space:]]*//')

    if [ "${sectionKeyValue[0]}" = "server" ]; then
        IFS=',' read -ra serverKeyValue <<< "${sectionKeyValue[1]}"
        SQL_HOST=${serverKeyValue[0]}
        SQL_PORT=${serverKeyValue[1]}
    fi
    if [ "${sectionKeyValue[0]}" = "database" ]; then
        SQL_DATABASE=${sectionKeyValue[1]}
    fi
    if [ "${sectionKeyValue[0]}" = "user" ]; then
        SQL_USER=${sectionKeyValue[1]}
    fi
    if [ "${sectionKeyValue[0]}" = "password" ]; then
        SQL_PASSWORD=${sectionKeyValue[1]}
    fi
done

export SQL_HOST
export SQL_PORT
export SQL_DATABASE
export SQL_USER
export SQL_PASSWORD