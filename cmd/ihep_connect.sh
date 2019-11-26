#!/usr/bin/expect -f
	set timeout 60
	spawn ssh -X wangyan@lxslc6.ihep.ac.cn 
	expect "password:" 
	send "VpjvxWv07I\r"
	interact
