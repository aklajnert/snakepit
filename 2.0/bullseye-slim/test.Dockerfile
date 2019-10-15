FROM snakepit:2.0-bullseye-slim

ADD ./tests /tests
WORKDIR /tests

RUN pip install tox
RUN tox


