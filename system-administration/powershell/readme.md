# Powershell

readme.md

```pwsh
New-Item $profile -Type File -Force
```

```
    Directory: /Users/moljac/.config/powershell

UnixMode   User             Group                 LastWriteTime           Size Name
--------   ----             -----                 -------------           ---- ----
-rw-r--r-- moljac           staff             15.11.2023. 17:05              0 Microsoft.PowerShell_profile.ps1
```


```
code -n `
    $profile
```

```
code -n `
    /Users/moljac/.config/powershell/Microsoft.PowerShell_profile.ps1
```


376

There are several ways:

Write-Host: Write directly to the console, not included in function/cmdlet output. Allows foreground and background colour to be set.

Write-Debug: Write directly to the console, if $DebugPreference set to Continue or Stop.

Write-Verbose: Write directly to the console, if $VerbosePreference set to Continue or Stop.

The latter is intended for extra optional information, Write-Debug for debugging (so would seem to fit in this case).


Powershell has an alias mapping echo to Write-Output, so you can use:

echo "filesizecounter : $filesizecounter"
