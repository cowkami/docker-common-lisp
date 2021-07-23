FROM alpine:3.14.0

RUN apk update && \
  apk upgrade && \
  apk add zsh make
RUN apk add --repository=http://dl-cdn.alpinelinux.org/alpine/edge/testing roswell

ADD ./Makefile ./
RUN make install
RUN rm ./Makefile

WORKDIR /home

CMD ["ros", "run"]
