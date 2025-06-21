# Run desktop installers
for installer in ~/.local/share/menyuntu/install/desktop/*.sh; do source $installer; done

# Logout to pickup changes
gum confirm "Ready to reboot for all settings to take effect?" && sudo reboot
