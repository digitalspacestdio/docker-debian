#!/bin/bash
cd $(dirname $0)
docker build -t digitalspacestudio/debian:buster .
docker push digitalspacestudio/debian:buster