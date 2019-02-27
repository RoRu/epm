FROM debian:stretch-slim

WORKDIR /root/epm
RUN apt-get update && apt-get install -y \
    build-essential \
    git \
    rpm \
    && apt-get autoclean
ADD . .
RUN ./configure \
    && make \
    && make install
