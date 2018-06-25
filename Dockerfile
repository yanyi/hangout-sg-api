FROM ruby:2.4.4
RUN apt-get update -qq && \
    apt-get install -y build-essential sqlite3 libsqlite3-dev

RUN mkdir hangout-app
WORKDIR hangout-app

COPY Gemfile /hangout-app/Gemfile
COPY Gemfile.lock /hangout-app/Gemfile.lock
RUN bundle install

COPY . /hangout-app