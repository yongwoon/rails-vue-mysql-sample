
FROM ruby:2.6.5

ENV LANG C.UTF-8
ENV APP_ROOT /app

RUN apt-get update -qq && \
  apt-get install -y build-essential libpq-dev nodejs \
  && mkdir $APP_ROOT

RUN curl -sL https://deb.nodesource.com/setup_12.x | bash - &&\
  curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add - &&\
  echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list &&\
  apt-get update && apt-get install -y nodejs yarn --no-install-recommends && rm -rf /var/lib/apt/lists/*

WORKDIR $APP_ROOT

ADD ./Gemfile $APP_ROOT/Gemfile
ADD ./Gemfile.lock $APP_ROOT/Gemfile.lock

RUN bundle install
