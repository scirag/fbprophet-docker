FROM python:3.5.6-alpine3.8

LABEL maintainer="safakcirag@gmail.com"

RUN apk update && apk add alpine-sdk gcc python3-dev freetype-dev libpng-dev musl-dev

RUN pip install numpy

RUN pip install Cython

RUN pip install pystan

RUN pip install fbprophet

RUN apk del alpine-sdk gcc python3-dev freetype-dev libpng-dev musl-dev
