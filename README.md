Short Guide:

1. Create .vimrc or .ideavimrc if not available in $HOME (~/) directory and copy vimrc or ideavimrc in respective files
2. Copy bashrc content in your respective shell file (if not present then create it)
3. FOr plug-ins we are suing vim-plug so please use below commands to install all plug-ins available in vimrc file
    PlugInstall
    PlugUpdate etc.
4. For a file type specific configurations
    a. Create directory "~/.vim/ftplugin" 
    b. Create files like below
        java = java.vim
        python = python.vim
        markdown = markdown.vim
5. For color schemes
    a. Create directory "~/.vim/colors"
    b. download color scheme here like (curl -o molokai.vim "https://raw.githubusercontent.com/tomasr/molokai/master/colors/molokai.vim)
    c. Set like "colorscheme molokai"
5. DIrectory structure for config
    ~/.vim = vim related files plug-ins, colors schemes and other config data
    ~/.viminfo = this is use to store data for sessions like command history, marks etc.
    ~/.vimrc = This is use to store primary configurations
6. How to install devicons fonts
    a. create directory ~/.fonts
    b. download font from (https://www.nerdfonts.com/font-downloads) currently it is (https://github.com/ryanoasis/nerd-fonts/releases/download/v3.0.2/DejaVuSansMono.zip)
    c. unzip with command "unzip DejaVuSansMono.zip" and move unzip files to ~/.fonts directory
    d. Need to build cache with "fc-cache fv" command but not sure working of this command




# My global configuration
1. VIM configuration files for intellij plugin and vim editor
2. Shell configuration

-Important links
https://www.youtube.com/watch?v=ssmFzoZS2G8 : java complete video link 

https://www.youtube.com/watch?v=yUU12SqX_sY : vim basic configuration video tutorial

https://github.com/junegunn/vim-plug : VIM plug manager vim-plug

https://github.com/ycm-core/YouCompleteMe : YouCompleteMe code completion engine for vim ( Need compilation of code ) 

https://github.com/ryanoasis/nerd-fonts/tree/master/patched-fonts/Hack : Font library

https://github.com/ryanoasis/vim-devicons/wiki/Installation : icon configuration 

https://medium.com/@rohmanhakim/how-to-set-up-code-completion-for-vim-in-macos-9766dd459385 : code completion config article

https://github.com/neoclide/coc-java : Java code completion engine library 

https://github.com/dansomething/coc-java-debug/blob/master/README.md : java code debug configuration 

https://dev.to/mr_destructive/vim-keymapping-guide-3olb : key mappting configuration 

https://github.com/artur-shaik/vim-javacomplete2 : java code completion 




How to configure it , step by step guide

1.Installation of vim plug manager

    - https://github.com/junegunn/vim-plug
    - curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim 

2.Create ".vimrc" config file at location "/Users/pramod/.vimrc" or "~/.vimrc" if not exit 
    
    - Refer sample file configuration "sample_vimrc.txt"
    
3.After opening vim editor 
            
            - :PlugInstall or :PlugUpdate for downloading or udpating all configured plugin in .vimrc file

4.Java code completion
    - COC used for java code completion 
    - following are the steps
        - Make sure you have nodeJS ≥ 8.0, or else download it via the command below
          curl -sL install-node.now.sh | sh
        
        - Install yarn
          curl --compressed -o- -L https://yarnpkg.com/install.sh | bash

        - Clone COC repo
          cd ~/.vim/pack/coc/start
          git clone https://github.com/neoclide/coc.nvim.git --depth=1
        
        - cd ~/.vim/pack/coc/start/coc.nvim
          yarn install or npm install 

        - Add Plugin for COC. Open ~/.vimrc in editor and add the lines below
          call plug#begin()
          Plug 'neoclide/coc.nvim', {'do': { -> coc#util#install()}}
          call plug#end()

        - Open VIM and use command :PlugInstall : will install COC 

        - Install COC extension for java langugage Java langugage server , similar we can install other language extension to support
          :CocInstall coc-java  


INSTALLING FUZZY FINDER

1. Install binaries using below details
   https://github.com/junegunn/fzf
   > brew install fzf 
2. Then add plugin in vimrc file


