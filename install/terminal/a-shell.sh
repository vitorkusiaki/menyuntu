# Configure the bash shell using Menyuntu defaults
[ -f "~/.bashrc" ] && mv ~/.bashrc ~/.bashrc.bak
cp ~/.local/share/menyuntu/configs/bashrc ~/.bashrc

# Load the PATH for use later in the installers
source ~/.local/share/menyuntu/defaults/bash/shell

[ -f "~/.inputrc" ] && mv ~/.inputrc ~/.inputrc.bak
# Configure the inputrc using Menyuntu defaults
cp ~/.local/share/menyuntu/configs/inputrc ~/.inputrc
