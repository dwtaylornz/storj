FROM ubuntu:16.04
ENV MAKEFLAGS -j8
RUN apk update && \
    apk add g++ gcc git make nodejs python && \
    npm install -g storjshare-daemon && \
    rm -rf /var/cache/apk/*

# ADD init.sh  

VOLUME /config
VOLUME /mnt/storj

ENTRYPOINT ["sh","/config/init.sh"]
