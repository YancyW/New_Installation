#!/usr/bin/expect -f
	set timeout 60
	spawn ssh -X ywang@naf-ilc13.desy.de
	expect "password:" 
	#send "127Xth35T\r"
	send "JiTui2019MaHua\r"
	interact
