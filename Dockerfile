FROM python:3.7-alpine
MAINTAINER zt

ENV PYTHONUNBUFFERED 1

# left side is local machine -- right side is docker environment: below copies commands from req file to the docker image!
COPY ./requirements.txt /requirements.txt

RUN pip install -r /requirements.txt
RUN mkdir /app
WORKDIR /app
COPY ./app /app

# this user will just be for running app, not actual user.
# this also prevents access via root account
RUN adduser -D user
USER user
