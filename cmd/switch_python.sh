#!/usr/bin/expect

if [[ $# != 1 ]]; then
	echo  "switch_python [python_version, e.g. 2.7/3/3.5..]"
	exit
fi

py_version=$1
BIN=/usr/bin

sudo rm ${BIN}/python
#expect "password"
#send "wangyan\r"
#[interact]

sudo ln -s ${BIN}/python${py_version} ${BIN}/python
python -V

