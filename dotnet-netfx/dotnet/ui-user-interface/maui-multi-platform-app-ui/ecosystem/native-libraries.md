# MAUI Native Libraries

*   maui libs/armeabi

*   https://github.com/dotnet/maui/discussions/12279

*   https://github.com/dotnet/maui/discussions/12349

*   https://github.com/dotnet/maui/discussions/18459

*   https://github.com/dotnet/maui/discussions/20422

*   https://github.com/dotnet/maui/discussions/6872

*   https://stackoverflow.com/questions/64786837/what-path-to-put-executable-to-run-on-android-29

    *   https://stackoverflow.com/questions/64947902/how-to-split-linux-android-arm64-executable-into-small-and-large-parts

    *   https://stackoverflow.com/questions/65011941/how-do-i-make-shared-libs-extracted-by-android-for-aab

    *   https://stackoverflow.com/questions/5583487/hosting-an-executable-within-android-application

*   https://groups.google.com/g/android-ndk/c/JrA4sKHJpNU

```
android, windows, ios : https://github.com/xtuzy/Veldrid.SPIRV.NativeAsset
android, windows: https://github.com/xtuzy/ApplePDF
ios, mac: https://github.com/xtuzy/Veldrid.VK.NativeAsset
```

```xml
   <AndroidNativeLibrary Include="Platforms\Android\lib\x86\libRSQLite.so">
        <CopyToOutputDirectory>Always</CopyToOutputDirectory>
    </AndroidNativeLibrary>
    <AndroidNativeLibrary Include="Platforms\Android\lib\arm64-v8a\libRSQLite.so">
        <CopyToOutputDirectory>Always</CopyToOutputDirectory>
    </AndroidNativeLibrary>
```

ios

https://github.com/jsloop42/xcframework-build



https://stackoverflow.com/questions/71787585/create-bindings-to-native-libraries-net-maui

https://chuvak-pavel.medium.com/binding-native-libraries-in-maui-with-zendesk-examples-05a3b5ad5556

