#!/bin/bash

echo "=> installing ubuntu 18.04 depedencies"
sudo apt-get update -qq
sudo apt-get -qq install -y build-essential \
	automake \
	autoconf \
	cmake \
	libssl-dev \
	libcurl3-openssl-dev \
	linux-headers-$(uname -r) \
	kmod \
	wget \
	libssl-dev \
	libcurl4-openssl-dev \
	protobuf-compiler \
	libprotobuf-dev
