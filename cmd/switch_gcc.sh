#!/usr/bin/expect

if [[ $# != 1 ]]; then
	echo  "switch_gcc [gcc_version, e.g. 4.8/ 6]"
	exit
fi

gcc_version=$1
BIN=/usr/bin

sudo rm ${BIN}/gcc ${BIN}/g++

sudo ln -s ${BIN}/g++-${gcc_version} ${BIN}/g++
sudo ln -s ${BIN}/gcc-${gcc_version} ${BIN}/gcc
gcc --version

