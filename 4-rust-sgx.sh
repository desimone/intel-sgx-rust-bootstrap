#!/bin/bash
sudo docker pull baiduxlab/sgx-rust
sudo docker run -v $HOME/rust-sgx-sdk:/root/sgx \
	-ti --device /dev/isgx \
	baiduxlab/sgx-rust
#
# manually run the following to test
# /opt/intel/sgxpsw/aesm/aesm_service &
# cd ~/sgx/samplecode/helloworld &&
# 	make &&
# 	cd bin/ &&
# 	./app &&
# 	cd ..
