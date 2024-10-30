# `CSC: Error CS1705 : Assembly with identity which has a higher version than referenced assembly`

csc-error-cs1705-assembly-with_identity-which-has-a-higher-version-than-referenced-assembly.md

```
CSC: Error CS1705 : Assembly 'Microsoft.Maui.Essentials' with identity 'Microsoft.Maui.Essentials, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null' uses 'Java.Interop, Version=9.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065' which has a higher version than referenced assembly 'Java.Interop' with identity 'Java.Interop, Version=7.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065'
```


## [Re]Solution / Workaround

remove package `Microsoft.CodeAnalysis.NetAnalyzers`

someone else report that and the issue was that their workloads were out of date or something or maybe they just needed 
to clean and rebuild

https://discord.com/channels/732297728826277939/732297837953679412/1293239467104272434

https://discord.com/channels/732297728826277939/732297837953679412/1300975891140313149

