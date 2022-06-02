## Startup script to get some basics set up on a new mac
## Based on: https://gitlab.com/gitlab-data/analytics/-/blob/master/admin/onboarding_script.zsh

## Install homebrew 
## Check if exists
command -v brew >/dev/null 2>&1 || { echo "Installing Homebrew.."
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
  } >&2;
## Add it to the path
export PATH=/opt/homebrew/bin:$PATH
echo "Homebrew successfully installed"

## install git
echo "Installing git.."
brew install git
echo "git successfully installed"

## Get oh my zsh (plugins, themes for zsh).
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)" "" --unattended
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
## Set zsh theme
sed -i '' 's/ZSH_THEME=".*"/ZSH_THEME="bira"/g' ~/.zshrc
sed -i '' 's/plugins=(git)/plugins=(git zsh-autosuggestions jump)/g' ~/.zshrc

## Fix zsh permissions
chmod 755 /usr/local/share/zsh
chmod 755 /usr/local/share/zsh/site-functions

## source file to get jump working
source ~/.zshrc

## you will need to edit this file
## install visual studio code
echo "Installing VS Code.."
brew install --cask visual-studio-code
## this might ask you for your password
code --version
export EDITOR="code --wait"
echo "VS Code successfully installed"

echo "Installing anaconda.."
brew insatll --cask anaconda
export PATH="/usr/local/anaconda3/bin:$PATH"
echo "anaconda installed succesfully"

cd ~/Downloads
mkdir -p ${HOME}/iterm2-colors
cd ${HOME}/iterm2-colors
curl https://github.com/mbadolato/iTerm2-Color-Schemes/zipball/master > iterm2-colors.zip
unzip iterm2-colors.zip
rm iterm2-colors.zip
echo "iTerm2 + Colors installed"

## create global gitignore
echo "Creating a global gitignore.."
git config --global core.excludesfile ~/.gitignore
touch ~/.gitignore
echo '.DS_Store' >> ~/.gitignore
echo '.idea' >> ~/.gitignore
echo "Global gitignore created"

## insatlling dbt with bigquery adapter
brew tap dbt-labs/dbt
brew install dbt-bigquery

## Setting up google clound cli
sh -c "$(curl -fsSL https://dl.google.com/dl/cloudsdk/channels/rapid/downloads/google-cloud-cli-388.0.0-darwin-arm.tar.gz)" "" --unattended
tar -xf google-cloud-cli-VERSION-darwin-arm.tar
mv google-cloud-sdk ~/ 
cd ~/google-cloud-sdk
install.sh
bin/gcloud iniit
## The following command sets your application default credentials which dbt uses to connect to BigQuery
gcloud auth application-default login \
  --scopes=https://www.googleapis.com/auth/bigquery,\
https://www.googleapis.com/auth/drive.readonly,\
https://www.googleapis.com/auth/iam.test 
