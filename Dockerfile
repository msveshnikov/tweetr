FROM ruby:2.0.0
WORKDIR /myapp

RUN apt-get update && apt-get install -y nodejs 

COPY Gemfile /myapp/Gemfile
COPY Gemfile.lock /myapp/Gemfile.lock
RUN bundle install --without development test

# Bundle app source
COPY . /myapp

EXPOSE 3000

CMD ["rails", "server", "-b", "0.0.0.0"]