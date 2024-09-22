# Dockerfile for Attacker
FROM ubuntu:latest

RUN apt-get update && apt-get install -y iputils-ping hping3 python3 curl
COPY ./attacks /attacks
WORKDIR /attacks

CMD ["bash"]
