# Powershell

powershell.md

*   https://aka.ms/pscore6-docs

*   https://docs.microsoft.com/en-us/powershell/scripting/setup/installing-powershell?view=powershell-6

*   https://github.com/PowerShell/PowerShell

## Install on MacOSX

```bash
brew cask install powershell

brew update
brew cask upgrade powershell
```

```bash
curl \
    --output powershell-6.2.3-osx-x64.pkg \
    https://github.com/PowerShell/PowerShell/releases/download/v6.2.3/powershell-6.2.3-osx-x64.pkg

sudo installer \
    -pkg powershell-6.2.3-osx-x64.pkg \
    -target /
```

## Links References

*   https://github.com/xamarin/yaml-templates/pull/63/files