# Dockerfile
FROM ruby:2.3-slim
RUN apt-get update -qq && \
    apt-get upgrade -y
RUN apt-get install -y \ 
    build-essential \ 
    libpq-dev nodejs \
    libsqlite3-dev
ENV INSTALL_PATH=/hackfest-app
RUN mkdir /hackfest-app
WORKDIR /hackfest-app
#COPY Gemfile.lock ${INSTALL_PATH}/Gemfile.lock
COPY . .
RUN bundle install
CMD ['ls']
VOLUME ["$INSTALL_PATH/public"]
EXPOSE 3000:3000
ENTRYPOINT ["bundle", "exec", "unicorn -c ./config/unicorn.rb"] 
# -p 3000 -b '0.0.0.0'"]