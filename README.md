# snakepit

Docker image with multiple python interpreter versions.

Available interpreters:
- 2.7.16
- 3.5.7
- 3.6.8
- 3.7.3

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
