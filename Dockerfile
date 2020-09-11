FROM ruby:2.6.6
WORKDIR /app
COPY Gemfile Gemfile.lock /app/
RUN gem install bundler
RUN bundle install
COPY . /app/
CMD puma -C config.rb
