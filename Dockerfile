FROM debian:bullseye

RUN apt-get update \
  && apt-get -y install git build-essential automake libcurl4-openssl-dev

RUN git clone -b release https://github.com/roswell/roswell.git \
  && cd roswell \
  && sh bootstrap \
  && ./configure \
  && make \
  && make install \
  && ros setup

WORKDIR /home

CMD ["ros", "run"]
