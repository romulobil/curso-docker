FROM debian:8

MAINTAINER romulo

COPY sources.list /etc/apt/sources.list 

RUN apt-get update

RUN apt-get install nginx -y

ENTRYPOINT ["nginx", "-g", "daemon off;"]
