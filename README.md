## DockerFile for PGroonga

DockerFile for great Postgresql Full text search extension [PGroonga](https://github.com/pgroonga/pgroonga)

Those images based on [postgres](https://hub.docker.com/_/postgres) and could use as same as `postgres` images

## Supported tags and respective Dockerfile links

PGroonga | PostgreSQL | Distribution             | tag
-------- | ---------- | ------------------------ | ------------------------------------
2.1.9    | 11         | Alpine Linux             | 2.1.9-alpine-11, latest
2.1.9    | 10         | Alpine Linux             | 2.1.9-alpine-10
2.1.9    | 9.6        | Debian GNU/Linux Stretch | 2.1.9-debiana-9.6, latest-debian-9.6
2.1.8    | 11.1       | Alpine Linux             | 2.1.8-alpine-11.1
2.1.8    | 10.6       | Alpine Linux             | 2.1.8-alpine-10.6
2.1.8    | 9.6        | Debian GNU/Linux Stretch | 2.1.8-debiana-9.6

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
