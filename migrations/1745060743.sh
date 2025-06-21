cp ~/.local/share/menyuntu/configs/alacritty/shared.toml ~/.config/alacritty/shared.toml
cp ~/.local/share/menyuntu/configs/alacritty/pane.toml ~/.config/alacritty/pane.toml
cp ~/.local/share/menyuntu/configs/alacritty/btop.toml ~/.config/alacritty/btop.toml
cp ~/.local/share/menyuntu/configs/alacritty.toml ~/.config/alacritty/alacritty.toml

source $MENYUNTU_PATH/applications/About.sh
source $MENYUNTU_PATH/applications/Activity.sh
source $MENYUNTU_PATH/applications/Neovim.sh
source $MENYUNTU_PATH/applications/Docker.sh
source $MENYUNTU_PATH/applications/Menyuntu.sh

alacritty migrate 2>/dev/null || true
alacritty migrate -c ~/.config/alacritty/pane.toml 2>/dev/null || true
alacritty migrate -c ~/.config/alacritty/btop.toml 2>/dev/null || true
