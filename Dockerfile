FROM debian

MAINTAINER Grégoire Delattre <greg@quimbo.fr>

# 256 colors in vim
ENV TERM xterm-256color

# Install dev packages
RUN apt-get update \
 && apt-get install -y git vim screen tmux htop zsh curl wget man \
 && rm -rf /var/lib/apt/lists/*

# Use root user
WORKDIR /root

# Clone config
RUN git clone --recursive https://github.com/gregdel/dotfiles.git
RUN cd ~/dotfiles && ./install.sh < /dev/null
RUN chsh -s `which zsh`

CMD ["/usr/bin/zsh"]
