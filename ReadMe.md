## DockerFile for PGroonga

DockerFile for great Postgresql Full text search extension [PGroonga](https://github.com/pgroonga/pgroonga)

Those images based on [postgres](https://hub.docker.com/_/postgres) and could use as same as `postgres` images

## Supported tags and respective Dockerfile links

1. **PGroonga(v2.1.8)with Postgresql(v11.1) on alpine(v3.8)** `2.1.8-alpine-11.1`,`latest` ([dockerfile](https://github.com/pgroonga/docker/blob/master/2.1.8/alpine/11.1/Dockerfile))

2. **PGroonga(v2.1.8)with Postgresql(v10.6) on alpine(v3.8)** `2.1.8-alpine-10.6` ([dockerfile](https://github.com/pgroonga/docker/tree/master/2.1.8/alpine/10.6/Dockerfile))

## Quick start

```shell
  docker run -d groonga/pgroonga
```

## How to use 

Here is a simple example for use by [docker-compose](https://github.com/docker/compose).

Create `docker-compose.yml` with lines below.
```docker-compose
version: '2'
services:
  PGroonga:
    image: groonga/pgroonga:2.1.8-alpine-11.1
    ports:
      - 5432:5432
    environment:
      POSTGRES_DB: PGroonga
      POSTGRES_PASSWORD: PGroonga
      POSTGRES_USER: PGroonga
```
now You can use `docker-compose up -d` command to start service.
by use any database manage tool to connect to database `PGroonga`,exceute command below to active PGroonga extension
```SQL
create extension pgroonga;
```

please take a look at [PGroonga website](https://pgroonga.github.io/) for details
