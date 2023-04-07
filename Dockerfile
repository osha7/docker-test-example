FROM ruby:3.2.0
WORKDIR /usr/src/app
COPY Gemfile* .
RUN bundle install
COPY . . 
CMD ["bin/rails", "s", "-b", "0.0.0.0"]