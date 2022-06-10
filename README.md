## Dockerfile for PGroonga

Dockerfile for great PostgreSQL full text search extension [PGroonga](https://github.com/pgroonga/pgroonga)

Those images based on [postgres](https://hub.docker.com/_/postgres) and could use as same as `postgres` images

## Supported tags and respective Dockerfile links

| PGroonga | PostgreSQL | Distribution             | Tags                                        | Path                                              |
| -------- | ---------- | ------------------------ | ------------------------------------------- | ------------------------------------------------- |
| 2.3.7    | 14         | Alpine Linux             | 2.3.7-alpine-14, latest-alpine-14, latest   | [alpine/14/Dockerfile][2.3.7-alpine-14]           |
| 2.3.7    | 13         | Alpine Linux             | 2.3.7-alpine-13, latest-alpine-13           | [alpine/13/Dockerfile][2.3.7-alpine-13]           |
| 2.3.7    | 12         | Alpine Linux             | 2.3.7-alpine-12, latest-alpine-12           | [alpine/12/Dockerfile][2.3.7-alpine-12]           |
| 2.3.7    | 11         | Alpine Linux             | 2.3.7-alpine-11, latest-alpine-11           | [alpine/11/Dockerfile][2.3.7-alpine-11]           |
| 2.3.7    | 10         | Alpine Linux             | 2.3.7-alpine-10, latest-alpine-10           | [alpine/10/Dockerfile][2.3.7-alpine-10]           |
| 2.3.7    | 14         | Alpine Linux             | 2.3.7-alpine-14-slim, latest-alpine-14-slim | [alpine/14-slim/Dockerfile][2.3.7-alpine-14-slim] |
| 2.3.7    | 13         | Alpine Linux             | 2.3.7-alpine-13-slim, latest-alpine-13-slim | [alpine/13-slim/Dockerfile][2.3.7-alpine-13-slim] |
| 2.3.7    | 12         | Alpine Linux             | 2.3.7-alpine-12-slim, latest-alpine-12-slim | [alpine/12-slim/Dockerfile][2.3.7-alpine-12-slim] |
| 2.3.7    | 11         | Alpine Linux             | 2.3.7-alpine-11-slim, latest-alpine-11-slim | [alpine/11-slim/Dockerfile][2.3.7-alpine-11-slim] |
| 2.3.7    | 10         | Alpine Linux             | 2.3.7-alpine-10-slim, latest-alpine-10-slim | [alpine/10-slim/Dockerfile][2.3.7-alpine-10-slim] |
| 2.3.7    | 14         | Debian GNU/Linux Bullseye | 2.3.7-debian-14, latest-debian-14           | [debian/14/Dockerfile][2.3.7-debian-14]           |
| 2.3.7    | 13         | Debian GNU/Linux Bullseye | 2.3.7-debian-13, latest-debian-13           | [debian/13/Dockerfile][2.3.7-debian-13]           |
| 2.3.7    | 12         | Debian GNU/Linux Bullseye | 2.3.7-debian-12, latest-debian-12           | [debian/12/Dockerfile][2.3.7-debian-12]           |
| 2.3.7    | 11         | Debian GNU/Linux Bullseye | 2.3.7-debian-11, latest-debian-11           | [debian/11/Dockerfile][2.3.7-debian-11]           |
| 2.3.4    | 14         | Alpine Linux             | 2.3.4-alpine-14, latest-alpine-14, latest   | [alpine/14/Dockerfile][2.3.4-alpine-14]           |
| 2.3.4    | 13         | Alpine Linux             | 2.3.4-alpine-13, latest-alpine-13           | [alpine/13/Dockerfile][2.3.4-alpine-13]           |
| 2.3.4    | 12         | Alpine Linux             | 2.3.4-alpine-12, latest-alpine-12           | [alpine/12/Dockerfile][2.3.4-alpine-12]           |
| 2.3.4    | 11         | Alpine Linux             | 2.3.4-alpine-11, latest-alpine-11           | [alpine/11/Dockerfile][2.3.4-alpine-11]           |
| 2.3.4    | 10         | Alpine Linux             | 2.3.4-alpine-10, latest-alpine-10           | [alpine/10/Dockerfile][2.3.4-alpine-10]           |
| 2.3.4    | 14         | Alpine Linux             | 2.3.4-alpine-14-slim, latest-alpine-14-slim | [alpine/14-slim/Dockerfile][2.3.4-alpine-14-slim] |
| 2.3.4    | 13         | Alpine Linux             | 2.3.4-alpine-13-slim, latest-alpine-13-slim | [alpine/13-slim/Dockerfile][2.3.4-alpine-13-slim] |
| 2.3.4    | 12         | Alpine Linux             | 2.3.4-alpine-12-slim, latest-alpine-12-slim | [alpine/12-slim/Dockerfile][2.3.4-alpine-12-slim] |
| 2.3.4    | 11         | Alpine Linux             | 2.3.4-alpine-11-slim, latest-alpine-11-slim | [alpine/11-slim/Dockerfile][2.3.4-alpine-11-slim] |
| 2.3.4    | 10         | Alpine Linux             | 2.3.4-alpine-10-slim, latest-alpine-10-slim | [alpine/10-slim/Dockerfile][2.3.4-alpine-10-slim] |
| 2.3.4    | 14         | Debian GNU/Linux Bullseye | 2.3.4-debian-14, latest-debian-14           | [debian/14/Dockerfile][2.3.4-debian-14]           |
| 2.3.4    | 13         | Debian GNU/Linux Bullseye | 2.3.4-debian-13, latest-debian-13           | [debian/13/Dockerfile][2.3.4-debian-13]           |
| 2.3.4    | 12         | Debian GNU/Linux Bullseye | 2.3.4-debian-12, latest-debian-12           | [debian/12/Dockerfile][2.3.4-debian-12]           |
| 2.3.4    | 11         | Debian GNU/Linux Bullseye | 2.3.4-debian-11, latest-debian-11           | [debian/11/Dockerfile][2.3.4-debian-11]           |
| 2.3.3    | 14         | Alpine Linux             | 2.3.3-alpine-14                             | [alpine/14/Dockerfile][2.3.3-alpine-14]           |
| 2.3.3    | 13         | Alpine Linux             | 2.3.3-alpine-13                             | [alpine/13/Dockerfile][2.3.3-alpine-13]           |
| 2.3.3    | 12         | Alpine Linux             | 2.3.3-alpine-12                             | [alpine/12/Dockerfile][2.3.3-alpine-12]           |
| 2.3.3    | 11         | Alpine Linux             | 2.3.3-alpine-11                             | [alpine/11/Dockerfile][2.3.3-alpine-11]           |
| 2.3.3    | 10         | Alpine Linux             | 2.3.3-alpine-10                             | [alpine/10/Dockerfile][2.3.3-alpine-10]           |
| 2.3.3    | 14         | Alpine Linux             | 2.3.3-alpine-14-slim                        | [alpine/14-slim/Dockerfile][2.3.3-alpine-14-slim] |
| 2.3.3    | 13         | Alpine Linux             | 2.3.3-alpine-13-slim                        | [alpine/13-slim/Dockerfile][2.3.3-alpine-13-slim] |
| 2.3.3    | 12         | Alpine Linux             | 2.3.3-alpine-12-slim                        | [alpine/12-slim/Dockerfile][2.3.3-alpine-12-slim] |
| 2.3.3    | 11         | Alpine Linux             | 2.3.3-alpine-11-slim                        | [alpine/11-slim/Dockerfile][2.3.3-alpine-11-slim] |
| 2.3.3    | 10         | Alpine Linux             | 2.3.3-alpine-10-slim                        | [alpine/10-slim/Dockerfile][2.3.3-alpine-10-slim] |
| 2.3.3    | 14         | Debian GNU/Linux Bullseye | 2.3.3-debian-14                             | [debian/14/Dockerfile][2.3.3-debian-14]           |
| 2.3.3    | 13         | Debian GNU/Linux Bullseye | 2.3.3-debian-13                             | [debian/13/Dockerfile][2.3.3-debian-13]           |
| 2.3.3    | 12         | Debian GNU/Linux Bullseye | 2.3.3-debian-12                             | [debian/12/Dockerfile][2.3.3-debian-12]           |
| 2.3.3    | 11         | Debian GNU/Linux Bullseye | 2.3.3-debian-11                             | [debian/11/Dockerfile][2.3.3-debian-11]           |
| 2.3.2    | 14         | Alpine Linux             | 2.3.2-alpine-14                             | [alpine/14/Dockerfile][2.3.2-alpine-14]           |
| 2.3.2    | 13         | Alpine Linux             | 2.3.2-alpine-13                             | [alpine/13/Dockerfile][2.3.2-alpine-13]           |
| 2.3.2    | 12         | Alpine Linux             | 2.3.2-alpine-12                             | [alpine/12/Dockerfile][2.3.2-alpine-12]           |
| 2.3.2    | 11         | Alpine Linux             | 2.3.2-alpine-11                             | [alpine/11/Dockerfile][2.3.2-alpine-11]           |
| 2.3.2    | 10         | Alpine Linux             | 2.3.2-alpine-10                             | [alpine/10/Dockerfile][2.3.2-alpine-10]           |
| 2.3.2    | 14         | Alpine Linux             | 2.3.2-alpine-14-slim                        | [alpine/14-slim/Dockerfile][2.3.2-alpine-14-slim] |
| 2.3.2    | 13         | Alpine Linux             | 2.3.2-alpine-13-slim                        | [alpine/13-slim/Dockerfile][2.3.2-alpine-13-slim] |
| 2.3.2    | 12         | Alpine Linux             | 2.3.2-alpine-12-slim                        | [alpine/12-slim/Dockerfile][2.3.2-alpine-12-slim] |
| 2.3.2    | 11         | Alpine Linux             | 2.3.2-alpine-11-slim                        | [alpine/11-slim/Dockerfile][2.3.2-alpine-11-slim] |
| 2.3.2    | 10         | Alpine Linux             | 2.3.2-alpine-10-slim                        | [alpine/10-slim/Dockerfile][2.3.2-alpine-10-slim] |
| 2.3.2    | 14         | Debian GNU/Linux Bullseye | 2.3.2-debian-14                             | [debian/14/Dockerfile][2.3.2-debian-14]           |
| 2.3.2    | 13         | Debian GNU/Linux Bullseye | 2.3.2-debian-13                             | [debian/13/Dockerfile][2.3.2-debian-13]           |
| 2.3.2    | 12         | Debian GNU/Linux Bullseye | 2.3.2-debian-12                             | [debian/12/Dockerfile][2.3.2-debian-12]           |
| 2.3.2    | 11         | Debian GNU/Linux Bullseye | 2.3.2-debian-11                             | [debian/11/Dockerfile][2.3.2-debian-11]           |
| 2.3.1    | 13         | Alpine Linux             | 2.3.1-alpine-13                             | [alpine/13/Dockerfile][2.3.1-alpine-13]           |
| 2.3.1    | 12         | Alpine Linux             | 2.3.1-alpine-12                             | [alpine/12/Dockerfile][2.3.1-alpine-12]           |
| 2.3.1    | 11         | Alpine Linux             | 2.3.1-alpine-11                             | [alpine/11/Dockerfile][2.3.1-alpine-11]           |
| 2.3.1    | 10         | Alpine Linux             | 2.3.1-alpine-10                             | [alpine/10/Dockerfile][2.3.1-alpine-10]           |
| 2.3.1    | 13         | Alpine Linux             | 2.3.1-alpine-13-slim                        | [alpine/13-slim/Dockerfile][2.3.1-alpine-13-slim] |
| 2.3.1    | 12         | Alpine Linux             | 2.3.1-alpine-12-slim                        | [alpine/12-slim/Dockerfile][2.3.1-alpine-12-slim] |
| 2.3.1    | 11         | Alpine Linux             | 2.3.1-alpine-11-slim                        | [alpine/11-slim/Dockerfile][2.3.1-alpine-11-slim] |
| 2.3.1    | 10         | Alpine Linux             | 2.3.1-alpine-10-slim                        | [alpine/10-slim/Dockerfile][2.3.1-alpine-10-slim] |
| 2.3.1    | 13         | Debian GNU/Linux Bullseye | 2.3.1-debian-13                             | [debian/13/Dockerfile][2.3.1-debian-13]           |
| 2.3.1    | 12         | Debian GNU/Linux Bullseye | 2.3.1-debian-12                             | [debian/12/Dockerfile][2.3.1-debian-12]           |
| 2.3.1    | 11         | Debian GNU/Linux Bullseye | 2.3.1-debian-11                             | [debian/11/Dockerfile][2.3.1-debian-11]           |
| 2.3.0    | 13         | Alpine Linux             | 2.3.0-alpine-13                             | [alpine/13/Dockerfile][2.3.0-alpine-13]           |
| 2.3.0    | 12         | Alpine Linux             | 2.3.0-alpine-12                             | [alpine/12/Dockerfile][2.3.0-alpine-12]           |
| 2.3.0    | 11         | Alpine Linux             | 2.3.0-alpine-11                             | [alpine/11/Dockerfile][2.3.0-alpine-11]           |
| 2.3.0    | 10         | Alpine Linux             | 2.3.0-alpine-10                             | [alpine/10/Dockerfile][2.3.0-alpine-10]           |
| 2.3.0    | 13         | Alpine Linux             | 2.3.0-alpine-13-slim                        | [alpine/13-slim/Dockerfile][2.3.0-alpine-13-slim] |
| 2.3.0    | 12         | Alpine Linux             | 2.3.0-alpine-12-slim                        | [alpine/12-slim/Dockerfile][2.3.0-alpine-12-slim] |
| 2.3.0    | 11         | Alpine Linux             | 2.3.0-alpine-11-slim                        | [alpine/11-slim/Dockerfile][2.3.0-alpine-11-slim] |
| 2.3.0    | 10         | Alpine Linux             | 2.3.0-alpine-10-slim                        | [alpine/10-slim/Dockerfile][2.3.0-alpine-10-slim] |
| 2.3.0    | 13         | Debian GNU/Linux Bullseye | 2.3.0-debian-13                             | [debian/13/Dockerfile][2.3.0-debian-13]           |
| 2.3.0    | 12         | Debian GNU/Linux Bullseye | 2.3.0-debian-12                             | [debian/12/Dockerfile][2.3.0-debian-12]           |
| 2.3.0    | 11         | Debian GNU/Linux Bullseye | 2.3.0-debian-11                             | [debian/11/Dockerfile][2.3.0-debian-11]           |
| 2.2.9    | 13         | Alpine Linux             | 2.2.9-alpine-13                             | [alpine/13/Dockerfile][2.2.9-alpine-13]           |
| 2.2.9    | 12         | Alpine Linux             | 2.2.9-alpine-12                             | [alpine/12/Dockerfile][2.2.9-alpine-12]           |
| 2.2.9    | 11         | Alpine Linux             | 2.2.9-alpine-11                             | [alpine/11/Dockerfile][2.2.9-alpine-11]           |
| 2.2.9    | 10         | Alpine Linux             | 2.2.9-alpine-10                             | [alpine/10/Dockerfile][2.2.9-alpine-10]           |
| 2.2.9    | 13         | Alpine Linux             | 2.2.9-alpine-13-slim                        | [alpine/13-slim/Dockerfile][2.2.9-alpine-13-slim] |
| 2.2.9    | 12         | Alpine Linux             | 2.2.9-alpine-12-slim                        | [alpine/12-slim/Dockerfile][2.2.9-alpine-12-slim] |
| 2.2.9    | 11         | Alpine Linux             | 2.2.9-alpine-11-slim                        | [alpine/11-slim/Dockerfile][2.2.9-alpine-11-slim] |
| 2.2.9    | 10         | Alpine Linux             | 2.2.9-alpine-10-slim                        | [alpine/10-slim/Dockerfile][2.2.9-alpine-10-slim] |
| 2.2.9    | 13         | Debian GNU/Linux Buster  | 2.2.9-debian-13                             | [debian/13/Dockerfile][2.2.9-debian-13]           |
| 2.2.9    | 12         | Debian GNU/Linux Buster  | 2.2.9-debian-12                             | [debian/12/Dockerfile][2.2.9-debian-12]           |
| 2.2.9    | 11         | Debian GNU/Linux Buster  | 2.2.9-debian-11                             | [debian/11/Dockerfile][2.2.9-debian-11]           |
| 2.2.7    | 13         | Alpine Linux             | 2.2.7-alpine-13                             | [alpine/13/Dockerfile][2.2.7-alpine-13]           |
| 2.2.7    | 12         | Alpine Linux             | 2.2.7-alpine-12                             | [alpine/12/Dockerfile][2.2.7-alpine-12]           |
| 2.2.7    | 11         | Alpine Linux             | 2.2.7-alpine-11                             | [alpine/11/Dockerfile][2.2.7-alpine-11]           |
| 2.2.7    | 10         | Alpine Linux             | 2.2.7-alpine-10                             | [alpine/10/Dockerfile][2.2.7-alpine-10]           |
| 2.2.7    | 13         | Alpine Linux             | 2.2.7-alpine-13-slim                        | [alpine/13-slim/Dockerfile][2.2.7-alpine-13-slim] |
| 2.2.7    | 12         | Alpine Linux             | 2.2.7-alpine-12-slim                        | [alpine/12-slim/Dockerfile][2.2.7-alpine-12-slim] |
| 2.2.7    | 11         | Alpine Linux             | 2.2.7-alpine-11-slim                        | [alpine/11-slim/Dockerfile][2.2.7-alpine-11-slim] |
| 2.2.7    | 10         | Alpine Linux             | 2.2.7-alpine-10-slim                        | [alpine/10-slim/Dockerfile][2.2.7-alpine-10-slim] |
| 2.2.7    | 13         | Debian GNU/Linux Buster  | 2.2.7-debian-13                             | [debian/13/Dockerfile][2.2.7-debian-13]           |
| 2.2.7    | 12         | Debian GNU/Linux Buster  | 2.2.7-debian-12                             | [debian/12/Dockerfile][2.2.7-debian-12]           |
| 2.2.7    | 11         | Debian GNU/Linux Buster  | 2.2.7-debian-11                             | [debian/11/Dockerfile][2.2.7-debian-11]           |
| 2.2.7    | 9.6        | Debian GNU/Linux Stretch | 2.2.7-debian-9.6                            | [debian/9.6/Dockerfile][2.2.7-debian-9.6]         |
| 2.2.6    | 12         | Alpine Linux             | 2.2.6-alpine-12                             | [alpine/12/Dockerfile][2.2.6-alpine-12]           |
| 2.2.6    | 11         | Alpine Linux             | 2.2.6-alpine-11                             | [alpine/11/Dockerfile][2.2.6-alpine-11]           |
| 2.2.6    | 10         | Alpine Linux             | 2.2.6-alpine-10                             | [alpine/10/Dockerfile][2.2.6-alpine-10]           |
| 2.2.6    | 12         | Alpine Linux             | 2.2.6-alpine-12-slim                        | [alpine/12-slim/Dockerfile][2.2.6-alpine-12-slim] |
| 2.2.6    | 11         | Alpine Linux             | 2.2.6-alpine-11-slim                        | [alpine/11-slim/Dockerfile][2.2.6-alpine-11-slim] |
| 2.2.6    | 10         | Alpine Linux             | 2.2.6-alpine-10-slim                        | [alpine/10-slim/Dockerfile][2.2.6-alpine-10-slim] |
| 2.2.6    | 12         | Debian GNU/Linux Buster  | 2.2.6-debian-12                             | [debian/12/Dockerfile][2.2.6-debian-12]           |
| 2.2.6    | 11         | Debian GNU/Linux Buster  | 2.2.6-debian-11                             | [debian/11/Dockerfile][2.2.6-debian-11]           |
| 2.2.6    | 9.6        | Debian GNU/Linux Stretch | 2.2.6-debian-9.6                            | [debian/9.6/Dockerfile][2.2.6-debian-9.6]         |
| 2.2.5    | 12         | Alpine Linux             | 2.2.5-alpine-12                             | [alpine/12/Dockerfile][2.2.5-alpine-12]           |
| 2.2.5    | 11         | Alpine Linux             | 2.2.5-alpine-11                             | [alpine/11/Dockerfile][2.2.5-alpine-11]           |
| 2.2.5    | 10         | Alpine Linux             | 2.2.5-alpine-10                             | [alpine/10/Dockerfile][2.2.5-alpine-10]           |
| 2.2.5    | 12         | Alpine Linux             | 2.2.5-alpine-12-slim                        | [alpine/12-slim/Dockerfile][2.2.5-alpine-12-slim] |
| 2.2.5    | 11         | Alpine Linux             | 2.2.5-alpine-11-slim                        | [alpine/11-slim/Dockerfile][2.2.5-alpine-11-slim] |
| 2.2.5    | 10         | Alpine Linux             | 2.2.5-alpine-10-slim                        | [alpine/10-slim/Dockerfile][2.2.5-alpine-10-slim] |
| 2.2.5    | 11         | Debian GNU/Linux Buster  | 2.2.5-debian-11                             | [debian/11/Dockerfile][2.2.5-debian-11]           |
| 2.2.5    | 9.6        | Debian GNU/Linux Stretch | 2.2.5-debian-9.6                            | [debian/9.6/Dockerfile][2.2.5-debian-9.6]         |
| 2.2.2    | 12         | Alpine Linux             | 2.2.2-alpine-12                             | [alpine/12/Dockerfile][2.2.2-alpine-12]           |
| 2.2.2    | 11         | Alpine Linux             | 2.2.2-alpine-11                             | [alpine/11/Dockerfile][2.2.2-alpine-11]           |
| 2.2.2    | 10         | Alpine Linux             | 2.2.2-alpine-10                             | [alpine/10/Dockerfile][2.2.2-alpine-10]           |
| 2.2.2    | 12         | Alpine Linux             | 2.2.2-alpine-12-slim                        | [alpine/12-slim/Dockerfile][2.2.2-alpine-12-slim] |
| 2.2.2    | 11         | Alpine Linux             | 2.2.2-alpine-11-slim                        | [alpine/11-slim/Dockerfile][2.2.2-alpine-11-slim] |
| 2.2.2    | 10         | Alpine Linux             | 2.2.2-alpine-10-slim                        | [alpine/10-slim/Dockerfile][2.2.2-alpine-10-slim] |
| 2.2.2    | 11         | Debian GNU/Linux Buster  | 2.2.2-debian-11                             | [debian/11/Dockerfile][2.2.2-debian-11]           |
| 2.2.2    | 9.6        | Debian GNU/Linux Stretch | 2.2.2-debian-9.6                            | [debian/9.6/Dockerfile][2.2.2-debian-9.6]         |
| 2.2.1    | 11         | Alpine Linux             | 2.2.1-alpine-11                             | [alpine/11/Dockerfile][2.2.1-alpine-11]           |
| 2.2.1    | 10         | Alpine Linux             | 2.2.1-alpine-10                             | [alpine/10/Dockerfile][2.2.1-alpine-10]           |
| 2.2.1    | 11         | Alpine Linux             | 2.2.1-alpine-11-slim                        | [alpine/11-slim/Dockerfile][2.2.1-alpine-11-slim] |
| 2.2.1    | 10         | Alpine Linux             | 2.2.1-alpine-10-slim                        | [alpine/10-slim/Dockerfile][2.2.1-alpine-10-slim] |
| 2.2.1    | 11         | Debian GNU/Linux Buster  | 2.2.1-debian-11                             | [debian/11/Dockerfile][2.2.1-debian-11]           |
| 2.2.1    | 9.6        | Debian GNU/Linux Stretch | 2.2.1-debian-9.6                            | [debian/9.6/Dockerfile][2.2.1-debian-9.6]         |
| 2.2.0    | 11         | Alpine Linux             | 2.2.0-alpine-11                             | [alpine/11/Dockerfile][2.2.0-alpine-11]           |
| 2.2.0    | 10         | Alpine Linux             | 2.2.0-alpine-10                             | [alpine/10/Dockerfile][2.2.0-alpine-10]           |
| 2.2.0    | 11         | Alpine Linux             | 2.2.0-alpine-slim-11                        | [alpine/slim-11/Dockerfile][2.2.0-alpine-slim-11] |
| 2.2.0    | 10         | Alpine Linux             | 2.2.0-alpine-slim-10                        | [alpine/slim-10/Dockerfile][2.2.0-alpine-slim-10] |
| 2.2.0    | 9.6        | Debian GNU/Linux Stretch | 2.2.0-debian-9.6                            | [debian/9.6/Dockerfile][2.2.0-debian-9.6]         |
| 2.1.9    | 11         | Alpine Linux             | 2.1.9-alpine-11                             | [alpine/11/Dockerfile][2.1.9-alpine-11]           |
| 2.1.9    | 10         | Alpine Linux             | 2.1.9-alpine-10                             | [alpine/10/Dockerfile][2.1.9-alpine-10]           |
| 2.1.9    | 9.6        | Debian GNU/Linux Stretch | 2.1.9-debian-9.6                            | [debian/9.6/Dockerfile][2.1.9-debian-9.6]         |
| 2.1.8    | 11.1       | Alpine Linux             | 2.1.8-alpine-11.1                           | [alpine/11.1/Dockerfile][2.1.8-alpine-11.1]       |
| 2.1.8    | 10.6       | Alpine Linux             | 2.1.8-alpine-10.6                           | [alpine/10.6/Dockerfile][2.1.8-alpine-10.6]       |
| 2.1.8    | 9.6        | Debian GNU/Linux Stretch | 2.1.8-debian-9.6                            | [debian/9.6/Dockerfile][2.1.8-debian-9.6]         |

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

[2.3.7-alpine-14]: https://github.com/pgroonga/docker/tree/2.3.7/alpine/14/Dockerfile
[2.3.7-alpine-13]: https://github.com/pgroonga/docker/tree/2.3.7/alpine/13/Dockerfile
[2.3.7-alpine-12]: https://github.com/pgroonga/docker/tree/2.3.7/alpine/12/Dockerfile
[2.3.7-alpine-11]: https://github.com/pgroonga/docker/tree/2.3.7/alpine/11/Dockerfile
[2.3.7-alpine-10]: https://github.com/pgroonga/docker/tree/2.3.7/alpine/10/Dockerfile
[2.3.7-alpine-14-slim]: https://github.com/pgroonga/docker/tree/2.3.7/alpine/14-slim/Dockerfile
[2.3.7-alpine-13-slim]: https://github.com/pgroonga/docker/tree/2.3.7/alpine/13-slim/Dockerfile
[2.3.7-alpine-12-slim]: https://github.com/pgroonga/docker/tree/2.3.7/alpine/12-slim/Dockerfile
[2.3.7-alpine-11-slim]: https://github.com/pgroonga/docker/tree/2.3.7/alpine/11-slim/Dockerfile
[2.3.7-alpine-10-slim]: https://github.com/pgroonga/docker/tree/2.3.7/alpine/10-slim/Dockerfile
[2.3.7-debian-14]: https://github.com/pgroonga/docker/tree/2.3.7/debian/14/Dockerfile
[2.3.7-debian-13]: https://github.com/pgroonga/docker/tree/2.3.7/debian/13/Dockerfile
[2.3.7-debian-12]: https://github.com/pgroonga/docker/tree/2.3.7/debian/12/Dockerfile
[2.3.7-debian-11]: https://github.com/pgroonga/docker/tree/2.3.7/debian/11/Dockerfile
[2.3.4-alpine-14]: https://github.com/pgroonga/docker/tree/2.3.4/alpine/14/Dockerfile
[2.3.4-alpine-13]: https://github.com/pgroonga/docker/tree/2.3.4/alpine/13/Dockerfile
[2.3.4-alpine-12]: https://github.com/pgroonga/docker/tree/2.3.4/alpine/12/Dockerfile
[2.3.4-alpine-11]: https://github.com/pgroonga/docker/tree/2.3.4/alpine/11/Dockerfile
[2.3.4-alpine-10]: https://github.com/pgroonga/docker/tree/2.3.4/alpine/10/Dockerfile
[2.3.4-alpine-14-slim]: https://github.com/pgroonga/docker/tree/2.3.4/alpine/14-slim/Dockerfile
[2.3.4-alpine-13-slim]: https://github.com/pgroonga/docker/tree/2.3.4/alpine/13-slim/Dockerfile
[2.3.4-alpine-12-slim]: https://github.com/pgroonga/docker/tree/2.3.4/alpine/12-slim/Dockerfile
[2.3.4-alpine-11-slim]: https://github.com/pgroonga/docker/tree/2.3.4/alpine/11-slim/Dockerfile
[2.3.4-alpine-10-slim]: https://github.com/pgroonga/docker/tree/2.3.4/alpine/10-slim/Dockerfile
[2.3.4-debian-14]: https://github.com/pgroonga/docker/tree/2.3.4/debian/14/Dockerfile
[2.3.4-debian-13]: https://github.com/pgroonga/docker/tree/2.3.4/debian/13/Dockerfile
[2.3.4-debian-12]: https://github.com/pgroonga/docker/tree/2.3.4/debian/12/Dockerfile
[2.3.4-debian-11]: https://github.com/pgroonga/docker/tree/2.3.4/debian/11/Dockerfile
[2.3.3-alpine-14]: https://github.com/pgroonga/docker/tree/2.3.3/alpine/14/Dockerfile
[2.3.3-alpine-13]: https://github.com/pgroonga/docker/tree/2.3.3/alpine/13/Dockerfile
[2.3.3-alpine-12]: https://github.com/pgroonga/docker/tree/2.3.3/alpine/12/Dockerfile
[2.3.3-alpine-11]: https://github.com/pgroonga/docker/tree/2.3.3/alpine/11/Dockerfile
[2.3.3-alpine-10]: https://github.com/pgroonga/docker/tree/2.3.3/alpine/10/Dockerfile
[2.3.3-alpine-14-slim]: https://github.com/pgroonga/docker/tree/2.3.3/alpine/14-slim/Dockerfile
[2.3.3-alpine-13-slim]: https://github.com/pgroonga/docker/tree/2.3.3/alpine/13-slim/Dockerfile
[2.3.3-alpine-12-slim]: https://github.com/pgroonga/docker/tree/2.3.3/alpine/12-slim/Dockerfile
[2.3.3-alpine-11-slim]: https://github.com/pgroonga/docker/tree/2.3.3/alpine/11-slim/Dockerfile
[2.3.3-alpine-10-slim]: https://github.com/pgroonga/docker/tree/2.3.3/alpine/10-slim/Dockerfile
[2.3.3-debian-14]: https://github.com/pgroonga/docker/tree/2.3.3/debian/14/Dockerfile
[2.3.3-debian-13]: https://github.com/pgroonga/docker/tree/2.3.3/debian/13/Dockerfile
[2.3.3-debian-12]: https://github.com/pgroonga/docker/tree/2.3.3/debian/12/Dockerfile
[2.3.3-debian-11]: https://github.com/pgroonga/docker/tree/2.3.3/debian/11/Dockerfile
[2.3.2-alpine-14]: https://github.com/pgroonga/docker/tree/2.3.2/alpine/14/Dockerfile
[2.3.2-alpine-13]: https://github.com/pgroonga/docker/tree/2.3.2/alpine/13/Dockerfile
[2.3.2-alpine-12]: https://github.com/pgroonga/docker/tree/2.3.2/alpine/12/Dockerfile
[2.3.2-alpine-11]: https://github.com/pgroonga/docker/tree/2.3.2/alpine/11/Dockerfile
[2.3.2-alpine-10]: https://github.com/pgroonga/docker/tree/2.3.2/alpine/10/Dockerfile
[2.3.2-alpine-14-slim]: https://github.com/pgroonga/docker/tree/2.3.2/alpine/14-slim/Dockerfile
[2.3.2-alpine-13-slim]: https://github.com/pgroonga/docker/tree/2.3.2/alpine/13-slim/Dockerfile
[2.3.2-alpine-12-slim]: https://github.com/pgroonga/docker/tree/2.3.2/alpine/12-slim/Dockerfile
[2.3.2-alpine-11-slim]: https://github.com/pgroonga/docker/tree/2.3.2/alpine/11-slim/Dockerfile
[2.3.2-alpine-10-slim]: https://github.com/pgroonga/docker/tree/2.3.2/alpine/10-slim/Dockerfile
[2.3.2-debian-14]: https://github.com/pgroonga/docker/tree/2.3.2/debian/14/Dockerfile
[2.3.2-debian-13]: https://github.com/pgroonga/docker/tree/2.3.2/debian/13/Dockerfile
[2.3.2-debian-12]: https://github.com/pgroonga/docker/tree/2.3.2/debian/12/Dockerfile
[2.3.2-debian-11]: https://github.com/pgroonga/docker/tree/2.3.2/debian/11/Dockerfile
[2.3.1-alpine-13]: https://github.com/pgroonga/docker/tree/2.3.1/alpine/13/Dockerfile
[2.3.1-alpine-12]: https://github.com/pgroonga/docker/tree/2.3.1/alpine/12/Dockerfile
[2.3.1-alpine-11]: https://github.com/pgroonga/docker/tree/2.3.1/alpine/11/Dockerfile
[2.3.1-alpine-10]: https://github.com/pgroonga/docker/tree/2.3.1/alpine/10/Dockerfile
[2.3.1-alpine-13-slim]: https://github.com/pgroonga/docker/tree/2.3.1/alpine/13-slim/Dockerfile
[2.3.1-alpine-12-slim]: https://github.com/pgroonga/docker/tree/2.3.1/alpine/12-slim/Dockerfile
[2.3.1-alpine-11-slim]: https://github.com/pgroonga/docker/tree/2.3.1/alpine/11-slim/Dockerfile
[2.3.1-alpine-10-slim]: https://github.com/pgroonga/docker/tree/2.3.1/alpine/10-slim/Dockerfile
[2.3.1-debian-13]: https://github.com/pgroonga/docker/tree/2.3.1/debian/13/Dockerfile
[2.3.1-debian-12]: https://github.com/pgroonga/docker/tree/2.3.1/debian/12/Dockerfile
[2.3.1-debian-11]: https://github.com/pgroonga/docker/tree/2.3.1/debian/11/Dockerfile
[2.3.0-alpine-13]: https://github.com/pgroonga/docker/tree/2.3.0/alpine/13/Dockerfile
[2.3.0-alpine-12]: https://github.com/pgroonga/docker/tree/2.3.0/alpine/12/Dockerfile
[2.3.0-alpine-11]: https://github.com/pgroonga/docker/tree/2.3.0/alpine/11/Dockerfile
[2.3.0-alpine-10]: https://github.com/pgroonga/docker/tree/2.3.0/alpine/10/Dockerfile
[2.3.0-alpine-13-slim]: https://github.com/pgroonga/docker/tree/2.3.0/alpine/13-slim/Dockerfile
[2.3.0-alpine-12-slim]: https://github.com/pgroonga/docker/tree/2.3.0/alpine/12-slim/Dockerfile
[2.3.0-alpine-11-slim]: https://github.com/pgroonga/docker/tree/2.3.0/alpine/11-slim/Dockerfile
[2.3.0-alpine-10-slim]: https://github.com/pgroonga/docker/tree/2.3.0/alpine/10-slim/Dockerfile
[2.3.0-debian-13]: https://github.com/pgroonga/docker/tree/2.3.0/debian/13/Dockerfile
[2.3.0-debian-12]: https://github.com/pgroonga/docker/tree/2.3.0/debian/12/Dockerfile
[2.3.0-debian-11]: https://github.com/pgroonga/docker/tree/2.3.0/debian/11/Dockerfile
[2.2.9-alpine-13]: https://github.com/pgroonga/docker/tree/2.2.9/alpine/13/Dockerfile
[2.2.9-alpine-12]: https://github.com/pgroonga/docker/tree/2.2.9/alpine/12/Dockerfile
[2.2.9-alpine-11]: https://github.com/pgroonga/docker/tree/2.2.9/alpine/11/Dockerfile
[2.2.9-alpine-10]: https://github.com/pgroonga/docker/tree/2.2.9/alpine/10/Dockerfile
[2.2.9-alpine-13-slim]: https://github.com/pgroonga/docker/tree/2.2.9-alpine-13-slim/alpine/13-slim/Dockerfile
[2.2.9-alpine-12-slim]: https://github.com/pgroonga/docker/tree/2.2.9-alpine-12-slim/alpine/12-slim/Dockerfile
[2.2.9-alpine-11-slim]: https://github.com/pgroonga/docker/tree/2.2.9-alpine-11-slim/alpine/11-slim/Dockerfile
[2.2.9-alpine-10-slim]: https://github.com/pgroonga/docker/tree/2.2.9-alpine-10-slim/alpine/10-slim/Dockerfile
[2.2.9-debian-13]: https://github.com/pgroonga/docker/tree/2.2.9-debian-13/debian/13/Dockerfile
[2.2.9-debian-12]: https://github.com/pgroonga/docker/tree/2.2.9-debian-12/debian/12/Dockerfile
[2.2.9-debian-11]: https://github.com/pgroonga/docker/tree/2.2.9-debian-11/debian/11/Dockerfile
[2.2.7-alpine-13]: https://github.com/pgroonga/docker/tree/2.2.7-alpine-13/alpine/13/Dockerfile
[2.2.7-alpine-12]: https://github.com/pgroonga/docker/tree/2.2.7-alpine-12/alpine/12/Dockerfile
[2.2.7-alpine-11]: https://github.com/pgroonga/docker/tree/2.2.7-alpine-11/alpine/11/Dockerfile
[2.2.7-alpine-10]: https://github.com/pgroonga/docker/tree/2.2.7-alpine-10/alpine/10/Dockerfile
[2.2.7-alpine-13-slim]: https://github.com/pgroonga/docker/tree/2.2.7-alpine-13-slim/alpine/13-slim/Dockerfile
[2.2.7-alpine-12-slim]: https://github.com/pgroonga/docker/tree/2.2.7-alpine-12-slim/alpine/12-slim/Dockerfile
[2.2.7-alpine-11-slim]: https://github.com/pgroonga/docker/tree/2.2.7-alpine-11-slim/alpine/11-slim/Dockerfile
[2.2.7-alpine-10-slim]: https://github.com/pgroonga/docker/tree/2.2.7-alpine-10-slim/alpine/10-slim/Dockerfile
[2.2.7-debian-13]: https://github.com/pgroonga/docker/tree/2.2.7-debian-13/debian/13/Dockerfile
[2.2.7-debian-12]: https://github.com/pgroonga/docker/tree/2.2.7-debian-12/debian/12/Dockerfile
[2.2.7-debian-11]: https://github.com/pgroonga/docker/tree/2.2.7-debian-11/debian/11/Dockerfile
[2.2.7-debian-9.6]: https://github.com/pgroonga/docker/tree/2.2.7-debian-9.6/debian/9.6/Dockerfile
[2.2.6-alpine-12]: https://github.com/pgroonga/docker/tree/2.2.6-alpine-12/alpine/12/Dockerfile
[2.2.6-alpine-11]: https://github.com/pgroonga/docker/tree/2.2.6-alpine-11/alpine/11/Dockerfile
[2.2.6-alpine-10]: https://github.com/pgroonga/docker/tree/2.2.6-alpine-10/alpine/10/Dockerfile
[2.2.6-alpine-12-slim]: https://github.com/pgroonga/docker/tree/2.2.6-alpine-12-slim/alpine/12-slim/Dockerfile
[2.2.6-alpine-11-slim]: https://github.com/pgroonga/docker/tree/2.2.6-alpine-11-slim/alpine/11-slim/Dockerfile
[2.2.6-alpine-10-slim]: https://github.com/pgroonga/docker/tree/2.2.6-alpine-10-slim/alpine/10-slim/Dockerfile
[2.2.6-debian-12]: https://github.com/pgroonga/docker/tree/2.2.6-debian-12/debian/12/Dockerfile
[2.2.6-debian-11]: https://github.com/pgroonga/docker/tree/2.2.6-debian-11/debian/11/Dockerfile
[2.2.6-debian-9.6]: https://github.com/pgroonga/docker/tree/2.2.6-debian-9.6/debian/9.6/Dockerfile
[2.2.5-alpine-12]: https://github.com/pgroonga/docker/tree/2.2.5-alpine-12/alpine/12/Dockerfile
[2.2.5-alpine-11]: https://github.com/pgroonga/docker/tree/2.2.5-alpine-11/alpine/11/Dockerfile
[2.2.5-alpine-10]: https://github.com/pgroonga/docker/tree/2.2.5-alpine-10/alpine/10/Dockerfile
[2.2.5-alpine-12-slim]: https://github.com/pgroonga/docker/tree/2.2.5-alpine-12-slim/alpine/12-slim/Dockerfile
[2.2.5-alpine-11-slim]: https://github.com/pgroonga/docker/tree/2.2.5-alpine-11-slim/alpine/11-slim/Dockerfile
[2.2.5-alpine-10-slim]: https://github.com/pgroonga/docker/tree/2.2.5-alpine-10-slim/alpine/10-slim/Dockerfile
[2.2.5-debian-11]: https://github.com/pgroonga/docker/tree/2.2.5-debian-11/debian/11/Dockerfile
[2.2.5-debian-9.6]: https://github.com/pgroonga/docker/tree/2.2.5-debian-9.6/debian/9.6/Dockerfile
[2.2.2-alpine-12]: https://github.com/pgroonga/docker/tree/2.2.2-alpine-12/alpine/12/Dockerfile
[2.2.2-alpine-11]: https://github.com/pgroonga/docker/tree/2.2.2-alpine-11/alpine/11/Dockerfile
[2.2.2-alpine-10]: https://github.com/pgroonga/docker/tree/2.2.2-alpine-10/alpine/10/Dockerfile
[2.2.2-alpine-12-slim]: https://github.com/pgroonga/docker/tree/2.2.2-alpine-12-slim/alpine/12-slim/Dockerfile
[2.2.2-alpine-11-slim]: https://github.com/pgroonga/docker/tree/2.2.2-alpine-11-slim/alpine/11-slim/Dockerfile
[2.2.2-alpine-10-slim]: https://github.com/pgroonga/docker/tree/2.2.2-alpine-10-slim/alpine/10-slim/Dockerfile
[2.2.2-debian-11]: https://github.com/pgroonga/docker/tree/2.2.2-debian-11/debian/11/Dockerfile
[2.2.2-debian-9.6]: https://github.com/pgroonga/docker/tree/2.2.2-debian-9.6/debian/9.6/Dockerfile
[2.2.1-alpine-11]: https://github.com/pgroonga/docker/tree/2.2.1-alpine-11/alpine/11/Dockerfile
[2.2.1-alpine-10]: https://github.com/pgroonga/docker/tree/2.2.1-alpine-10/alpine/10/Dockerfile
[2.2.1-alpine-11-slim]: https://github.com/pgroonga/docker/tree/2.2.1-alpine-11-slim/alpine/11-slim/Dockerfile
[2.2.1-alpine-10-slim]: https://github.com/pgroonga/docker/tree/2.2.1-alpine-10-slim/alpine/10-slim/Dockerfile
[2.2.1-debian-11]: https://github.com/pgroonga/docker/tree/2.2.1-debian-11/debian/11/Dockerfile
[2.2.1-debian-9.6]: https://github.com/pgroonga/docker/tree/2.2.1-debian-9.6/debian/9.6/Dockerfile
[2.2.0-alpine-11]: https://github.com/pgroonga/docker/tree/2.2.0-alpine-11/alpine/11/Dockerfile
[2.2.0-alpine-10]: https://github.com/pgroonga/docker/tree/2.2.0-alpine-10/alpine/10/Dockerfile
[2.2.0-alpine-slim-11]: https://github.com/pgroonga/docker/tree/2.2.0-alpine-slim-11/alpine/slim-11/Dockerfile
[2.2.0-alpine-slim-10]: https://github.com/pgroonga/docker/tree/2.2.0-alpine-slim-10/alpine/slim-10/Dockerfile
[2.2.0-debian-9.6]: https://github.com/pgroonga/docker/tree/2.2.0-debian-9.6/debian/9.6/Dockerfile
[2.1.9-alpine-11]: https://github.com/pgroonga/docker/tree/85d8a529eab16afb2af350d7f34c5ef7f1a761cc/2.1.9/alpine/11/Dockerfile
[2.1.9-alpine-10]: https://github.com/pgroonga/docker/tree/85d8a529eab16afb2af350d7f34c5ef7f1a761cc/2.1.9/alpine/10/Dockerfile
[2.1.9-debian-9.6]: https://github.com/pgroonga/docker/tree/85d8a529eab16afb2af350d7f34c5ef7f1a761cc/2.1.9/debian/9.6/Dockerfile
[2.1.8-alpine-11.1]: https://github.com/pgroonga/docker/tree/85d8a529eab16afb2af350d7f34c5ef7f1a761cc/2.1.8/alpine/11.1/Dockerfile
[2.1.8-alpine-10.6]: https://github.com/pgroonga/docker/tree/85d8a529eab16afb2af350d7f34c5ef7f1a761cc/2.1.8/alpine/10.6/Dockerfile
[2.1.8-debian-9.6]: https://github.com/pgroonga/docker/tree/85d8a529eab16afb2af350d7f34c5ef7f1a761cc/2.1.8/debian/9.6/Dockerfile
