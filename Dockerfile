FROM ruby:2.3.4

WORKDIR /usr/src/app

RUN gem install bundler -v 1.16.1

COPY Gemfile ./

RUN bundle install

COPY . .

CMD ["/bin/bash"]