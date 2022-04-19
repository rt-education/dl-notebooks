#!/bin/bash -eu

# TensorFlow
# docker run --gpus all --rm -it -u $(id -u):$(id -g) -p 8888:8888 -v $(pwd)/notebook:/tf rt-net/tensorflow:2.8.0-gpu-jupyter

# PyTorch
docker run --gpus all --rm -it -u $(id -u):$(id -g) -p 8888:8888 -v $(pwd)/notebook:/workspace rt-net/pytorch:1.11.0-cuda11.3-cudnn8-runtime
