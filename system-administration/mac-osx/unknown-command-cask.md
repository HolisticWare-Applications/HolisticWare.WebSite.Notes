# Unknown command: cask

unknown-command-cask.md

```
brew update
brew doctor
brew config
```


brew cask install java
Error: Unknown command: cask

brew install homebrew/cask
brew tap homebrew/versions


This means you do not have Cask (Homebrew extension) installed. Run the lines above using Homebrew and you should be


Brew wasn’t able to find the correct path and was causing this issue.
Fix:

```
brew update
brew cleanup
brew cask cleanup
```