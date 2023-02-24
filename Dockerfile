FROM ubuntu:22.04

RUN apt-get update

RUN apt-get install -y dnsutils

RUN nslookup api.nuget.org

RUN echo "nameserver 8.8.8.8" > /etc/resolv.conf

RUN nslookup api.nuget.org

RUN cat /etc/resolv.conf
