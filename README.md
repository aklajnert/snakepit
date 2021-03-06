# snakepit

Docker image with multiple python interpreter versions.

It bases on the official python image, with very minor changes.


```bash
docker pull aklajnert/snakepit:2.1-alpine-3.11
docker pull aklajnert/snakepit:2.1-bullseye-slim
docker pull aklajnert/snakepit:2.0-alpine-3.10
docker pull aklajnert/snakepit:2.0-bullseye-slim
docker pull aklajnert/snakepit:1.0-alpine-3.9
docker pull aklajnert/snakepit:1.0-stretch-slim
```

```bash
$ docker run -it --rm snakepit

/ # python --version
Python 2.7.17
/ # python2 --version
Python 2.7.17
/ # python3 --version
Python 3.8.2
/ # python3.5 --version
Python 3.5.9
/ # python3.6 --version
Python 3.6.9
/ # python3.7 --version
Python 3.7.7
/ # python3.8 --version
Python 3.8.2
```


## 2.1

Available versions:
- 2.1-alpine-3.11: based on alpine:3.11
- 2.1-bullseye-slim: based on debian:bullseye-slim

Available interpreters:
- 2.7.17
- 3.5.9
- 3.6.9
- 3.7.7
- 3.8.2

## 2.0

Available versions:
- 2.0-alpine-3.10: based on alpine:3.10
- 2.0-bullseye-slim: based on debian:bullseye-slim

Available interpreters:
- 2.7.16
- 3.5.7
- 3.6.9
- 3.7.5
- 3.8.0

## 1.0

Available versions:
- 1.0-alpine-3.9: based on alpine:3.9
- 1.0-stretch-slim: based on debian:stretch-slim

Available interpreters:
- 2.7.16
- 3.5.7
- 3.6.8
- 3.7.3
