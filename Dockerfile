FROM alpine:latest

MAINTAINER Sree <sree@aletilabs.com>


RUN apk add --update --virtual build-deps python python-dev python3 python3-dev ctags build-base    \
      make libxpm-dev libx11-dev libxt-dev ncurses-dev git ruby ruby-dev ruby-libs perl perl-dev 
RUN    cd /tmp                                                                  && \
    git clone https://github.com/vim/vim                                    
RUN    cd /tmp/vim                                                              && \
    ./configure --with-features=big                                             \
                --enable-multibyte                                              \
                --enable-pythoninterp                                           \
                --enable-python3interp                                          \
                --enable-perlinterp                                             \
                --enable-rubyinterp                                             \
                --disable-gui                                                   \
                --disable-netbeans                                              \
                --prefix /usr                                                && \
    make VIMRUNTIMEDIR=/usr/share/vim/vim80                                  && \
    make install                                                             
RUN    apk add tmux libsm libice libxt libx11 ncurses                                
    #cleanup
RUN    rm -rf /var/cache/* /var/log/* /var/tmp/*                                && \
    mkdir /var/cache/apk                                                     

ENTRYPOINT ["ash"]
