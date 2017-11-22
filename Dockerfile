# Dockerfile
FROM ruby:2.3-slim
RUN apt-get update -qq && \
    apt-get upgrade -y
RUN apt-get install -y \ 
    build-essential \ 
    libpq-dev nodejs \
    libsqlite3-dev
RUN mkdir /hackfest-app
WORKDIR /hackfest-app
COPY Gemfile /hackfest-app/Gemfile
COPY Gemfile.lock /hackfest-app/Gemfile.lock
RUN bundle install
COPY . /hackfest-app/
EXPOSE 3000:3000
ENTRYPOINT ["bundle", "exec", "rails s"] 
# -p 3000 -b '0.0.0.0'"]