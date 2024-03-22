echo "\nConfiguring macOS settings..."

echo "Configuring Dock..."
# autohide the dock
defaults write com.apple.dock autohide -bool true
# put the dock on the left side
defaults write com.apple.dock orientation -string "left"
# size of the dock (default is 64)
defaults write com.apple.dock tilesize -int 48
# don't show recently opened applications
defaults write com.apple.dock show-recents -bool false

echo "Configuring Menu Bar..."
# autohide status bar on desktop
defaults write NSGlobalDomain _HIHideMenuBar -bool true

echo "Configuring Mission Control..."
# don't automatically rearrange Spaces on most recent use
defaults write com.apple.dock mru-spaces -bool false
# hot corners bottom right corner to show Desktop
defaults write com.apple.dock wvous-tl-corner -int 4
defaults write com.apple.dock wvous-tl-modifier -int 0

echo "Configuring Siri..."
# don't show Siri in menu bar
defaults write com.apple.systemuiserver "NSStatusItem Visible Siri" -bool false

echo "Killing affected applications..."
# for app in Safari Finder Dock Mail SystemUIServer; do killall "$app" >/dev/null 2>&1; done
for app in Dock SystemUIServer; do killall "$app" >/dev/null 2>&1; done

echo "Done configuring macOS settings.\n"
