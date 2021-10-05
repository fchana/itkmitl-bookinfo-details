FROM ruby:2.7-slim

# throw errors if Gemfile has been modified since Gemfile.lock
RUN bundle config --global frozen 1

WORKDIR  /home/src/app/

COPY src/ /home/src/app/
RUN bundle install

EXPOSE 9080

CMD ["ruby","/home/src/app/details.rb","9080"]