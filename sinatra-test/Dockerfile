FROM ruby:2.1.5

WORKDIR /app
ADD Gemfile /app/
ADD Gemfile.lock /app/
RUN bundle install --system

ADD . /app

EXPOSE 4567
CMD ["foreman","start","-d","/app"]
