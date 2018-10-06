FROM ruby:2.3.1
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs
RUN mkdir /research
WORKDIR /research
COPY . /research
COPY Gemfile /research/Gemfile
COPY Gemfile.lock /research/Gemfile.lock
RUN   bundle install
COPY . /research
CMD ["rails", "s"]