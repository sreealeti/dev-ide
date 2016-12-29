FROM sree/vim:latest

MAINTAINER Sree <sree@aletilabs.com>

#add dev user
RUN adduser -h /home/dev -D -s /bin/bash dev

#add all the dotfiles to container
ADD dotfiles /home/dev

RUN chown -R dev. /home/dev

#use dev user
USER dev

#update root user shell and run initialize vim
RUN mkdir ~/edit-files                                                               && \
    sh /home/dev/.vim/init-vim.sh

#change work dir
WORKDIR ~/edit-files

#start container with bash
ENTRYPOINT ["bash"]
