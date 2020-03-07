# ZSH

zsh.md

`zsh` is Mac OSX default shell.

*   https://en.wikipedia.org/wiki/Z_shell

*   https://github.com/zsh-users




```
brew install zsh-syntax-highlighting
```

https://github.com/zsh-users/zsh-autosuggestions

```
git clone \
    https://github.com/zsh-users/zsh-autosuggestions \
    ~/.zsh/zsh-autosuggestions

echo "source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh" >> ~/.zshrc

```

https://github.com/zsh-users/zsh-completions

```
fpath=(path/to/zsh-completions/src $fpath)
```
