FROM python:3.9.1-buster
LABEL MAINTAINER="dev@babymri.org"

WORKDIR /usr/local/src

COPY requirements.txt .
RUN ["pip", "install", "-r", "requirements.txt"]

COPY . .
RUN ["pip", "install", "."]

WORKDIR /usr/local/bin

WORKDIR /usr/local/bin
CMD ["lungct", "--help"]
