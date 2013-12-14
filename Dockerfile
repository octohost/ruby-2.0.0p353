FROM stackbrew/ubuntu:saucy

RUN apt-get install -y git curl build-essential make libxslt-dev libxml2-dev libmysqlclient-dev libpq-dev libsqlite3-ruby1.9.1 libsqlite3-dev --force-yes
RUN apt-get install -y software-properties-common --force-yes
RUN add-apt-repository -y ppa:brightbox/ruby-ng-experimental
RUN apt-get update
RUN apt-get install -y ruby2.0 ruby2.0-dev --force-yes
RUN gem install foreman nokogiri bundler --no-ri --no-rdoc

RUN apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
