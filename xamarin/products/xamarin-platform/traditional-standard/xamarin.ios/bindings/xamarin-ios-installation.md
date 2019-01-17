# Xamarin.iOS installation

xamarin-ios-installation.md

sudo gem install cocoapods
sudo gem install fastlane –NV


brew cask install fastlane


wget https://download.fastlane.tools/
unzip fastlane.zip
./fastlane/install
ls -al /Users/$(whoami)/.fastlane/bin/






    xcode-select --install

Switch to using (already installed) command line tools: 

    sudo xcode-select --switch /Library/Developer/CommandLineTools

Switch back to (already installed) full xcode: 

    sudo xcode-select --switch /Applications/Xcode.app/Contents/Developer

Show which version you're currently using: 

    xcode-select -p

Mine was /Library/Developer/CommandLineTools