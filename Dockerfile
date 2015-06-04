FROM ubuntu:14.04
MAINTAINER Nathan Johnson <nathan@webflow.com>
ENV REFRESHED_AT 2015-06-04

ENV DEBIAN_FRONTEND noninteractive
RUN echo "deb-src http://archive.ubuntu.com/ubuntu trusty main" >> /etc/apt/sources.list
RUN sed 's/main$/main universe/' -i /etc/apt/sources.list

RUN apt-get update \
    && apt-get upgrade -y \
    && apt-get -y install build-essential curl git libncurses5-dev libpcre3-dev libpq-dev libreadline-dev libssl-dev python vim wget zip

RUN curl -sL https://deb.nodesource.com/setup | sudo bash - \
    && apt-get -y install nodejs

