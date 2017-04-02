FROM daocloud.io/python:3.6
MAINTAINER shippo 'shipporun@gmail.com'
RUN apt-get update -y
RUN apt-get install -y python-pip python-dev build-essential
COPY . /app
WORKDIR /app
RUN pip install -r requirements.txt
EXPORT 80
CMD [ "python", "./app.py" ]