FROM daocloud.io/python:3.6
MAINTAINER shippo 'shipporun@gmail.com'
RUN apt-get update -y
RUN apt-get install -y python3-pip
COPY . /app
WORKDIR /app
RUN pip install -r requirements.txt
EXPOSE 80
CMD [ "python", "app.py" ]
