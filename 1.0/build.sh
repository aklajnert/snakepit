#!/usr/bin/env bash

VERSION=1.0
ALPINE=alpine-3.9
DEBIAN=stretch-slim

cd $VERSION

cd $ALPINE
docker build -t snakepit:$VERSION-$ALPINE .
docker tag snakepit:$VERSION-$ALPINE aklajnert/snakepit:$VERSION-$ALPINE
docker tag snakepit:$VERSION-$ALPINE aklajnert/snakepit:latest

cd ..
docker build . -f $ALPINE/test.Dockerfile

cd $DEBIAN
docker build -t snakepit:$VERSION-$DEBIAN .
docker tag snakepit:$VERSION-$DEBIAN aklajnert/snakepit:$VERSION-$DEBIAN

cd ..
docker build . -f $DEBIAN/test.Dockerfile
