FROM ubuntu:18.04

# Set ENV
ENV NVM_DIR "/root/.nvm"

# Prep 
RUN apt-get update && apt-get dist-upgrade && \ 
    apt-get install -y git python build-essential wget && \
    wget -qO- https://raw.githubusercontent.com/creationix/nvm/v0.33.3/install.sh | bash 

# Install nvm 
RUN "$NVM_DIR/nvm.sh"

# Install node LTS
RUN nvm install --lts

# Install StorjShare 
RUN npm install --global --unsafe-perm storjshare-daemon

# ADD init.sh  

VOLUME /config
VOLUME /mnt/storj

ENTRYPOINT ["sh","/config/init.sh"]
