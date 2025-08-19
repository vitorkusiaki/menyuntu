# Set common git aliases
git config --global alias.ch checkout
git config --global alias.br branch
git config --global alias.c commit
git config --global alias.st status
git config --global alias.pl pull
git config --global alias.ps push
git config --global pull.rebase true
git config --global push.autoSetupRemote true

# Set identification from install inputs
if [[ -n "${MENYUNTU_USER_NAME//[[:space:]]/}" ]]; then
  git config --global user.name "$MENYUNTU_USER_NAME"
fi

if [[ -n "${MENYUNTU_USER_EMAIL//[[:space:]]/}" ]]; then
  git config --global user.email "$MENYUNTU_USER_EMAIL"
fi
