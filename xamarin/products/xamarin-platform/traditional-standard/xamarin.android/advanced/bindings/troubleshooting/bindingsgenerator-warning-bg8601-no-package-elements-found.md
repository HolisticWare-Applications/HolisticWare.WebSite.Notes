# BINDINGSGENERATOR : warning BG8601: No '<package>' elements found.

bindingsgenerator-warning-bg8601-no-package-elements-found.md

CI


downgrade .NET SDK 6.0.301 to 6.0.300

pr-441-compose-stable

```
"C:\a\_work\1\s\samples\BuildAll\BuildAllDotNet\BuildAllDotNet.csproj" (default target) (4:6) ->
(_CompileJava target) -> 
    obj\Release\net6.0-android\android\src\mono\com\android\installreferrer\api\InstallReferrerStateListenerImplementor.java(8,34): 
    javac.exe error JAVAC0000:  
    error: 
    package 
        com.android.installreferrer.api
    does not exist 
    [C:\a\_work\1\s\samples\BuildAll\BuildAllDotNet\BuildAllDotNet.csproj]
obj\Release\net6.0-android\android\src\mono\com\android\installreferrer\api\InstallReferrerStateListenerImplementor.java(8,34): 
    javac.exe error JAVAC0000: 		
        com.android.installreferrer.api.InstallReferrerStateListener
[C:\a\_work\1\s\samples\BuildAll\BuildAllDotNet\BuildAllDotNet.csproj]
obj\Release\net6.0-android\android\src\mono\com\android\installreferrer\api\InstallReferrerStateListenerImplementor.java(8,34): 
javac.exe error JAVAC0000:  
[C:\a\_work\1\s\samples\BuildAll\BuildAllDotNet\BuildAllDotNet.csproj]

75 Warning(s)
1 Error(s)
```
