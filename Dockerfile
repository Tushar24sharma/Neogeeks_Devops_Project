FROM ubuntu
# this image will be pulled from docker hub if not present
MAINTAINER  tushar24.1sh@gmail.com
# optional field but good to write 
RUN  apt update -y
RUN  apt install python3 -y
RUN  apt-get install python3.8-tk -y
# RUN instruction is for getting shell during image build time
RUN mkdir /turtle_code
# creating a directory to put  my code inside docker image 
COPY while.py  /turtle_code/while.py
# to copy data from client location to docker image 
# make sure your code location is same as Dockerfile location
WORKDIR  /turtle_code
# changing location of docker image like cd command in linux
CMD  ["python3","while.py"]
# to set default process for container 
~                                         
