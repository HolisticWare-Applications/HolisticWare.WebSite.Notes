# Contributing

readme.md

*   issues

    *   Android

        https://github.com/dotnet/maui/issues?q=is%3Aissue%20state%3Aopen%20label%3A%22platform%2Fandroid%20%F0%9F%A4%96%22

        *   untriaged

            https://github.com/dotnet/maui/issues?q=is%3Aissue%20state%3Aopen%20label%3A%22platform%2Fandroid%20%F0%9F%A4%96%22%20label%3A%22%3Awatch%3A%20Not%20Triaged%22


https://dev.to/larsonzhong/most-complete-adb-commands-4pcg

https://gist.github.com/davidnunez/1404789

```
adb shell cmd package list packages | grep maui
```

```
adb shell pm list packages | grep maui
```

```
list packages [-f] [-d] [-e] [-s] [-3] [-i] [-l] [-u] [-U] [--uid UID] [--user USER_ID] [FILTER]

Prints all packages; optionally only those whose name contains
the text in FILTER.
Options:
  -f: see their associated file
  -d: filter to only show disabled packages
  -e: filter to only show enabled packages
  -s: filter to only show system packages
  -3: filter to only show third party packages
  -i: see the installer for the packages
  -l: ignored (used for compatibility with older releases)
  -U: also show the package UID
  -u: also include uninstalled packages
  --uid UID: filter to only show packages with the given UID
  --user USER_ID: only list packages belonging to the given user
```

To see user installed packages:

```
adb shell pm list packages -3 | cut -f 2 -d ":"
```


https://github.com/dtmilano/AndroidViewClient



adb shell dumpsys window windows | find "mCurrentFocus"

adb shell dumpsys window windows | grep -i "topapp"

