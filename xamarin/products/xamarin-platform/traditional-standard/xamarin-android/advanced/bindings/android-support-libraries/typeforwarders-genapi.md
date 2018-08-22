# TypeForwarders with GenAPI

## Build customizations for TypeForwarders

Automatic generation of the *csproj files (MSBuild SDK style projects).

Build works, but `GenApi.exe` call fails.

`GenApi.exe` used from nuget `Microsoft.DotNet.BuildTools.GenAPI` (v  1.0.0-beta-00081) ap 
`PackageReference`:

```
    <ItemGroup>
      <PackageReference 
        Include="Microsoft.DotNet.BuildTools.GenAPI" Version="1.0.0-beta-00081"
        PrivateAssets="All" />
    </ItemGroup>
```

Adding this package reference automatically imports Targets which are executed automatically during the
Build target.

TODO: Find way to skip automatic targets.

Build results in following error:

```
EXEC : error : Unexpected qualifier: /Projects/X/AndroidSupportComponents-28.0.0-new/generated/com.android.support.support-v4/bin/Debug/monoandroid90/Xamarin.Android.Support.v4.dll. [/Projects/X/AndroidSupportComponents-28.0.0-new/generated/com.android.support.support-v4/com.android.support.support-v4.csproj]
  /Users/moljac/.nuget/packages/microsoft.dotnet.buildtools.genapi/1.0.0-beta-00081/build/Microsoft.DotNet.BuildTools.GenAPI.targets(27,5): error MSB3073: The command "mono "/Users/moljac/.nuget/packages/microsoft.dotnet.buildtools.genapi/1.0.0-beta-00081/build/../tools/GenApi.exe" "/Projects/X/AndroidSupportComponents-28.0.0-new/generated/com.android.support.support-v4/bin/Debug/monoandroid90/Xamarin.Android.Support.v4.dll" -libPath:"/Library/Frameworks/Mono.framework/External/xbuild-frameworks/MonoAndroid/v1.0/;/Library/Frameworks/Mono.framework/External/xbuild-frameworks/MonoAndroid/v9.0/;/Projects/X/AndroidSupportComponents-28.0.0-new/generated/android.arch.core.common/bin/Debug/monoandroid90/;/Projects/X/AndroidSupportComponents-28.0.0-new/generated/android.arch.core.runtime/bin/Debug/monoandroid90/;/Projects/X/AndroidSupportComponents-28.0.0-new/generated/android.arch.lifecycle.common/bin/Debug/monoandroid90/;/Projects/X/AndroidSupportComponents-28.0.0-new/generated/android.arch.lifecycle.livedata-core/bin/Debug/monoandroid90/;/Projects/X/AndroidSupportComponents-28.0.0-new/generated/android.arch.lifecycle.runtime/bin/Debug/monoandroid90/;/Projects/X/AndroidSupportComponents-28.0.0-new/generated/android.arch.lifecycle.viewmodel/bin/Debug/monoandroid90/;/Projects/X/AndroidSupportComponents-28.0.0-new/generated/com.android.support.support-annotations/bin/Debug/monoandroid90/;/Projects/X/AndroidSupportComponents-28.0.0-new/generated/com.android.support.asynclayoutinflater/bin/Debug/monoandroid90/;/Projects/X/AndroidSupportComponents-28.0.0-new/generated/com.android.support.collections/bin/Debug/monoandroid90/;/Projects/X/AndroidSupportComponents-28.0.0-new/generated/com.android.support.support-compat/bin/Debug/monoandroid90/;/Projects/X/AndroidSupportComponents-28.0.0-new/generated/com.android.support.coordinatorlayout/bin/Debug/monoandroid90/;/Projects/X/AndroidSupportComponents-28.0.0-new/generated/com.android.support.support-core-ui/bin/Debug/monoandroid90/;/Projects/X/AndroidSupportComponents-28.0.0-new/generated/com.android.support.support-core-utils/bin/Debug/monoandroid90/;/Projects/X/AndroidSupportComponents-28.0.0-new/generated/com.android.support.cursoradapter/bin/Debug/monoandroid90/;/Projects/X/AndroidSupportComponents-28.0.0-new/generated/com.android.support.customview/bin/Debug/monoandroid90/;/Projects/X/AndroidSupportComponents-28.0.0-new/generated/com.android.support.documentfile/bin/Debug/monoandroid90/;/Projects/X/AndroidSupportComponents-28.0.0-new/generated/com.android.support.drawerlayout/bin/Debug/monoandroid90/;/Projects/X/AndroidSupportComponents-28.0.0-new/generated/com.android.support.support-fragment/bin/Debug/monoandroid90/;/Projects/X/AndroidSupportComponents-28.0.0-new/generated/com.android.support.interpolator/bin/Debug/monoandroid90/;/Projects/X/AndroidSupportComponents-28.0.0-new/generated/com.android.support.loader/bin/Debug/monoandroid90/;/Projects/X/AndroidSupportComponents-28.0.0-new/generated/com.android.support.localbroadcastmanager/bin/Debug/monoandroid90/;/Projects/X/AndroidSupportComponents-28.0.0-new/generated/com.android.support.support-media-compat/bin/Debug/monoandroid90/;/Projects/X/AndroidSupportComponents-28.0.0-new/generated/com.android.support.print/bin/Debug/monoandroid90/;/Projects/X/AndroidSupportComponents-28.0.0-new/generated/com.android.support.slidingpanelayout/bin/Debug/monoandroid90/;/Projects/X/AndroidSupportComponents-28.0.0-new/generated/com.android.support.swiperefreshlayout/bin/Debug/monoandroid90/;/Projects/X/AndroidSupportComponents-28.0.0-new/generated/com.android.support.versionedparcelable/bin/Debug/monoandroid90/;/Projects/X/AndroidSupportComponents-28.0.0-new/generated/com.android.support.viewpager/bin/Debug/monoandroid90/;/Library/Frameworks/Mono.framework/External/xbuild-frameworks/MonoAndroid/v1.0/Facades/" -out:"/Projects/X/AndroidSupportComponents-28.0.0-new/generated/com.android.support.support-v4/bin/Debug/monoandroid90/Xamarin.Android.Support.v4.cs" " exited with code -1. 
  ```

  ## `GenApi.exe` CLI analysis/testing

NOTE: code is split just for readibility (in term `\` and newlines are removed).

```
mono \
"/Users/moljac/.nuget/packages/microsoft.dotnet.buildtools.genapi/1.0.0-beta-00081/build/../tools/GenApi.exe" \
-libPath:\
"
/Library/Frameworks/Mono.framework/External/xbuild-frameworks/MonoAndroid/v1.0/;/Library/Frameworks/Mono.framework/External/xbuild-frameworks/MonoAndroid/v9.0/;/Library/Frameworks/Mono.framework/External/xbuild-frameworks/MonoAndroid/v1.0/Facades/;
" /Projects/X/AndroidSupportComponents-28.0.0-new/generated/com.android.support.support-v4/bin/Debug/monoandroid90/Xamarin.Android.Support.v4.dll 
Error: Unexpected qualifier: /Projects/X/AndroidSupportComponents-28.0.0-new/generated/com.android.support.support-v4/bin/Debug/monoandroid90/Xamarin.Android.Support.v4.dll.
```

All combinations with `-libPath` lead to the same error:

```
Error: Unexpected qualifier: /Projects/X/AndroidSupportComponents-28.0.0-new/generated/com.android.support.support-v4/bin/Debug/monoandroid90/Xamarin.Android.Support.v4.dll.
```

```
```

```
```

```
```

```
```

```
```

```
```

