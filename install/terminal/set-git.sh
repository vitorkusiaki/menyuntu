# Set common git aliases
git config --global alias.co checkout
git config --global alias.br branch
git config --global alias.ci commit
git config --global alias.st status
git config --global pull.rebase true

# Set identification from install inputs
if [[ -n "${MENYUNTU_USER_NAME//[[:space:]]/}" ]]; then
  git config --global user.name "$MENYUNTU_USER_NAME"
fi

if [[ -n "${MENYUNTU_USER_EMAIL//[[:space:]]/}" ]]; then
  git config --global user.email "$MENYUNTU_USER_EMAIL"
fi
