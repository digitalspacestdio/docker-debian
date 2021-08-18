#!/bin/bash
cd $(dirname $0)

docker buildx build --platform ${1-'linux/amd64,linux/arm64,linux/arm/v7,linux/arm/v6'} -t digitalspacestudio/ruby:2.6-buster --push .
