#!/usr/bin/env bash
set -ex

cd 1.0-alpine-3.9
docker build -t snakepit:1.0-alpine-3.9 .

cd tests
docker build .
