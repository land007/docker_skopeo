FROM alpine:latest

MAINTAINER Yiqiu Jia <yiqiujia@hotmail.com>

RUN echo "http://dl-cdn.alpinelinux.org/alpine/edge/community" >> /etc/apk/repositories && \
    apk add --no-cache skopeo bash
ADD 1.crt /tmp
RUN cat /tmp/1.crt  >> /etc/ssl/certs/ca-certificates.crt

CMD bash

#docker build -t land007/skopeo:latest .
#docker run -it --name skopeo land007/skopeo:latest
