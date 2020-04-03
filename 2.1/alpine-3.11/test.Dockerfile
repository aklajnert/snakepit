FROM snakepit:2.1-alpine-3.10

ADD ./tests /tests
WORKDIR /tests

RUN pip install tox
RUN tox


