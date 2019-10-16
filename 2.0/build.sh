#!/usr/bin/env bash

VERSION=2.0
ALPINE=alpine-3.10
DEBIAN=bullseye-slim

cd $VERSION

cd $ALPINE
docker build -t snakepit:$VERSION-$ALPINE .
docker tag snakepit:$VERSION-$ALPINE aklajnert/snakepit:$VERSION-$ALPINE

cd ..
docker build . -f $ALPINE/test.Dockerfile

cd $DEBIAN
docker build -t snakepit:$VERSION-$DEBIAN .
docker tag snakepit:$VERSION-$DEBIAN aklajnert/snakepit:$VERSION-$DEBIAN

cd ..
docker build . -f $DEBIAN/test.Dockerfile
