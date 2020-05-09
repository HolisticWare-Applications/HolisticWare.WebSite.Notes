# Modernizing samples 202005

modernizing-samples-202005.md

Modernizing samples

1.  migrated from `packages.config` to `<PackageReference />`

2.  turned on `D8`, `R8`, `aapt2` and `multidex` (for All Configurations)

```
    <AndroidUseAapt2>true</AndroidUseAapt2>
    <AndroidDexTool>d8</AndroidDexTool>
    <AndroidLinkTool>r8</AndroidLinkTool>
    <AndroidEnableMultiDex>true</AndroidEnableMultiDex>
```

3.  bumped minSdkVersion and targetSdkVersion

```    
<uses-sdk android:minSdkVersion="16" android:targetSdkVersion="29" />
```

```
    <TargetFrameworkVersion>v10.0</TargetFrameworkVersion>
```

4.  added `proguard.cfg`

```
    <ProguardConfiguration Include="proguard.cfg" />
```

```
-dontwarn public class com.google.android.gms.ads.** { *; }
-dontwarn public class com.google.android.gms.common.api.** { *; }
-dontwarn public class com.google.ads.mediation.customevent.** { *; }
-dontwarn public class com.google.ads.mediation.** { *; }
-dontwarn public class com.google.android.gms.ads.doubleclick.** { *; }
-dontwarn public class com.google.android.gms.ads.formats.** { *; }
-dontwarn public class com.google.android.gms.ads.** { *; }
-dontwarn public class com.google.android.gms.ads.reward.mediation.** { *; }

-keep public class com.google.android.gms.ads.** { *; }
-keep public class com.google.android.gms.common.api.** { *; }
-keep public class com.google.ads.mediation.customevent.** { *; }
-keep public class com.google.ads.mediation.** { *; }
-keep public class com.google.android.gms.ads.doubleclick.** { *; }
-keep public class com.google.android.gms.ads.formats.** { *; }
-keep public class com.google.android.gms.ads.** { *; }
-keep public class com.google.android.gms.ads.reward.mediation.** { *; }

-keep public class com.google.android.gms.ads.** {
   public *;
}

-keep public class com.google.ads.** {
   public *;
}
```

5.  some extras in csproj

```
    <AndroidLinkMode>SdkOnly</AndroidLinkMode>
    <AndroidR8IgnoreWarnings>false</AndroidR8IgnoreWarnings>
```
