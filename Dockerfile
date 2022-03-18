FROM ubuntu:latest

# install apps
RUN apt update
RUN apt install -y git 
RUN apt install -y make

# create alias

CMD [ "bash" ]