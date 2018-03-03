FROM alpine:3.7

MAINTAINER Sree <sree@aletilabs.com>

#set env variables
ENV BUILD_PACKAGES build-deps build-base make cmake llvm libxpm-dev libx11-dev libxt-dev zlib-dev ncurses-dev ncurses-terminfo
ENV PYTHON_PACKAGES python3 python3-dev ctags
ENV RUBY_PACKAGES ruby ruby-dev nodejs
ENV PERL_PACKAGES perl perl-dev
ENV MISC_PACKAGES git openssh-client tmux bash-completion sudo curl wget rsync
ENV TERM xterm-256color
ENV LANG en_US.UTF-8

# install,clone,configure,build,delete and create packages and dir
RUN apk add --update --virtual $BUILD_PACKAGES $PYTHON_PACKAGES $RUBY_PACKAGES $PERL_PACKAGES $MISC_PACKAGES && \
    cd /tmp                                                                  && \
    git clone https://github.com/vim/vim                                     && \
    cd /tmp/vim                                                              && \
    ./configure --with-features=huge						\
                --enable-multibyte                                              \
                --enable-python3interp                                          \
                --enable-perlinterp                                             \
                --enable-rubyinterp                                             \
                --disable-gui                                                   \
                --prefix /usr                                                && \
    make 				                                     && \
    make install                                                             && \
    rm -rf /var/cache/* /var/log/* /var/tmp/*                                && \
    mkdir /var/cache/apk

#start container with vim
ENTRYPOINT ["vim"]
