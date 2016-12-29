FROM sree/vim:latest

MAINTAINER Sree <sree@aletilabs.com>

#add dev user
RUN adduser -h /home/dev -D -s /bin/bash dev

#add all the dotfiles to container
ADD dotfiles /home/dev

RUN chown -R dev. /home/dev                                                        && \
    echo "dev ALL=(ALL) NOPASSWD:ALL" >>/etc/sudoers

#use dev user
USER dev

#update root user shell and run initialize vim
RUN mkdir /home/dev/edit-files                                                     && \
    sh /home/dev/.vim/init-vim.sh

#change work dir
WORKDIR /home/dev/edit-files

#start container with bash
ENTRYPOINT ["bash"]
