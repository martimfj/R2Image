FROM ubuntu:18.04
MAINTAINER Martim Ferreira José <martimfj@al.insper.edu.br>

RUN apt-get update \
    && apt-get install -y python-pip \
    && apt-get install -y git

WORKDIR /reserveroom

RUN git clone https://github.com/martimfj/R2App.git .
RUN pip install -r requirements.txt

CMD python application.py

EXPOSE 5000
