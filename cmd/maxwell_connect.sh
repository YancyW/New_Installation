#!/usr/bin/expect

#Usage sshsudologin.expect <host> <ssh user> <ssh password> <su user> <su password>

set timeout 60

spawn ssh ywang@max-display.desy.de

expect "*?assword" { send "Xth2008T\r" }

interact
