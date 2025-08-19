
sudo apt install -y zsh

# Make sure zsh is the default shell
if ! grep -q "^$(whoami):/bin/zsh" /etc/passwd; then
  echo "Changing default shell to zsh..."
  sudo chsh -s $(which zsh) $(whoami)
else
  echo "Default shell is already set to zsh."
fi

# Install oh-my-zsh
git clone https://github.com/ohmyzsh/ohmyzsh.git ~/.oh-my-zsh

# Backup existing .zshrc
cp ~/.zshrc ~/.zshrc.orig

# Create a new .zshrc from the oh-my-zsh template
cp ~/.oh-my-zsh/templates/zshrc.zsh-template ~/.zshrc