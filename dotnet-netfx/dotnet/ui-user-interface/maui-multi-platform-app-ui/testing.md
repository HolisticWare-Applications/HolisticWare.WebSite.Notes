# Testing

testing.md

*   Unit testing

*   UI testing

    *   https://github.com/dotnet/maui/wiki/DeviceTests

        ```
        ./src/Core/tests/DeviceTests/Core.DeviceTests.csproj
        ./src/Controls/tests/DeviceTests/Controls.DeviceTests.csproj
        ./src/Graphics/tests/DeviceTests/Graphics.DeviceTests.csproj
        ./src/Essentials/test/DeviceTests/Essentials.DeviceTests.csproj
        ./src/BlazorWebView/tests/MauiDeviceTests/MauiBlazorWebView.DeviceTests.csproj
        ```

        
        ```pwsh
        dotnet tool restore
        ./build.ps1 `
            --target=dotnet-buildtasks `
            --configuration="Release" `
            --workloads=global
        ```

        ```pwsh
        dotnet tool restore
        dotnet cake `
            --target=dotnet-buildtasks `
            --configuration="Release" `
            --workloads=global
        ```

        ```bash
        dotnet tool restore
        dotnet cake \
            --target=dotnet-buildtasks \
            --configuration="Release" \
            --workloads=global
        ```

    *   https://github.com/dotnet/maui/wiki/UITests

        *   perequisites

            *   node

            *   appium

        ```bash
        brew install node
        ```

        ```bash
        sudo dotnet pwsh eng/scripts/appium-install.ps1   
        ```

        ```bash
        ./build.ps1 \
            --target=dotnet-buildtasks \
            --configuration="Release" \
            --workloads=global
        ```

        ```bash
        dotnet cake \
            --target=dotnet-buildtasks \
            --configuration="Release" \
            --workloads=global
        ```

        ```bash
        ./build.ps1 \
            --target=dotnet-samples \
            --verbosity=diagnostic \
            --configuration="Release" \
            --workloads=global \
            --usenuget=false \
            --catalyst

        ./build.ps1 \
            -Script eng/devices/catalyst.cake \
            --verbosity=diagnostic \
            --configuration="Release" \
            --apiversion="10.13" \
            --target=uitest \
            --device=mac
        ```

        ```bash
        dotnet cake \
            --target=dotnet-samples \
            --verbosity=diagnostic \
            --configuration="Release" \
            --workloads=global \
            --usenuget=false \
            --catalyst

        dotnet cake \
            -Script eng/devices/catalyst.cake \
            --verbosity=diagnostic \
            --configuration="Release" \
            --apiversion="10.13" \
            --target=uitest \
            --device=mac
        ```


        ```bash
        ./build.ps1 \
            --target=dotnet-samples \
            --verbosity=diagnostic \
            --configuration="Release" \
            --workloads=global \
            --usenuget=false \
            --android

        ./build.ps1 \
            -Script eng/devices/android.cake \
            --verbosity=diagnostic \
            --target=uitest \
            --configuration="Release"
        ```


        ```bash
        dotnet cake \
            --target=dotnet-samples \
            --configuration="Release" \
            --workloads=global \
            --ios \
            --usenuget=false

        dotnet cake \
            -Script eng/devices/ios.cake \
            --target=uitest \
            --configuration="Release"
        ```

        ```bash
        dotnet cake \
            --target=dotnet-samples \
            --verbosity=diagnostic \
            --configuration="Release" \
            --workloads=global \
            --usenuget=false \
            --android

        dotnet cake \
            -Script eng/devices/android.cake \
            --verbosity=diagnostic \
            --target=uitest \
            --configuration="Release"
        ```




49 = Java 5
50 = Java 6
51 = Java 7
52 = Java 8
53 = Java 9
54 = Java 10
55 = Java 11
56 = Java 12
57 = Java 13
58 = Java 14
59 = Java 15
60 = Java 16
61 = Java 17
62 = Java 18
63 = Java 19
64 = Java 20
65 = Java 21

/usr/libexec/java_home -V
echo "JAVA_HOME            = "$JAVA_HOME

export JAVA_HOME=`/usr/libexec/java_home -v 17`
export JAVA_HOME=/Library/Java/JavaVirtualMachines/microsoft-17.jdk/Contents/Home/

/usr/libexec/java_home -V


```bash
$HOME/Library/Android/sdk/cmdline-tools/latest/bin/avdmanager delete avd -n DEVICE_TESTS_EMULATOR
```

```bash
Error: LinkageError occurred while loading main class com.android.sdklib.tool.AvdManagerCli
	java.lang.UnsupportedClassVersionError: com/android/sdklib/tool/AvdManagerCli has been compiled by a more recent version of the Java Runtime (class file version 61.0), this version of the Java Runtime only recognizes class file versions up to 55.0
```


```bash
which avdmanager

```bash
/usr/local/bin/avdmanager
```


```bash
ll /usr/local/bin/avdmanager 
```

```bash
/usr/local/bin/avdmanager -> /usr/local/Caskroom/android-sdk/4333796/tools/bin/avdmanager
```

```bash
echo $PATH
```

```bash
/usr/local/sbin:/usr/local/share/dotnet:/usr/local/bin:/System/Cryptexes/App/usr/bin:/usr/bin:/bin:/usr/sbin:/sbin:/var/run/com.apple.security.cryptexd/codex.system/bootstrap/usr/local/bin:/var/run/com.apple.security.cryptexd/codex.system/bootstrap/usr/bin:/var/run/com.apple.security.cryptexd/codex.system/bootstrap/usr/appleinternal/bin:/Library/Apple/usr/bin:/usr/local/share/dotnet:~/.dotnet/tools:/Library/Frameworks/Mono.framework/Versions/Current/Commands:$HOME/.dotnet/tools:$HOME/.dotnet/tools/:/usr/local/share/dotnet:$HOME/.dotnet/tools/:/usr/local/bin/pwsh:/Applications/Visual Studio Code.app/Contents/Resources/app/bin:/usr/local/share/dotnet
```

```bash
echo $ANDROID_HOME
```

```bash
$HOME/Library/Android/sdk
```

```bash
echo $ANDROID_SDK_ROOT
```

```bash
$HOME/Library/Android/sdk
```


https://formulae.brew.sh/cask/android-commandlinetools

```
brew uninstall --cask android-commandlinetools
```

```
Error: Cask 'android-commandlinetools' is not installed.
```


```
cat /usr/local/Caskroom/android-sdk/4333796/tools/source.properties
```

```
Pkg.UserSrc=false
Pkg.Revision=26.1.1
Platform.MinPlatformToolsRev=20
Pkg.Dependencies=emulator
Pkg.Path=tools
Pkg.Desc=Android SDK Tools
```

```
cat /usr/local/Caskroom/android-sdk/4333796/cmdline-tools/latest/source.properties 
```

```
Pkg.Revision=11.0
Pkg.Path=cmdline-tools;11.0
Pkg.Desc=Android SDK Command-line Tools
```