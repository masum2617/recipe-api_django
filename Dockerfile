FROM python:3.7-alpine
LABEL app="hasan app"

ENV PYTHONUNBUFFERED 1
COPY ./requirements.txt /requirements.txt
RUN pipenv install -r /requirements.txt

RUN mkdir /app
WORKDIR /app
COPY ./app /app 

RUN adduser -D user
USER user