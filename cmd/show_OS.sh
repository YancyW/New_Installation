#!/bin/bash
if which lsb_release 1>/dev/null 2>&1
then
  distri=$(lsb_release -i | cut -d: -f2 |  gawk '{print $1}')
  vers=$(lsb_release -r | cut -d: -f2 | cut -d. -f1 |  gawk '{print $1}')
  if [[ $distri =~ Scientific && $vers == "6" ]]
  then
    distri="sl6"
    echo "The operation system is: $distri"
  elif [[ $distri =~ Scientific && $vers == "5" ]]
  then
    distri="sl5"
    echo "The operation system is: $distri"
  else
    echo "The operation system is: $distri"
  fi
else
  echo " No lsb_release. Just hoping for the best using SL5 .... "
  distri="sl5"
fi


kern_wl=$(getconf LONG_BIT)
echo "The system is $kern_wl version"


