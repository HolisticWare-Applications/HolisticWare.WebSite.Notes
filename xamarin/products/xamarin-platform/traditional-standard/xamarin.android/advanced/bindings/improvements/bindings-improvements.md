# Bindings improvements

bindings-improvements.md

* https://docs.microsoft.com/en-us/xamarin/android/deploy-test/building-apps/build-items#javadocjar

```
    <JavaDocJar Include="Jars\msal-2.0.2-javadoc.jar" />
```

*   https://dl.google.com/android/maven2/androidx/biometric/biometric/1.1.0/biometric-1.1.0-sources.jar

*   https://docs.microsoft.com/en-us/xamarin/android/deploy-test/building-apps/build-items#javasourcejar


```xml
  <ItemGroup>
    <JavaDocJar Include="Jars\mixpanel-android-javadoc.jar" />
  </ItemGroup>
  <ItemGroup>
    <JavaSourceJar Include="Jars\mixpanel-android-sources.jar" />
  </ItemGroup>
```


## Warnings

```
warning BG8102: Class 'X' has unknown base type 'y'
warning BG8103: Class 'X' has invalid base type 'y'
warning BG8400: Unexpected field type `X` (Y)
warning BG8401: Skipping 'X' due to a duplicate method name
warning BG8501: No event name provided in 'X'.
warning BG8503: Invalidating 'X' and all its nested types because some of its methods were invalid.
warning BG8604: Could not find top ancestor type 'X' for nested type 'Y'
warning BG8701: Invalid return type 'x' for member 'y'
warning BG8800: Unknown parameter type 'X' for member 'Y'
warning BG8A01: Metadata.xml element 'XPATH' matched no nodes
warning BG8C00: Could not find base interface
```

```
source/com.google.android.gms/play-services-tasks/Additions/Task.cs(51,6): 
warning CS0618: 
'PreserveAttribute' is obsolete: 
'Please use [System.Diagnostics.CodeAnalysis.DynamicDependencyAttribute]' 
[./GPS-FB-MLKit/mu-20220215-split-fb/generated/com.google.android.gms.play-services-tasks/com.google.android.gms.play-services-tasks.csproj]
```
