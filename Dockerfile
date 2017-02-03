FROM ruby:2.3

ENV APP_ROOT=/app
WORKDIR $APP_ROOT

RUN     apt-get update && apt-get install -y \
        python-pip \
        python-dev \
        build-essential \
        && pip install --upgrade pip \
        && pip install awscli    

COPY . $APP_ROOT

RUN bundle install 
