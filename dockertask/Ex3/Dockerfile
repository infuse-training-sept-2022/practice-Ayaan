FROM ruby

WORKDIR /src/
COPY ex3.rb .
COPY test.rb .
RUN gem instal test-unit
RUN gem instal relative
CMD ruby test.rb