FROM snakepit:1.0-stretch-slim

ADD ./tests /tests
WORKDIR /tests

RUN pip install tox
RUN tox


