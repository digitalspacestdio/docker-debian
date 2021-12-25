FROM ruby:2.6-buster
LABEL maintainer="Sergey Cherepanov <sergey@digitalspace.studio>"
LABEL name="digitalspacestudio/debian"
ARG DEBIAN_FRONTEND=noninteractive
ENV LC_ALL=en_US.UTF-8 LANG=en_US.UTF-8 LANGUAGE=en_US.UTF-8
COPY 01_nodoc /etc/dpkg/dpkg.conf.d/01_nodoc
COPY ftp.debian.org.list /etc/apt/sources.list.d/ftp.debian.org.list
RUN apt-get update \
	&& apt-get install -y --no-install-recommends locales \
	&& sed -i -e 's/# en_US.UTF-8 UTF-8/en_US.UTF-8 UTF-8/' /etc/locale.gen \
	&& dpkg-reconfigure locales \
	&& update-locale LANG=en_US.UTF-8 \
	&& apt-get clean \
    && rm -rf /var/cache/apt \
    && rm -rf /var/lib/apt/lists/*
