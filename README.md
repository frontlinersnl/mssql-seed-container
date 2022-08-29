[![logo](./logo.jpg)](https://inforit.nl)

# Microsoft SQL seed container

This container enables someone to seed a Microsoft SQL database given \*.sql seed files.

## Usage

### build your own container

Every seed file ending in .sql will be picked up in alphabetical order from the main working directory.
All you have to do is add them in the base container :)

```sh
FROM inforitnl/mssql-seed
COPY ./seed-files .
```

### use your container in compose files

```sh
version: "3.4"

services:
  seed:
    image: seed-container-name
    container_name: seed-container-name
    hostname: host.docker.internal
    environment:
      SQL_DATABASE: "database-to-seed"

    extra_hosts:
      # linux/mac users: next line only works for you.
      host.docker.internal: 172.17.0.1
      # windows users: comment out next line and comment previous line.
      #host.docker.internal: 192.168.65.2

```

## container variables

| Variable                 | Purpose                                                                                      |
| ------------------------ | -------------------------------------------------------------------------------------------- |
| SQL_CONNECTION_STRING    | SQL connection string. When provided it ignores the parameters listed below.                 |
| SQL_HOST                 | Host to connect to (defaults to `127.0.0.1`)                                                 |
| SQL_PORT                 | Port number to connect to (defaults to `1433`).                                              |
| SQL_USERNAME             | username (defaults to `sa`)                                                                  |
| SQL_PASSWORD             | password (defaults to `Your_password123`)                                                    |
| SQL_DATABASE             | Database name (will be created when not exists)                                              |

## update instructions

1. update dockerfile
2. build local version:

   ```sh
   docker build -t inforitnl/mssql-seed .
   ```

3. push new version to dockerhub:

   ```sh
   docker push inforitnl/mssql-seed
   ```

4. tag and push again (optional but recommended):

   ```sh
   docker tag inforitnl/mssql-seed inforitnl/mssql-seed:1.0.0
   docker push inforitnl/mssql-seed:1.0.0
   ```

## how to test

1. Build test container

   ```sh
   docker build -t inforitnl/mssql-seed-test ./test
   ```

2. Run `docker-compose up` to start a sql server instance.
3. Run the seed test container using:

   ```sh
   docker run \
     -e SQL_DATABASE="test" \
     --network="host" \
     inforitnl/mssql-seed-test

   ```

As a result both the database (`test`) and table (`Example`) has been created and the table is filled with 5 example records.
