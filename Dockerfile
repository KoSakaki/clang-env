FROM ubuntu:latest

WORKDIR /root/clang

RUN apt update && apt upgrade -y

RUN apt install build-essential -y

COPY . .
