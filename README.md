# dotfiles  

### To Install and Use

Go to home directory:  
`cd ~`

Clone this repo and add a dot to the the directory name:  
`git clone https://github.com/rdvelazquez/dotfiles`  
`mv dotfiles .dotfiles`

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

If there are issues with sourcing .vimrc or running `:PluginInstall` you may want to try re-downloading and re-installing vundle (see the vundle github page for instructions)
