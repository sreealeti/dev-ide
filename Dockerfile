FROM sree/vim:latest

MAINTAINER Sree <sree@aletilabs.com>

#add all the dotfiles to container
ADD dotfiles /root

#update root user shell and run initialize vim
RUN sed -i 's/0:0:root:\/root:\/bin\/ash/0:0:root:\/root:\/bin\/bash/g' /etc/passwd && \
    #git clone https://github.com/erikw/tmux-powerline.git /usr/lib/tmux-powerline   && \
    git clone https://github.com/tmux-plugins/tpm $HOME/.tmux/plugins/tpm           && \
    pip3 install --user powerline-status                                            && \
    sh /root/.vim/init-vim.sh

#start container with vim
ENTRYPOINT ["bash"]
