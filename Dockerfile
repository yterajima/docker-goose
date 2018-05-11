FROM yterajima/go:1.9.6
LABEL maintainer="Yuya Matsushima"

ENV GOOSE_ENV development

RUN apt-get update -qq \
      && apt-get install -y gcc \
      && mkdir /repository \
      && go get bitbucket.org/liamstask/goose/cmd/goose \
      && apt-get remove -y --auto-remove gcc \
      && rm -rf /var/lib/apt/lists/*

VOLUME /repository
WORKDIR /repository

CMD goose up -e ${GOOSE_ENV}
