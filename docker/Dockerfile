FROM ruby



WORKDIR /src/
COPY main.rb .



RUN gem install selenium-webdriver
RUN gem install webdrivers



RUN wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | apt-key add -
RUN echo 'deb http://dl.google.com/linux/chrome/deb/ stable main' >> /etc/apt/sources.list.d/google.list



RUN apt-get update -y --fix-missing
RUN apt-get install -y google-chrome-stable



CMD ruby main.rb