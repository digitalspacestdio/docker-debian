#!/bin/bash
cd $(dirname $0)
docker buildx build --platform linux/amd64,linux/arm64,linux/arm/v7,linux/arm/v6 -t digitalspacestudio/debian:buster --push .
