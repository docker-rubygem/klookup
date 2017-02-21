FROM ruby:2.4

MAINTAINER thinkbot@outlook.de

ENV VERSION=0.4

RUN gem install klookup --version ${VERSION} --no-format-exec

WORKDIR /tmp

ENTRYPOINT ["cklookup"]
CMD ["--help"]
