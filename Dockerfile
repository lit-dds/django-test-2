
FROM python:3.8-alpine

ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONBUFFERED 1

COPY ./requirements.txt /requirements.txt
RUN pip install -r /requirements.txt

RUN mkdir /app
WORKDIR /app
COPY . /app

# Create a user name user with privlege to only run applications only with no root access
RUN adduser -D user
USER user