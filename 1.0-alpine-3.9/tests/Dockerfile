FROM snakepit:1.0-alpine-3.9

ADD . /tests
WORKDIR /tests

RUN pip install tox
RUN tox


