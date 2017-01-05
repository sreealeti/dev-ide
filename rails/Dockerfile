FROM sree/dev-ide:latest

MAINTAINER Sree <sree@aletilabs.com>

ENV RAILS_PACKAGES ruby-libs mysql-dev mysql-client sqlite-dev nodejs ruby-io-console libffi-dev  \
    tzdata ruby-json ruby-bigdecimal ruby-irb libxml2-dev


RUN sudo apk add --update $RAILS_PACKAGES                 && \
    sudo gem install -N bundler rails

#start container with bash
ENTRYPOINT ["bash"]
