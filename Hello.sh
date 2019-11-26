
RED='\033[0;31m'               
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
CYAN='\033[0;36m'
PURPLE='\033[0;35m'
NC='\033[0m'

echo "${RED}"
echo "--------------------------------------------------"
echo ""
echo "Hello Yan!"
echo "How is the day today?"

	timeout=3
	target=www.google.com
	ret_code=`curl -I -s --connect-timeout $timeout $target -w %{http_code} | tail -n1`
	if [ "x${ret_code}" = "x302" ]; then
		echo "It's today's weather, please prepare if necessary!"
		echo ""
		weather=`curl  wttr.in/hamburg -s | head -n17`
		echo ${weather}
	else
		echo "Sorry, the connection is weak ..."
		echo "x${ret_code}"
	fi

echo ""
echo "--------------------------------------------------"
echo ""
echo "${GREEN}Now we begin to work,"
echo ""
echo ""
echo "Please DO NOT change the file in ${CYAN}soft link (Cyan color)!!!!!"
echo ""
echo ""
echo "${YELLOW}Hope you having a good luck!"
echo "${NC}"

. ./.user_config/cmd/show_OS.sh

echo ""
	pts mem "ywang"
echo ""
echo "Please DO NOT change the file in ${CYAN}soft link (Cyan color)!!!!!"
echo ""
echo ""
echo "${YELLOW}Hope you having a good luck!"
echo "${NC}"


source ~/.user_config/mycmd.sh
source ~/Software/executable/root/bin/thisroot.sh
export LD_LIBRARY_PATH=/usr/local/lib/:$LD_LIBRARY_PATH


# added by Anaconda3 5.3.1 installer
# >>> conda init >>>
# !! Contents within this block are managed by 'conda init' !!
#__conda_setup="$(CONDA_REPORT_ERRORS=false '/home/ywang/Software/executable/anaconda3/bin/conda' shell.bash hook 2> /dev/null)"
#if [ $? -eq 0 ]; then
#    \eval "$__conda_setup"
#else
#    if [ -f "/home/ywang/Software/executable/anaconda3/etc/profile.d/conda.sh" ]; then
#        . "/home/ywang/Software/executable/anaconda3/etc/profile.d/conda.sh"
#        CONDA_CHANGEPS1=false conda activate base
#    else
#         \export PATH="/home/ywang/Software/executable/anaconda3/bin:$PATH"
#    fi
#fi
#unset __conda_setup
# <<< conda init <<<
export PATH="/home/ywang/Software/executable/anaconda3/bin:$PATH"

#init opengl
 unset LIBGL_ALWAYS_INDIRECT # On the REMOTE computer --- To use OPENGL to display
#init compiler
 export CC=gcc
 export CXX=g++
 gccv=`gcc --version | grep "gcc"`
 echo "gcc version: "${gccv}

 gppv=`g++ --version | grep "g++"`
 echo "g++ version: "${gppv}

 echo "python version: " 
 python -V 


