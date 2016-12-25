FROM alpine:latest

MAINTAINER Sree <sree@aletilabs.com>

RUN apk add --update --virtual build-deps python python-dev python3 python3-dev ctags build-base    \
      make libxpm-dev libx11-dev libxt-dev ncurses-dev git ruby ruby-dev ruby-libs perl perl-dev && \
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
WORKDIR /root/edit-files
ENTRYPOINT ["vim"]
