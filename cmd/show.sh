#!/bin/bash

if [[ -e $1 && $2 != 0 && $1 == *.slcio && $# == 2 ]] ; then
	dumpevent $1 $2 | less
elif [[ -e $1 && $1 == *.slcio && $# == 1 ]] ; then
	anajob $1
#else
fi
