FROM ubuntu:20.04
MAINTAINER Rakhat Zhussupekov
RUN apt-get update -y
COPY . /opt/gsom_predictor
WORKDIR /opt/gsom_predictor
RUN apt-get update && apt-get install -y python3-pip
RUN pip3 install -r requirements.txt
CMD python3 app.py 