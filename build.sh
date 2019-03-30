#!/usr/bin/env bash
set -ex

cd 1.0/alpine-3.9
docker build -t snakepit:1.0-alpine-3.9 .

cd ..
docker build . -f alpine-3.9/test.Dockerfile
