# snakepit

Docker image with multiple python interpreter versions.

It bases on the official python image, with very minor changes.

## 1.1

Available versions:
- 1.1-alpine-3.10: based on alpine:3.10
- 1.1-bullseye-slim: based on debian:bullseye-slim

Available interpreters:
- 2.7.16
- 3.5.7
- 3.6.8
- 3.7.3

## 1.0

Available versions:
- 1.0-alpine-3.9: based on alpine:3.9
- 1.0-stretch-slim: based on debian:stretch-slim

Available interpreters:
- 2.7.16
- 3.5.7
- 3.6.8
- 3.7.3

```bash
docker pull aklajnert/snakepit:1.1-alpine-3.10
docker pull aklajnert/snakepit:1.1-bullseye-slim
docker pull aklajnert/snakepit:1.0-alpine-3.9
docker pull aklajnert/snakepit:1.0-stretch-slim
```

```bash
$ docker run -it --rm snakepit

/ # python --version
Python 2.7.16
/ # python2 --version
Python 2.7.16
/ # python3 --version
Python 3.7.3
/ # python3.5 --version
Python 3.5.7
/ # python3.6 --version
Python 3.6.8
/ # python3.7 --version
Python 3.7.3
```

