export PATH=/usr/local/bin:/usr/local/sbin:/bin:/usr/bin:/sbin:/usr/sbin:$HOME/bin:/usr/X11R6/bin

export BASH_ENV=$HOME/.bashrc
export USERNAME=""
export MIBS=ALL
export CVS_RSH="ssh"
export CVSROOT=":ext:pdekker@gist.offix:/src/master"
export LYNX_CFG=$HOME/.lynx_config
export RPMFTP=ftp://mirrors.kernel.org/redhat/redhat/linux/9/en/os/i386/RedHat/RPMS
export NVM_DIR=~/.nvm
source ~/.nvm/nvm.sh
EDITOR=vim
export EDITOR
umask 022

[ -f ~/.bashrc ] && . ~/.bashrc

# added by Anaconda3 5.1.0 installer
export PATH="/Users/ryanvelazquez/anaconda3/bin:$PATH"
# added by Anaconda3 2019.03 installer
# >>> conda init >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$(CONDA_REPORT_ERRORS=false '/anaconda3/bin/conda' shell.bash hook 2> /dev/null)"
if [ $? -eq 0 ]; then
    \eval "$__conda_setup"
else
    if [ -f "/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/anaconda3/etc/profile.d/conda.sh"
        CONDA_CHANGEPS1=false conda activate base
    else
        \export PATH="/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda init <<<
