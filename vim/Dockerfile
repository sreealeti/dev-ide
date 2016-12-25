FROM alpine:latest

MAINTAINER Sree <sree@aletilabs.com>

#set env variables
ENV BUILD_PACKAGES build-deps build-base make libxpm-dev libx11-dev libxt-dev ncurses-dev git
ENV PYTHON_PACKAGES python python-dev python3 python3-dev ctags
ENV RUBY_PACKAGES ruby ruby-dev ruby-libs
ENV PERL_PACKAGES perl perl-dev
ENV MISC_PACKAGES git openssh-client tmux bash-completion

# install,clone,configure,build,delete and create packages and dir
RUN apk add --update --virtual $BUILD_PACKAGES $PYTHON_PACKAGES $RUBY_PACKAGES  \
    $PERL_PACKAGES $MISC_PACKAGES                                            && \
    cd /tmp                                                                  && \
    git clone https://github.com/vim/vim                                     && \
    cd /tmp/vim                                                              && \
    ./configure --with-features=huge						\
                --enable-multibyte                                              \
                --enable-pythoninterp                                           \
                --enable-python3interp                                          \
                --enable-perlinterp                                             \
                --enable-rubyinterp                                             \
                --disable-gui                                                   \
                --disable-netbeans                                              \
                --prefix /usr                                                && \
    make 				                                     && \
    make install                                                             && \
    rm -rf /var/cache/* /var/log/* /var/tmp/*                                && \
    mkdir /var/cache/apk && mkdir /root/edit-files                                                  

#change working dir
WORKDIR /root/edit-files

#start container with vim
ENTRYPOINT ["vim"]
