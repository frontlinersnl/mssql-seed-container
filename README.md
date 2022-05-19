[![logo](./logo.jpg)](https://inforit.nl)

# Microsoft SQL seed container

This container enables someone to seed a Microsoft SQL database given \*.sql seed files.

## Usage

### build your own container

Every seed file ending in .sql will be picked up in alphabetical order from the main working directory.
All you have to do is add them in the base container :)

```
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
    # this host works for Windows by default.. that's why I chose this
    hostname: host.docker.internal
    environment:
      SQL_DATABASE: "database-to-seed"

    # windows users: comment out extra_hosts section
    # linux/mac/wsl users: make sure the extra_hosts section ISN'T commented out
    extra_hosts:
      host.docker.internal: 172.17.0.1

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
