#!/bin/bash

cmd_path=${HOME}/.user_config/cmd

#init self command 
echo ""
echo "${GREEN}Here are some self-defined command:"
alias "lk=ls -lha"
echo  "lk       -> list all files"
alias "mytop=. ${cmd_path}/top.sh"
echo  "mytop    -> show my process"


alias "naf=exec ${cmd_path}/naf_connect.sh"
echo  "naf    -> connect naf"
alias "scpfrom=exec ${cmd_path}/scpfromnaf.sh"
echo  "scpfrom    -> copy from naf"
alias "pal=${cmd_path}/pal_remote.sh"
alias "paul=${cmd_path}/paul_remote.sh"
echo  "pal/paul -> log in naf backup of DESY"
alias "ihep=exec ${cmd_path}/ihep_connect.sh"
echo  "ihep   -> connect ihep"
alias "yanqs=exec ${cmd_path}/YanQS_connect.sh"
echo  "yanqs  -> connect Yan QiShu's PC"



alias "max=exec ${cmd_path}/maxwell_connect.sh"
echo  "max    -> connect maxwell"
alias "show=. ${cmd_path}/show.sh"
echo  "show     -> show slcio file"
alias "open=. ${cmd_path}/open.sh"
echo  "open     -> open any file with this command"
alias "fs=du -h"
echo  "fs       -> check disk status"
alias "myfind=. ${cmd_path}/myfind.sh"
echo  "myfile   -> find a file"
alias "clear=. ${cmd_path}/myclear.sh"
echo  "clear    -> clear information on the screen"
alias "rspy=. ${cmd_path}/restart_input.sh"
echo "rspy     -> restart pinyin input"
alias "realrm= /bin/rm"
echo  "realrm   -> real rm command in linux"
alias "switch_gcc=. ${cmd_path}/switch_gcc.sh"
echo "switch_gcc -> switch gcc version. now we have 4.8 and 6.4 in the laptop"
alias "switch_python=. ${cmd_path}/switch_python.sh"
echo "switch_python-> switch python version. now we have 2.7, 3 and 3.6 in the laptop"



# for rm {{
# mkdir ~/.delete, when rm somethings ,mv them to here
if [ ! -d $HOME/.delete  ]
then
	mkdir $HOME/.delete
fi
unDoRm() {
	mv -i $HOME/.delete/$@ ./

}
toBackup()
{
	rmdate=`date '+%Y-%m-%d %H:%M:%S'`
	for thing in $@
	do
		echo $thing | grep '^-' > /dev/null
		if [ ! $? = 0  ]
		then
			new_name=$(basename "$thing")
			mv $thing $HOME/.delete/$new_name-$rmdate
			echo mv $thing to ~/.delete, you can backup them
		fi
	done


}
cleanDelete()
{
	echo 'clear backup files?[y/N]'
	read confirm
	[ $confirm = 'y'  ] || [ $confirm = 'Y'  ]  && /bin/rm -rf $HOME/.delete/*

}
# rm somethings
alias rm=toBackup
# see what in~/.delete now
alias lsdel='ls $HOME/.delete'
# undo
alias unrm=unDoRm
# clean ~/.delete
alias cleandel=cleanDelete
echo "rm       -> mv a file to ~/.delete"
echo "unrm     -> undo delete a file to current dir"
echo "cleandel -> clean all backup folder"
# }}
