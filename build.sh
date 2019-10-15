#!/usr/bin/env bash
set -ex

cd 1.0

cd alpine-3.9
docker build -t snakepit:1.0-alpine-3.9 .
docker tag snakepit:1.0-alpine-3.9 aklajnert/1.0-alpine-3.9


cd ..
docker build . -f alpine-3.9/test.Dockerfile

cd stretch-slim
docker build -t snakepit:1.0-stretch-slim .
docker tag snakepit:1.0-stretch-slim aklajnert/snakepit:1.0-stretch-slim

cd ..
docker build . -f stretch-slim/test.Dockerfile

cd ..



cd 2.0

cd alpine-3.10
docker build -t snakepit:2.0-alpine-3.10 .
docker tag snakepit:2.0-alpine-3.10 aklajnert/2.0-alpine-3.10


cd ..
docker build . -f alpine-3.10/test.Dockerfile

cd stretch-slim
docker build -t snakepit:2.0-bullseye-slim .
docker tag snakepit:2.0-bullseye-slim aklajnert/snakepit:2.0-bullseye-slim

cd ..
docker build . -f bullseye-slim/test.Dockerfile
