cat <<EOF >~/.local/share/applications/Menyuntu.desktop
[Desktop Entry]
Version=1.0
Name=Menyuntu
Comment=Menyuntu Controls
Exec=alacritty --config-file /home/$USER/.config/alacritty/pane.toml --class=Menyuntu --title=Menyuntu -e menyuntu
Terminal=false
Type=Application
Icon=/home/$USER/.local/share/menyuntu/applications/icons/Menyuntu.png
Categories=GTK;
StartupNotify=false
EOF
