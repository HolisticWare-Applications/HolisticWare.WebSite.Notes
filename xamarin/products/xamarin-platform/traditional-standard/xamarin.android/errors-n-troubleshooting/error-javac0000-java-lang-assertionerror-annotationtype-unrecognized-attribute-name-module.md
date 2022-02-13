# error JAVAC0000: java.lang.AssertionError: annotationType() :  unrecognized Attribute name MODULE 

error-javac0000-java-lang-assertionerror-annotationtype-unrecognized-attribute-name-module.md

```
    "/Users/Shared/Projects/d/X/AX/template-sets-guava/samples/BuildAll/BuildAll.sln" (Build target) (1:2) ->
    "/Users/Shared/Projects/d/X/AX/template-sets-guava/samples/BuildAll/BuildAll/BuildAll.csproj" (default target) (2:6) ->
    (_CompileJava target) -> 
        /Library/Frameworks/Mono.framework/External/xbuild/Xamarin/Android/Xamarin.Android.Common.targets(1717,3): error JAVAC0000: java.lang.AssertionError: annotationType() :  unrecognized Attribute name MODULE (class com.sun.tools.javac.util.SharedNameTable$NameImpl) [/Users/Shared/Projects/d/X/AX/template-sets-guava/samples/BuildAll/BuildAll/BuildAll.csproj]

70 Warning(s)
1 Error(s)
```

For Visual studio for mac: Download and install java 11 from Microsoft, like this location: 

https://visualstudio.microsoft.com/

https://download.visualstudio.microsoft.com/download/pr/0df4ef07-5a9a-4fc2-8ae6-0b6731685d25/fb07059f75bd3916b490f2d266bc94c0/microsoft-jdk-11.0.12.7.1-macos-x64.pkg

echo $JAVA_HOME

```
/Library/Java/JavaVirtualMachines/microsoft-11.jdk/Contents/Home
```

in VS4Mc after update in "Tools /+ SDK Manager /+ Locations /+ Android /+ Java SDK (JDK) Location"  was

```
/Library/Java/JavaVirtualMachines/temurin-8.jdk/Contents/Home
```

set it to:

```
/Library/Java/JavaVirtualMachines/microsoft-11.jdk/Contents/Home
```


