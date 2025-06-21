set -e

ascii_art='
███    ███ ███████ ███    ██ ██    ██ ██    ██ ███    ██ ████████ ██    ██
████  ████ ██      ████   ██ ██    ██ ██    ██ ████   ██    ██    ██    ██
██ ████ ██ █████   ██ ██  ██  ██  ██  ██    ██ ██ ██  ██    ██    ██    ██
██  ██  ██ ██      ██  ██ ██    ██    ██    ██ ██  ██ ██    ██    ██    ██
██      ██ ███████ ██   ████    ██     ██████  ██   ████    ██     ██████

'

echo -e "$ascii_art"
echo "=> Menyuntu is for fresh Ubuntu 24.04+ installations only!"
echo -e "\nBegin installation (or abort with ctrl+c)..."

sudo apt-get update >/dev/null
sudo apt-get install -y git >/dev/null

echo "Cloning Menyuntu..."
rm -rf ~/.local/share/menyuntu
git clone https://github.com/basecamp/menyuntu.git ~/.local/share/menyuntu >/dev/null
if [[ $MENYUNTU_REF != "master" ]]; then
	cd ~/.local/share/menyuntu
	git fetch origin "${MENYUNTU_REF:-stable}" && git checkout "${MENYUNTU_REF:-stable}"
	cd -
fi

echo "Installation starting..."
source ~/.local/share/menyuntu/install.sh
