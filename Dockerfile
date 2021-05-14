FROM mcr.microsoft.com/mssql-tools
WORKDIR /tmp/mssqlseed
COPY ./scripts .
RUN chmod +x ./mssql-seed.sh
CMD [ "./mssql-seed.sh" ]