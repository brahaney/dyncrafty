FROM java:8

ADD /init /init
RUN chmod +x /init/init.sh

RUN mkdir /AMP
WORKDIR /AMP

RUN apt-get update && \
    apt-get install -y lib32gcc1 screen tmux coreutils socat unzip git wget && \
    useradd -d /AMP -m amp && \
    wget http://cubecoders.com/Downloads/ampinstmgr.zip && \
    unzip ampinstmgr.zip && \
    rm -f ampinstmgr.zip

USER amp

ENTRYPOINT ["/init/init.sh"]