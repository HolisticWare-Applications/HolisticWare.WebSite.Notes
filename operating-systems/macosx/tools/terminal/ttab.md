# ttab

ttab.md

*   https://github.com/mklement0/ttab

```shell
export FOLDER=/Users/Shared/Projects/d/hw/HolisticWare.WebSite.Notes/
ttab -w \
    -a Terminal \
    -d $FOLDER \
    "
    git status
    ;
    git branch 
    ; 
    sys_term_new_tab
    "

    "
    ttab -d /Users/Shared/Projects/d/hw/HolisticWare.WebSite.Notes/ \\
    ; \\
    ttab -d /Users/Shared/Projects/d/hw/HolisticWare.WebSite.Notes/ \\
    "
```


```shell
brew tap mklement0/ttab https://github.com/mklement0/ttab.git
brew install mklement0/ttab/ttab
```


```shell
brew upgrade mklement0/ttab/ttab
```

```shell
ttab --help
```

```
Opens a new terminal tab or window, on macOS in either Terminal.app or  
iTerm2.app; on Linux in Gnome Terminal, if available.

    ttab [-w|-v|-h|-c] [-i] [-s <settings>] [-t <title>] [-q] [-g|-G] [-d <dir>] [<cmd> ...]

    -w                  Open new tab in new terminal window.
    -v                  iTerm only: create a new vertical split
    -h                  iTerm only: create a new horizontal split
    -c                  Terminal/iTerm only: do not open any new window or
                        tab, run in the current tab of the current window.
    -i                  Suppress up-front verification of the existence of
                        the target directory specified via the -d option.
    -s <settings>       Assign a settings set (profile).
    -t <title>          Specify title for new tab.
    -q                  Clear the new tab's screen.
    -g                  Terminal/iTerm only: create in background (don't
                        activate application).
    -G                  Terminal/iTerm: don't activate new tab and create in
                        background.
                        gnome-terminal: don't activate new tab, except with -w.
    -d <dir>            Specify working directory; -d '' disables inheriting
                        the current dir. in Terminal/iTerm.
    -l <secs>           Terminal/iTerm only: delay startup command submission;
                        may be preset via env. var. TTAB_CMD_DELAY
    -a Terminal | iTerm Open the new tab in the given terminal app on macOS.
    <cmd> ...           Command to execute in the new tab.
    "<cmd> ...; ..."    Multi-command command line (passed as single operand).
```
