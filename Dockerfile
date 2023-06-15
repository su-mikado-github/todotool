FROM ruby:2.5
RUN apt-get update && apt-get install -y \
    build-essential \
    libpq-dev \
    nodejs \
    default-mysql-client \
    yarn
WORKDIR /develop
COPY Gemfile Gemfile.lock /develop/
RUN bundle install
