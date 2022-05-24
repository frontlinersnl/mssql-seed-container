FROM mcr.microsoft.com/mssql-tools
WORKDIR /tmp/mssqlseed
COPY ./scripts/mssql-seed.sh /opt/mssql-seed.sh
COPY ./scripts/parse-connectionstring.sh /opt/parse-connectionstring.sh
RUN chmod +x /opt/mssql-seed.sh
CMD [ "/opt/mssql-seed.sh" ]
