FROM sree/vim:latest

MAINTAINER Sree <sree@aletilabs.com>

#set env variables
ENV TERM xterm-256color

#add all the dotfiles to container
ADD dotfiles /root

#update root user shell and run initialize vim
RUN sed -i 's/0:0:root:\/root:\/bin\/ash/0:0:root:\/root:\/bin\/bash/g' /etc/passwd && \
    sh /root/.vim/init-vim.sh

#start container with vim
ENTRYPOINT ["bash"] 
