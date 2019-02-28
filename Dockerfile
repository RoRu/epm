FROM debian:stretch-slim

WORKDIR /root/epm
RUN apt-get update && apt-get install -y \
    gcc \
    make \
    rpm \
    && apt-get autoclean

