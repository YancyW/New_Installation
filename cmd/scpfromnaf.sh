#!/usr/bin/expect -f
 	set timeout 60
    set arg1 [lindex $argv 0]
    spawn scp -r ywang@naf-ilc13.desy.de:/afs/desy.de/user/y/ywang/$arg1 ./ 
    expect "password:" 
    send "127Xth35T\r"
	interact
