FROM ubuntu:16.04

RUN apt-get update -y \
    && apt-get install -y \
        sudo \
        vim git \
        gcc \
        python3 python3-pip \
        python3-all-dev python3-setuptools build-essential python3-wheel \
        qt5-default libqt5webkit5-dev build-essential xvfb \
    && apt-get autoremove \
    && apt-get autoclean 

RUN pip3 install dryscrape

ADD init.sh /
ADD script.sh /

ENTRYPOINT ["/init.sh"]
