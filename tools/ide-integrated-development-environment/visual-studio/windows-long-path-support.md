# Windows Long path support

windows-long-path-support.md

*   https://www.reddit.com/r/dotnetMAUI/comments/1dr7un4/solution_to_the_long_path_limitation_in_visual/

```pwsh
New-ItemProperty `
    -Path "HKLM:\SYSTEM\CurrentControlSet\Control\FileSystem" `
    -Name "LongPathsEnabled" `
    -Value 1 `
    -PropertyType DWORD ` -Force
```


