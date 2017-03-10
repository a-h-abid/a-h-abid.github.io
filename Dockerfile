FROM jekyll/jekyll:latest

MAINTAINER Ahmedul Haque Abid <a_h_abid@hotmail.com>

USER jekyll

RUN sudo gem install json -v '1.8.1'
COPY Gemfile /srv/jekyll
COPY Gemfile.lock /srv/jekyll
RUN bundle install

COPY . /srv/jekyll
RUN chown -R jekyll:jekyll /srv/jekyll
RUN jekyll build

RUN apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
