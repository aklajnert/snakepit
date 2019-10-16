cd 2.0

cd alpine-3.10
docker build -t snakepit:2.0-alpine-3.10 .
docker tag snakepit:2.0-alpine-3.10 aklajnert/snakepit:2.0-alpine-3.10


cd ..
docker build . -f alpine-3.10/test.Dockerfile

cd bullseye-slim
docker build -t snakepit:2.0-bullseye-slim .
docker tag snakepit:2.0-bullseye-slim aklajnert/snakepit:2.0-bullseye-slim

cd ..
docker build . -f bullseye-slim/test.Dockerfile
