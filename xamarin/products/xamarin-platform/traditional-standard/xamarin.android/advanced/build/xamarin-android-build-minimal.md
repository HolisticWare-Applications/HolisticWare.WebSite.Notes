# `xamarin-android` minimal build script

xamarin-android-build-minimal.md

Minimal script:

```
export BRANCH="migration-to-sdk-short-style-projects"
export BRANCH="master"
export ANDROID_SDK_ROOT=$HOME/Library/Developer/Xamarin/android-sdk-macosx
export AndroidSdkDirectory=
brew tap xamarin/xamarin-android-windeps    
git clone \
    -b $BRANCH \
    https://github.com/xamarin/xamarin-android.git
cd xamarin-android/
make prepare 
make
make create-installers
make all-tests
make run-all-tests
make run-nunit-tests
make run-apk-tests
```

```
[ -d ./xamarin-android/ ] && rm -fr ./xamarin-android/
```

```
stderr | rm: bin/BuildDebug/MonoInfo.props: No such file or directory
stderr | gmake[1]: [build-tools/scripts/mono.mk:64: bin/BuildDebug/MonoInfo.props] Error 1 (ignored)
```


```
env|grep -i android
```

```
ANDROID_HOME=/Users/moljac/Library/Developer/Xamarin/android-sdk-macosx
ANDROID_SDK_ROOT=/Users/moljac/Library/Developer/Xamarin/android-sdk-macosx
AndroidSdkDirectory=/Users/moljac/Library/Developer/Xamarin/android-sdk-macosx
ANDROID_NDK_HOME=/usr/local/bin
```

```
"/Users/Shared/Projects/d/X.tmp/xamarin-android-sdk-style-projects/Xamarin.Android.sln" (default target) (1:2) ->
"/Users/Shared/Projects/d/X.tmp/xamarin-android-sdk-style-projects/src/java-runtime/java-runtime.csproj" (default target) (2:7) ->
(_BuildJavaRuntimeJar target) -> 
  EXEC : Fatal error : Unable to find package java.lang in classpath or bootclasspath 
  [/Users/Shared/Projects/d/X.tmp/xamarin-android-sdk-style-projects/src/java-runtime/java-runtime.csproj]
  /Users/Shared/Projects/d/X.tmp/xamarin-android-sdk-style-projects/src/java-runtime/java-runtime.targets(53,3): 
  error MSB3073: 
  The command ""$HOME/android-toolchain/jdk-11/bin/javac" -source 1.8 -target 1.8 -d obj/Debug/release \
  -bootclasspath "$HOME/android-toolchain/sdk/platforms/android-19/android.jar":"/Users/Shared/Projects/d/X.tmp/xamarin-android-sdk-style-projects/bin/Debug/lib/xamarin.android/xbuild/Xamarin/Android/java_runtime.jar" \
  @obj/Debug/release.txt" exited with code 3. [/Users/Shared/Projects/d/X.tmp/xamarin-android-sdk-style-projects/src/java-runtime/java-runtime.csproj]
```

$HOME/android-toolchain/sdk/platforms/android-19/android.jar exist?

that’s given to -bootclasspath, and it should have a java.lang package in there…


$HOME/Library/Developer/Xamarin/jdk/microsoft_dist_openjdk_1.8.0.25

```
tree -d -L 2 $HOME/android-toolchain/
```

```
├── jdk-1.8
│   ├── bin
│   ├── include
│   ├── jre
│   └── lib
├── jdk-11
│   ├── bin
│   ├── conf
│   ├── include
│   ├── jmods
│   ├── legal
│   └── lib
├── ndk
│   ├── build
│   ├── meta
│   ├── platforms
│   ├── prebuilt
│   ├── python-packages
│   ├── shader-tools
│   ├── simpleperf
│   ├── sources
│   ├── sysroot
│   ├── toolchains
│   └── wrap.sh
└── temp
```

$HOME/Library/Developer/Xamarin/android-sdk-macosx


msbuild /restore \
    ./tools//vswhere/vswhere.csproj
msbuild /restore \
    ./tools//setup-windows/setup-windows.csproj
msbuild /restore \
    ./tools//jit-times/jit-times.csproj
msbuild /restore \
    ./tools//msbuild-fuzzer/msbuild-fuzzer.csproj
msbuild /restore \
    ./tools//javadoc2mdoc/javadoc2mdoc.csproj
msbuild /restore \
    ./tools//xabuild/xabuild.csproj


msbuild /restore \
    ./build-tools/api-xml-adjuster/api-xml-adjuster.csproj 
msbuild /restore \
    ./build-tools/remap-assembly-ref/remap-assembly-ref.csproj
msbuild /restore \
    ./build-tools/unix-distribution-setup/unix-distribution-setup.csproj
msbuild /restore \
    ./build-tools/create-pkg/create-pkg.csproj
msbuild /restore \
    ./build-tools/check-boot-times/check-boot-times.csproj
msbuild /restore \
    ./build-tools/conjure-xamarin-android-cecil/conjure-xamarin-android-cecil.csproj
msbuild /restore \
    ./build-tools/proprietary/proprietary.csproj
msbuild /restore \
    ./build-tools/Xamarin.Android.Tools.BootstrapTasks/Xamarin.Android.Tools.BootstrapTasks.csproj
msbuild /restore \
    ./build-tools/plots-to-appinsights/ProcessPlotCSVFile.csproj
msbuild /restore \
    ./build-tools/timing/timing.csproj
msbuild /restore \
    ./build-tools/create-vsix/create-vsix.csproj
msbuild /restore \
    ./build-tools/api-merge/api-merge.csproj
msbuild /restore \
    ./build-tools/api-xml-adjuster/api-xml-adjuster.csproj
msbuild /restore \
    ./build-tools/xa-prep-tasks/xa-prep-tasks.csproj
msbuild /restore \
    ./build-tools/jnienv-gen/jnienv-gen.csproj
msbuild /restore \
    ./build-tools/xaprepare/xaprepare/xaprepare.csproj


export COMMAND="dotnet msbuild /restore"
export COMMAND="code -n"


export COMMAND="msbuild /restore"

$COMMAND \


msbuild /restore \
    ./build-tools/remap-assembly-ref/remap-assembly-ref.csproj
msbuild /restore \
    ./build-tools/unix-distribution-setup/unix-distribution-setup.csproj
msbuild /restore \
    ./build-tools/create-pkg/create-pkg.csproj
msbuild /restore \
    ./build-tools/check-boot-times/check-boot-times.csproj
msbuild /restore \
    ./build-tools/conjure-xamarin-android-cecil/conjure-xamarin-android-cecil.csproj
$COMMAND \
    ./build-tools/proprietary/proprietary.csproj
$COMMAND \
    ./build-tools/Xamarin.Android.Tools.BootstrapTasks/Xamarin.Android.Tools.BootstrapTasks.csproj
$COMMAND \
    ./build-tools/plots-to-appinsights/ProcessPlotCSVFile.csproj
$COMMAND \
    ./build-tools/timing/timing.csproj
$COMMAND \
    ./build-tools/create-vsix/create-vsix.csproj
$COMMAND \
    ./build-tools/api-merge/api-merge.csproj
$COMMAND \
    ./build-tools/api-xml-adjuster/api-xml-adjuster.csproj
$COMMAND \
    ./build-tools/xa-prep-tasks/xa-prep-tasks.csproj
$COMMAND \
    ./build-tools/jnienv-gen/jnienv-gen.csproj
$COMMAND \
    ./build-tools/xaprepare/xaprepare/xaprepare.csproj