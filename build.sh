#!/bin/bash
cd $(dirname $0)

docker buildx build --platform ${1-'linux/amd64,linux/arm64'} -t digitalspacestudio/debian:gcc-11-ruby-2.6-bullseye --push .
