#!/bin/bash

if [[ -e $1 && $1 == *.png ]] ; then
	#nohup deepin-image-viewer $1 >/dev/null 2>&1 &
	deepin-image-viewer $1
elif [[ -e $1 && $1 == *.PNG ]] ; then
	nohup deepin-image-viewer $1 >/dev/null 2>&1  &
elif [[ -e $1 && $1 == *.jpg ]] ; then
	nohup deepin-image-viewer $1 >/dev/null 2>&1  &
elif [[ -e $1 && $1 == *.JPG ]] ; then
	nohup deepin-image-viewer $1 >/dev/null 2>&1  &
elif [[ -e $1 && $1 == *.eps ]] ; then
	nohup eog $1 >/dev/null 2>&1  &
elif [[ -e $1 && $1 == *.pdf ]] ; then
	nohup evince $1 >/dev/null 2>&1  &
elif [[ -e $1 && $1 == *.C ]] ; then
	nohup root -l $1 >/dev/null 2>&1  &
elif [[ -e $1 && $1 == *.html ]] ; then
	nohup firefox $1 >/dev/null 2>&1  &
elif [[ -e $1 && $1 == *.tex ]] ; then
	nohup texmaker $1 >/dev/null 2>&1 & 
	#texmaker $1 >/dev/null 2>&1  
elif [[ -e $1 && $1 == *.nes ]] ; then
	nohup mednafen $1 >/dev/null 2>&1  &
fi
