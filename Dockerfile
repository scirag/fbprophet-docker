FROM python:3.5.6-alpine3.8

LABEL maintainer="safakcirag@gmail.com"

COPY . .

RUN apk update && apk add --no-cache --virtual alpine-sdk gcc python3-dev freet$

RUN pip --no-cache-dir install numpy

RUN pip --no-cache-dir install Cython

RUN pip --no-cache-dir install pystan

RUN pip --no-cache-dir install fbprophet

RUN apk del alpine-sdk gcc python3-dev freetype-dev libpng-dev musl-dev

