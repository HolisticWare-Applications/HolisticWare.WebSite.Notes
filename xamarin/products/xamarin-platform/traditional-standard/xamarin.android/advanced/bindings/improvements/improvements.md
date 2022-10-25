# Improvements

improvements.md

is:pr AND not (author:moljac OR author:github-actions OR author:jpobst)

https://stackoverflow.com/questions/29136057/can-i-search-github-labels-with-logical-operator-or








```
<JavaDocPaths>
```

*   https://docs.microsoft.com/en-us/xamarin/android/platform/binding-java-library/customizing-bindings/

*   https://docs.microsoft.com/en-us/xamarin/android/platform/binding-java-library/customizing-bindings/naming-parameters-with-javadoc

*   https://mobileprogrammerblog.wordpress.com/2017/11/20/java-library-binding-with-javadocs-for-xamarin-android/

*   https://forums.xamarin.com/discussion/11121/including-javadocs-in-a-binding-library

*   https://stackoverflow.com/questions/37449464/how-can-i-integrate-javadoc-into-a-xamarin-java-binding-library

```
<PropertyGroup>
  <JavaDocPaths>JavaDocs/textjustify-android-2.1.6-javadoc</JavaDocPaths>
</PropertyGroup>
```

*   https://github.com/osmdroid/OsmdroidXamarin/blob/master/OsmdroidAndroidBinding/OsmdroidAndroidBinding.csproj#L34-L36

```
  <PropertyGroup>
    <Java7DocPaths>JavaDocs\osmdroid-android-5.0.1-javadoc</Java7DocPaths>
  </PropertyGroup>
````

*   https://github.com/osmdroid/OsmdroidXamarin/tree/master/OsmdroidAndroidBinding/JavaDocs/osmdroid-android-5.0.1-javadoc


## Deprecated `Java7DocPaths`

```xml
<PropertyGroup>
    <Java7DocPaths>JavaDocs\javadoc\</Java7DocPaths>
</PropertyGroup>
<PropertyGroup>
    <JavaDocPaths>JavaDocs\javadoc\</JavaDocPaths>
</PropertyGroup>
```

*   https://gist.github.com/JonDouglas/dda6d8ace7d071b0e8cb

```
  <ItemGroup>
    <JavaDocJar Include="Jars\msal-2.0.2-javadoc.jar" />
  </ItemGroup>
```
