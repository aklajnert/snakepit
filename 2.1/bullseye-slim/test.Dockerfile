FROM snakepit:2.1-bullseye-slim

ADD ./tests /tests
WORKDIR /tests

RUN pip install tox
RUN tox


