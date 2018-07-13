# IntelSGX Rust Bootstrap

Getting started with [Intel SGX](https://01.org/intel-software-guard-extensions/downloads) on Linux and [Rust](https://github.com/baidu/rust-sgx-sdk) with docker is a bit of a pain so I wrote a few scripts to help boot strap the process.

Once you run the bootstrap scripts you should be able to

```bash
sudo docker run -v $HOME/rust-sgx-sdk:/root/sgx \
	-ti --device /dev/isgx \
	baiduxlab/sgx-rust
#
# in the container, run the following to test
/opt/intel/sgxpsw/aesm/aesm_service &
cd ~/sgx/samplecode/helloworld &&
	make &&
	cd bin/ &&
	./app &&
	cd ..
...
...
SIGN =>  bin/enclave.signed.so
[1]+  Done                    /opt/intel/sgxpsw/aesm/aesm_service  (wd: ~)
(wd now: ~/sgx/samplecode/helloworld)
[+] global_eid: 2
This is normal world string passed into enclave!
This is a Rust string!
[+] say_something success ...
```

## Optional

- On Ubuntu 18.04 (linux kernel 4.14) install the driver from the [repository directly](https://github.com/intel/linux-sgx-driver/issues/50).
- If you have SGX set to software controlled in bios, you can use the [enabler](https://github.com/dzobbe/sgx-sw-enabler-linux).
