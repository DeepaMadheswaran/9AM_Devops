FROM ubuntu:latest
RUN apt-get update
RUN apt-get -y install git
RUN git clone https://github.com/exact-space/flask-assignment.git 

