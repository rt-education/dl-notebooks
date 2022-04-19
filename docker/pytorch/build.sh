#!/bin/bash -eu

SRC_DIR=$(cd $(dirname ${BASH_SOURCE:-$0}); pwd)

docker build -t rt-net/pytorch:1.11.0-cuda11.3-cudnn8-runtime $SRC_DIR