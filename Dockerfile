FROM sree/vim:latest

MAINTAINER Sree <sree@aletilabs.com>

#add dev user
RUN adduser -h /home/dev -D -s /bin/bash dev

#add all the dotfiles to container
ADD dotfiles /home/dev

#update root user shell and run initialize vim
RUN sed -i 's/0:0:root:\/root:\/bin\/ash/0:0:root:\/root:\/bin\/bash/g' /etc/passwd  && \
    #git clone https://github.com/tmux-plugins/tpm $HOME/.tmux/plugins/tpm           && \
    mkdir /home/dev/edit-files                                                       && \
    #pip3 install --user powerline-status                                            && \
    sh /home/dev/.vim/init-vim.sh

#use dev user
USER dev

#start container with vim
ENTRYPOINT ["bash"]
