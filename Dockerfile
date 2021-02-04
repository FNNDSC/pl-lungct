FROM python:3.9.1-slim-buster
LABEL MAINTAINER="dev@babymri.org"

WORKDIR /usr/local/src

COPY requirements.txt .
RUN ["pip", "install", "-r", "requirements.txt"]

COPY . .
RUN ["pip", "install", "."]

CMD ["lungct", "--help"]
