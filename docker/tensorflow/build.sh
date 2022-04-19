#!/bin/bash -eu

SRC_DIR=$(cd $(dirname ${BASH_SOURCE:-$0}); pwd)

docker build -t rt-net/tensorflow:2.8.0-gpu-jupyter $SRC_DIR