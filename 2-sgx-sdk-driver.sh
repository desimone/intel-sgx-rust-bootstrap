#!/bin/bash
DOWNLOAD_DIR=tmp/
mkdir -p $DOWNLOAD_DIR
echo "=> saving binary files to $DOWNLOAD_DIR"
SGX_BASE_URL=https://download.01.org/intel-sgx/linux-2.1.2/ubuntu64-desktop/
SGX_DRIVER_URL=sgx_linux_x64_driver_1bf506e.bin
SGX_PSW_URL=sgx_linux_x64_psw_2.1.102.43402.bin
SGX_SDK_URL=sgx_linux_x64_sdk_2.1.102.43402.bin

echo $SGX_DRIVER_URL
wget -qcO $DOWNLOAD_DIR/sgx_linux_driver.bin $SGX_BASE_URL/$SGX_DRIVER_URL
wget -qcO $DOWNLOAD_DIR/sgx_linux_psw.bin $SGX_BASE_URL/$SGX_PSW_URL
wget -qcO $DOWNLOAD_DIR/sgx_linux_sdk.bin $SGX_BASE_URL/$SGX_SDK_URL
chmod +x $DOWNLOAD_DIR/*.bin
cd $DOWNLOAD_DIR
sudo ./sgx_linux_driver.bin
sudo ./sgx_linux_psw.bin
echo -e 'no\n/opt/intel' | sudo ./sgx_linux_sdk.bin
source /opt/intel/sgxsdk/environment
echo "=> Adding SGSDX to bashprofile"
echo 'source /opt/intel/sgxsdk/environment' >>$HOME/.bashrc
