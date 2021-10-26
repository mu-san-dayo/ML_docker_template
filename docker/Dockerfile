FROM pytorch/pytorch:1.4-cuda10.1-cudnn7-devel
MAINTAINER Yuta Mukobara <ainkrn.02190922@gmail.com>
WORKDIR /opt/app
RUN apt-get update && apt-get install -y \
    curl \
    unzip \
    wget \
    git \
 && apt-get clean \
 && rm -rf /var/lib/apt/lists/*
COPY docker/requirements.txt /opt/app
RUN python -m pip install -r requirements.txt


ENV PYTHONIOENCODING=utf-8

WORKDIR /workspace
ENV DIR_TMP /workspace

