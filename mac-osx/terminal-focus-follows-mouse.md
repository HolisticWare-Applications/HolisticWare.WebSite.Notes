# Terminal Focus-Follows-Mouse

terminal-focus-follows-mouse.md

The standard Terminal application included in Mac OS X will do focus-follows-mouse 
(within that application only, and no auto-raise) if you run this command from a shell and then 
restart the Terminal app:

for Terminal.app by issuing the following command at the command line:

defaults write com.apple.Terminal FocusFollowsMouse -bool true
For X11 apps you can do this:

defaults write com.apple.x11 wm_ffm -bool true
In Snow Leopard, use this instead:

defaults write org.x.X11 wm_ffm -bool true

https://github.com/ianyh/Amethyst
https://stackoverflow.com/questions/98310/focus-follows-mouse-plus-auto-raise-on-mac-os-x


chunkwm has been superseded by yabai. To install:

brew tap koekeishiya/formulae
brew install yabai
mkdir -p ~/.config/yabai/
printf 'yabai -m config focus_follows_mouse autofocus' >> ~/.config/yabai/yabairc
brew services start yabai