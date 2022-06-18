ARG FROM=alpine:3.7
FROM ${FROM} as compiler
RUN \
  apk add --no-cache --virtual=build-dependencies \
  openssl \
  bzr \
  qt-dev \
  libusb-dev \
  libusb-compat-dev \
  chrpath \
  ctags \
  icu-libs \
  boost-dev \
  g++ \
  gdb \
  make
RUN \
  cd /tmp \
  && bzr branch lp:igotu2gpx \
  && cd /tmp/igotu2gpx \
  && qmake \
  && make clean install

FROM alpine:3.7
COPY --from=compiler /usr/lib /usr/lib
COPY --from=compiler /usr/local /usr/local
ENTRYPOINT ["/usr/local/bin/igotu2gpx"]
