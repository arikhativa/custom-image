FROM ubuntu:20.04

# install apps
RUN apt update
RUN apt install -y git 
RUN apt install -y make
RUN apt install -y curl
RUN apt install -y vim

# nvm
RUN curl -sL https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.0/install.sh -o install_nvm.sh
RUN chmod +x install_nvm.sh
RUN ./install_nvm.sh
RUN source .bashrc 
RUN nvm install 16

# create alias
COPY .bash_aliases /root

CMD ["/bin/bash"]
