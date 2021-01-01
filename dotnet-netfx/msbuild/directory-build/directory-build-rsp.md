# `Directory.Build.rsp`

directory-build-rsp.md

*   HolisticWare

    *   `./source/`


In version 15.6 and above, MSBuild will search parent directories of the project for a 
file named `Directory.Build.rsp`. 

This can be helpful in a source code repository to provide default arguments during command-line builds. 
It can also be used to specify the command-line arguments of hosted builds.


*   https://github.com/kzu/til/blob/master/msbuild/modify-all-command-line-builds-in-entire-repo.md

*   https://gist.github.com/jeffkl/37b14b0601bafbdc9462afa8b288fadc#configuring-msbuild-command-line-arguments-directorybuildrsp


```
/Restore
/ConsoleLoggerParameters:Verbosity=Minimal;Summary
/FileLoggerParameters:Verbosity=Diagnostic
/BinaryLogger:..\..\custom.binlog
```




# Content Files

*   https://devblogs.microsoft.com/nuget/nuget-contentfiles-demystified/

*   https://blogit.create.pt/gustavobrito/2018/01/12/how-to-add-your-custom-content-files-into-a-nuget-package-for-visual-studio/



