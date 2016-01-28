FROM radioastro/base:0.2

MAINTAINER gijsmolenaar@gmail.com

RUN apt-get update && \
    apt-get install -y \
        aoflagger \
        && \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

CMD /usr/bin/aoflagger

