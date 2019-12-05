# New_Installation


## sudo apt install git 
## sudo apt install vim 
   - git clone --depth=1 git://github.com/amix/vimrc.git ~/.vim_runtime
     sh ~/.vim_runtime/install_basic_vimrc.sh
## set github
   generate rsa

    ssh-keygen -t rsa -b 4096 -C "wang_yancy@outlook.com"

	add ssh-agent in the background

    eval "$(ssh-agent -s)"

    copy ssh key to clipboard
    sudo apt install xclip
    xclip -sel clip < ~/.ssh/id_rsa.pub

	copy to github.com -> setting -> SSH -> New Key
## sudo apt install zsh
    sudo chsh -s $(which zsh)
    logout 
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

   install zsh plugin : autojump 

    git clone git://github.com/joelthelion/autojump.git
    cd /autojump
    ./install.py
## download config file
    mkdir Code
    cd Code
    mkdir Git
    cd Git
    git clone git@github.com:YancyW/Git_Manual.git
    cp .gitconfig .zshrc ~/
    cd ~/
    git clone git@github.com:YancyW/.user_config.git
## edit config file
   read README file in .user_config
   '''
   vim .user_config/cmd/***
   '''

## install anaconda

    sudo chmod +x ./anaconda***.sh

    when installing, it will ask install address, set an address
    

## config conda env

    conda create -n pytorch python=3.7

    set qinghua source

    conda config --add channels https://mirrors.tuna.tsinghua.edu.cn/anaconda/cloud/pytorch/  

## install pytorch 

    conda install pytorch torchvision cudatoolkit=10.0 --channel  https://mirrors.tuna.tsinghua.edu.cn/anaconda/cloud/pytorch 

    wait until sucess

## build vpn
### set server
    - go to my.vultr.com
    - buy a VPS with Ubuntu system
    - run VPS, record ip address
    - login VPS with ssh
#### install shadowsocks
    '''
    sodu install wget
    get -no-check-certificate -O shadowsocks.sh https://raw.githubusercontent.com/teddysun/shadowsocks_install/master/shadowsocks.sh
    chmod +x shadowsocks.sh
    ./shadowsocks.sh 2>&1 | tee shadowsocks.log
    '''


    set password :
    set port     :  choose any one, not a real port number, only ss use this.
    set encode method : 7 (aes-256-cfb)
    press enter to install 
### set client
#### install ss
    '''
    sudo apt install shadowsocks

    '''
#### correct error in libcrypto.so
    in new system, there will be error : /****/libcrypto.so.1.1  undefined symbol: EVP_CIPHER_CTX_cleanup
    open files : /home/******/lib/python3.7/site-packages/shadowsocks/crypto/openssl.py  (this address is shown in error message)
    change EVP_CIPHER_CTX_cleanup to EVP_CIPHER_CTX_reset (two place)

    then  ssclient will work

    but don't know, never success to link net...

## finish configure
   OK, finish basic configure setting

#  install other softwares
## sudo apt install libboost-dev
## madgraph5
## yaml-cpp
## delphes
 

 

