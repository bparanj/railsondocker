FROM ruby:2.7

LABEL maintainer="Brianna"

RUN curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add -
RUN echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list

RUN apt-get update -yqq && apt-get install -yqq \
	nodejs \
	npm \
	yarn

RUN node -v

COPY Gemfile* /usr/src/app/
WORKDIR /usr/src/app

RUN gem install bundler:'~> 2.1.4'
RUN gem install rails
RUN bundle install
RUN yarn install

RUN echo $PWD
COPY . /usr/src/app

RUN rails webpacker:install
COPY . /usr/src/app

RUN whoami

CMD ["bin/rails", "s", "-b", "0.0.0.0"]

