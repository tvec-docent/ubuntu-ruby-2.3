FROM ubuntu:14.04
MAINTAINER Xiaoqi Cao <thomascxq@gmail.com>

#Install Ruby 2.3

RUN apt-get update && apt-get -y install software-properties-common
RUN add-apt-repository -y ppa:brightbox/ruby-ng
RUN apt-get update && apt-get -y install ruby2.3

RUN echo 'gem: --no-document' > /usr/local/etc/gemrc
RUN gem update
RUN gem install bundler
