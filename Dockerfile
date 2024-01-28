FROM ubuntu:22.04

LABEL Description="Foo" Vendor="Foo" Version="1.0"

RUN apt-get update \
  && apt-get install --no-install-recommends -y \
      # toolchain
      gcc-arm-linux-gnueabi \
      libc6-dev-armel-cross \
      build-essential \
      bc \
      bison \
      flex \
      libssl-dev \
  && apt-get autoremove -y \
  && apt-get clean \
  && rm -rf /var/lib/apt/lists* \
  && rm -rf /tmp/* /var/tmp/* \
  && rm -rf /usr/share/man/*
