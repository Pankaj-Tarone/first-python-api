FROM python:3.7-alpine
MAINTAINER Pankaj Tarone Home project

ENV PYTHONUNBUFFERED 1
# it tells the python running in unbuffered mode when runs in docker . It won't allow python to buffer the output
# and gives directly

COPY ./requirements.txt /requirements.txt
RUN pip install -r /requirements.txt

RUN mkdir /app
WORKDIR /app

COPY ./app /app

RUN adduser -D user
