#!/bin/bash
sudo docker run -v $HOME/rust-sgx-sdk:/root/sgx \
	-ti --device /dev/isgx \
	baiduxlab/sgx-rust
#/opt/intel/sgxpsw/aesm/aesm_service &
# cd ~/sgx/samplecode/helloworld &&
make &&
	cd bin/ &&
	./app &&
	cd ..
