* Header : Short guide to personalize configuration of TERMINAL & VIM editor

    A. VIM setup
       1. Directory structure
          1. ~/.vimrc = This is use to store primary configurations
          2. ~/.vim = vim related files plug-ins, colors schemes and other config data
          3. ~/.viminfo = this is use to store data for sessions like command history, marks etc.

       2. Create .vimrc & .ideavimrc if not available in $HOME (~/) directory and copy vimrc or ideavimrc in respective files 

       3. For plugin management we are using "vim plug" manager. note below basic useful commands
          1. PlugInstall - To insatll new added plugin
          2. PlugUpdate - To update existing plugin to latest
          
       4. Java code completion
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
            - command to be note :CocInstall coc-java  

       5. File type specific vim setup 
          1. Create directory "~/.vim/ftplugin" 
          2. Create files like below for respective file type setup
             a. java - java.vim
             b. python - python.vim
             c. markdown - markdown.vim

       6. Color scheme setup
          1. Create directory "~/.vim/colors"
          2. download color scheme here like (curl -o molokai.vim "https://raw.githubusercontent.com/tomasr/molokai/master/colors/molokai.vim)
          3. Set like in vimrc "colorscheme molokai"

       7. How to install devicons fonts
          1. create directory ~/.fonts
          2. download font from (https://www.nerdfonts.com/font-downloads) currently it is (https://github.com/ryanoasis/nerd-fonts/releases/download/v3.0.2/DejaVuSansMono.zip)
          3. unzip with command "unzip DejaVuSansMono.zip" and move unzip files to ~/.fonts directory
          4. Need to build cache with "fc-cache fv" command but not sure working of this command

	   8. Installing fuzzy finder 
		  1. Install binaries using below details
		    a. https://github.com/junegunn/fzf
		    b. > brew install fzf 
		  2. Then add plugin in vimrc file

       9. IMP links
          1. https://www.youtube.com/watch?v=ssmFzoZS2G8 : java complete video link 
          2. https://www.youtube.com/watch?v=yUU12SqX_sY : vim basic configuration video tutorial
          3. https://github.com/junegunn/vim-plug : VIM plug manager vim-plug
          4. https://github.com/ycm-core/YouCompleteMe : YouCompleteMe code completion engine for vim ( Need compilation of code ) 
          5. https://github.com/ryanoasis/nerd-fonts/tree/master/patched-fonts/Hack : Font library
          6. https://github.com/ryanoasis/vim-devicons/wiki/Installation : icon configuration 
          7. https://medium.com/@rohmanhakim/how-to-set-up-code-completion-for-vim-in-macos-9766dd459385 : code completion config article
          8. https://github.com/neoclide/coc-java : Java code completion engine library 
          9. https://github.com/dansomething/coc-java-debug/blob/master/README.md : java code debug configuration 
          10. https://dev.to/mr_destructive/vim-keymapping-guide-3olb : key mappting configuration 
          11. https://github.com/artur-shaik/vim-javacomplete2 : java code completion 


    B. Terminal(Shell) setup
       1. Copy bashrc content in your respective shell file (if not present then create it)

