FROM ruby:2.3

MAINTAINER Ahmedul Haque Abid <a_h_abid@hotmail.com>

RUN mkdir -p /src
WORKDIR /src
COPY Gemfile /src
COPY Gemfile.lock /src
RUN bundle install

COPY . /src
