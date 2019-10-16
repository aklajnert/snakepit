FROM snakepit:2.0-alpine-3.10

ADD ./tests /tests
WORKDIR /tests

RUN pip install tox
RUN tox


