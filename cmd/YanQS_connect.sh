#!/usr/bin/expect -f
	set timeout 60
	spawn ssh -X wangyang@192.168.218.186
	expect "password:" 
	send "12345678\r"
	interact
