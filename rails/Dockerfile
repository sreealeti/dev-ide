FROM sree/dev-ide:latest

MAINTAINER Sree <sree@aletilabs.com>

ENV RAILS_PACKAGES ruby-libs mysql-dev sqlite-dev nodejs ruby-io-console libffi-dev  \
    tzdata ruby-json ruby-bigdecimal ruby-irb


RUN sudo apk add --update $RAILS_PACKAGES                 && \
    sudo gem install -N bundler rails

#start container with bash
ENTRYPOINT ["bash"]
