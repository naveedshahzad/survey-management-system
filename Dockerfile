FROM ruby:2.5.1
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs
RUN mkdir /surveys-management-system
WORKDIR /surveys-management-system
COPY Gemfile /surveys-management-system/Gemfile
COPY Gemfile.lock /surveys-management-system/Gemfile.lock
#RUN gem install --default bundler && gem list | grep bundler && which bundle && bundle install
COPY . /surveys-management-system
CMD bundle exec rake db:create RAILS_ENV=development
CMD bundle exec rake db:migrate RAILS_ENV=development
CMD bundle exec rails s -p 3000 -b '0.0.0.0' -e development
