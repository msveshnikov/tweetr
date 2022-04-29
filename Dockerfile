FROM ruby:1.9.3
WORKDIR /myapp

# Bundle app source
COPY . .

#COPY Gemfile /myapp/Gemfile
#COPY Gemfile.lock /myapp/Gemfile.lock
RUN bundle install

EXPOSE 3000

CMD ["rails", "server", "-b", "0.0.0.0"]