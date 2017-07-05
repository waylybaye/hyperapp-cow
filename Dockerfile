FROM alpine
MAINTAINER HyperApp <hyperappcloud@gmail.com>

ENV COW_INSTALLDIR=/usr/local/bin/
RUN apk add --update bash curl
RUN curl -L git.io/cow | bash
RUN rm -rf /var/cache/apk/* && rm /bin/bash
CMD cow
