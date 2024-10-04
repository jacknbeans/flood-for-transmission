FROM lscr.io/linuxserver/transmission:latest

RUN \
  echo "**** download flood-for-transmission ****" && \
  curl -OL https://github.com/johman10/flood-for-transmission/releases/download/latest/flood-for-transmission.zip && \
  unzip flood-for-transmission.zip && \
  rm flood-for-transmission.zip && \
  mkdir -p /jedits && \
  mv flood-for-transmission /jedits

ENV TRANSMISSION_WEB_HOME=/jedits/flood-for-transmission
