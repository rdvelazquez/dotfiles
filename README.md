# dotfiles  

## For Quick Start with Modern Data Stack:
Clone this repo into the home directory as .dotfiles:  
`git clone https://github.com/rdvelazquez/dotfiles ~/.dotfiles`

CD into the directory and run the startup script:  
`bash startup.zsh`

## For General Dev:
Clone this repo into the home directory as .dotfiles:  
`git clone https://github.com/rdvelazquez/dotfiles ~/.dotfiles`

CD into the directory and run the install script:  
`cd .dotfiles`  
`./install.sh`

Confirm that the dotfiles were saved correctly:  
`cd ~`  
`ls -a` You should see only one of each dot file (.vimrc, .bashrc, etc)  
`vim .vimrc` This should look line the .vimrc file in the github repo

Install the vim packages with vundle:  
`vim` to open vim  
_these next two commands are run from inside vim (any vim file)_    
`:so ~/.vimrc`   
`:PluginInstall`

If there are issues with sourcing .vimrc or running `:PluginInstall` you may want to try re-downloading and re-installing vundle: `git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim`
