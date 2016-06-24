FROM ruby:2.3

ENV APP_ROOT=/app

WORKDIR $APP_ROOT
COPY . $APP_ROOT

RUN apt-get update && apt-get install -y \
        python-pip \
        python-dev \
        build-essential \
        && pip install --upgrade pip \
        && pip install awscli \
        && bundle install \
        && bundle exec middleman build

CMD ["aws", "s3", "cp", "build/", "s3://developer.locusenergy.com", "--recursive"]