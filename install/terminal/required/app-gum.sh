# Gum is used for the Menyuntu commands for tailoring Menyuntu after the initial install
cd /tmp
GUM_VERSION="0.16.1" # Use known good version
wget -qO gum.deb "https://github.com/charmbracelet/gum/releases/download/v${GUM_VERSION}/gum_${GUM_VERSION}_amd64.deb"
sudo apt-get install -y --allow-downgrades ./gum.deb
rm gum.deb
cd -
