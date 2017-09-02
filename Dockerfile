FROM ubuntu:xenial

RUN apt-get update
RUN apt-get install -y git build-essential libtool autoconf

RUN git clone https://github.com/openthread/openthread.git /opt/openthread

WORKDIR /opt/openthread
RUN ./bootstrap
RUN make -f examples/Makefile-posix