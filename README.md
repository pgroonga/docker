## DockerFile for PGroonga

DockerFile for great Postgresql Full text search extension [PGroonga](https://github.com/pgroonga/pgroonga)

Those images based on [postgres](https://hub.docker.com/_/postgres) and could use as same as `postgres` images

## Supported tags and respective Dockerfile links

| PGroonga | PostgreSQL | Distribution             | Tags                                        | Path                                             |
| -------- | ---------- | ------------------------ | ------------------------------------------- | ------------------------------------------------ |
| 2.2.0    | 11         | Alpine Linux             | 2.2.0-alpine-slim-11, latest-alpine-slim-11 | [alpine/slim-11/Dockefile][2.2.0-alpine-slim-11] |
| 2.2.0    | 10         | Alpine Linux             | 2.2.0-alpine-slim-10, latest-alpine-slim-10 | [alpine/slim-10/Dockefile][2.2.0-alpine-slim-10] |
| 2.2.0    | 11         | Alpine Linux             | 2.2.0-alpine-11, latest-alpine-11, latest   | [alpine/11/Dockefile][2.2.0-alpine-11]           |
| 2.2.0    | 10         | Alpine Linux             | 2.2.0-alpine-10, latest-alpine-10           | [alpine/10/Dockefile][2.2.0-alpine-10]           |
| 2.2.0    | 9.6        | Debian GNU/Linux Stretch | 2.2.0-debian-9.6, latest-debian-9.6         | [debian/9.6/Dockefile][2.2.0-debian-9.6]         |
| 2.1.9    | 11         | Alpine Linux             | 2.1.9-alpine-11                             | [alpine/11/Dockefile][2.1.9-alpine-11]           |
| 2.1.9    | 10         | Alpine Linux             | 2.1.9-alpine-10                             | [alpine/10/Dockefile][2.1.9-alpine-10]           |
| 2.1.9    | 9.6        | Debian GNU/Linux Stretch | 2.1.9-debiana-9.6                           | [debian/9.6/Dockefile][2.1.9-debian-9.6]         |
| 2.1.8    | 11.1       | Alpine Linux             | 2.1.8-alpine-11.1                           | [alpine/11.1/Dockefile][2.1.8-alpine-11.1]       |
| 2.1.8    | 10.6       | Alpine Linux             | 2.1.8-alpine-10.6                           | [alpine/10.6/Dockefile][2.1.8-alpine-10.6]       |
| 2.1.8    | 9.6        | Debian GNU/Linux Stretch | 2.1.8-debiana-9.6                           | [debian/9.6/Dockefile][2.1.8-debian-9.6]         |

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
    image: groonga/pgroonga:latest
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

[2.2.0-alpine-slim-11]: https://github.com/pgroonga/docker/tree/2.2.0-alpine-11/alpine/slim-11/Dockerfile
[2.2.0-alpine-slim-10]: https://github.com/pgroonga/docker/tree/2.2.0-alpine-11/alpine/slim-10/Dockerfile
[2.2.0-alpine-11]: https://github.com/pgroonga/docker/tree/2.2.0-alpine-11/alpine/11/Dockerfile
[2.2.0-alpine-10]: https://github.com/pgroonga/docker/tree/2.2.0-alpine-10/alpine/10/Dockerfile
[2.2.0-debian-9.6]: https://github.com/pgroonga/docker/tree/2.2.0-debian-9.6/debian/9.6/Dockerfile
[2.1.9-alpine-11]: https://github.com/pgroonga/docker/tree/85d8a529eab16afb2af350d7f34c5ef7f1a761cc/2.1.9/alpine/11/Dockerfile
[2.1.9-alpine-10]: https://github.com/pgroonga/docker/tree/85d8a529eab16afb2af350d7f34c5ef7f1a761cc/2.1.9/alpine/10/Dockerfile
[2.1.9-debian-9.6]: https://github.com/pgroonga/docker/tree/85d8a529eab16afb2af350d7f34c5ef7f1a761cc/2.1.9/debian/9.6/Dockerfile
[2.1.8-alpine-11.1]: https://github.com/pgroonga/docker/tree/85d8a529eab16afb2af350d7f34c5ef7f1a761cc/2.1.8/alpine/11.1/Dockerfile
[2.1.8-alpine-10.6]: https://github.com/pgroonga/docker/tree/85d8a529eab16afb2af350d7f34c5ef7f1a761cc/2.1.8/alpine/10.6/Dockerfile
[2.1.8-debian-9.6]: https://github.com/pgroonga/docker/tree/85d8a529eab16afb2af350d7f34c5ef7f1a761cc/2.1.8/debian/9.6/Dockerfile
