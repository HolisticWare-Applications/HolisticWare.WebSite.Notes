# Size

size.md

*   https://www.reddit.com/r/dotnetMAUI/comments/1wj6uco/maui_android_reduced_dex_size_from_16mb_under/

*   https://android.googlesource.com/platform/sdk/+/master/files/proguard-android-optimize.txt

*   https://developer.android.com/topic/performance/app-optimization/enable-app-optimization#full-mode


1. Custom ProGuard / R8 config files

Platforms/Android/proguard-xamarin.cfg

/.agents/skills/dotnet-android-optimizations-size/references/proguard-dotnet-android-optimize-size.cfg

```
# file
#  proguard-dotnet-android-optimize-size.cfg
# Location
#   MAUI App project
#       ./Platforms/Android/proguard-dotnet-android-optimize-size.cfg
# MSBuild Action
#

# Based on Microsoft.Android.Sdk proguard_xamarin.cfg with -dontobfuscate
# removed so R8 can rename unkept DEX. JNI/ACW keep rules below are unchanged.
-keep class android.support.multidex.MultiDexApplication { <init>(); }
-keep class net.dot.jni.** { *; <init>(); }
-keep class mono.MonoRuntimeProvider* { *; <init>(...); }
-keep class mono.MonoPackageManager { *; <init>(...); }
-keep class mono.MonoPackageManager_Resources { *; <init>(...); }
-keep class mono.android.** { *; <init>(...); }
-keep class mono.java.** { *; <init>(...); }
-keep class mono.javax.** { *; <init>(...); }
-keep class net.dot.jni.ManagedPeer { *; <init>(...); }
-keep class xamarin.android.net.ServerCertificateCustomValidator_TrustManager { *; <init>(...); }
-keep class xamarin.android.net.ServerCertificateCustomValidator_TrustManager_FakeSSLSession { *; <init>(...); }
-keep class xamarin.android.net.ServerCertificateCustomValidator_AlwaysAcceptingHostnameVerifier { *; <init>(...); }
-keep class android.runtime.** { <init>(...); }
-keep class assembly_mono_android.android.runtime.** { <init>(...); }
# hash for android.runtime and assembly_mono_android.android.runtime.
-keep class md52ce486a14f4bcd95899665e9d932190b.** { *; <init>(...); }
-keepclassmembers class md52ce486a14f4bcd95899665e9d932190b.** { *; <init>(...); }
# .NET runtime — loaded by name from managed code (JNIEnv.FindClass).
-keep class net.dot.android.ApplicationRegistration { *; }
-keep class net.dot.android.** { *; }
# C#/JNI looks up Java enum constants by name (Lifecycle.State.DESTROYED, etc.).
-keepclassmembers enum * { *; }
-keep class androidx.lifecycle.Lifecycle$State { *; }
-keep class androidx.lifecycle.** { *; }
# XML inflation and AppCompat look these types up by name.
-keep class androidx.appcompat.widget.FitWindowsFrameLayout { *; }
-keep class androidx.appcompat.widget.FitWindowsLinearLayout { *; }
-keep class androidx.appcompat.** { *; }
-keep class androidx.core.app.CoreComponentFactory { *; }
-keep class androidx.core.** { *; }
-keep class com.google.android.material.** { *; }
-keep public class * extends android.view.View { *; }
# Android's template misses fluent setters...
-keepclassmembers class * extends android.view.View {
   *** set*(...);
}
# also misses those inflated custom layout stuff from xml...
-keepclassmembers class * extends android.view.View {
   <init>(android.content.Context,android.util.AttributeSet);
   <init>(android.content.Context,android.util.AttributeSet,int);
}
-ignorewarnings
-keepattributes SourceFile
-keepattributes LineNumberTable
```

.agents/skills/dotnet-android-optimizations-size/references/proguard-android-optimize.txt

```
# Location
#   MAUI App project
#       ./Platforms/Android/proguard-android-optimize.txt
# MSBuild Action
#

# Based on Microsoft.Android.Sdk proguard-android.txt with -dontoptimize
# removed so R8 can optimize DEX. Keep rules below match the SDK file.
-allowaccessmodification
# Preserve some attributes that may be required for reflection.
-keepattributes AnnotationDefault,
                EnclosingMethod,
                InnerClasses,
                RuntimeVisibleAnnotations,
                RuntimeVisibleParameterAnnotations,
                RuntimeVisibleTypeAnnotations,
                Signature
-keep public class com.google.vending.licensing.ILicensingService
-keep public class com.android.vending.licensing.ILicensingService
-keep public class com.google.android.vending.licensing.ILicensingService
-dontnote com.android.vending.licensing.ILicensingService
-dontnote com.google.vending.licensing.ILicensingService
-dontnote com.google.android.vending.licensing.ILicensingService
# For native methods, see https://www.guardsquare.com/manual/configuration/examples#native
-keepclasseswithmembernames,includedescriptorclasses class * {
    native <methods>;
}
# Keep setters in Views so that animations can still work.
-keepclassmembers public class * extends android.view.View {
    void set*(***);
    *** get*();
}
# We want to keep methods in Activity that could be used in the XML attribute onClick.
-keepclassmembers class * extends android.app.Activity {
    public void *(android.view.View);
}
# For enumeration classes, see https://www.guardsquare.com/manual/configuration/examples#enumerations
-keepclassmembers enum * {
    public static **[] values();
    public static ** valueOf(java.lang.String);
}
-keepclassmembers class * implements android.os.Parcelable {
    public static final ** CREATOR;
}
# Preserve annotated Javascript interface methods.
-keepclassmembers class * {
    .webkit.JavascriptInterface <methods>;
}
# The support libraries contains references to newer platform versions.
# Don't warn about those in case this app is linking against an older
# platform version. We know about them, and they are safe.
-dontnote android.support.**
-dontnote androidx.**
-dontwarn android.support.**
-dontwarn androidx.**
# Understand the  support annotation.
-keep class android.support.annotation.Keep
-keep .support.annotation.Keep class * {*;}
-keepclasseswithmembers class * {
    .support.annotation.Keep <methods>;
}
-keepclasseswithmembers class * {
    .support.annotation.Keep <fields>;
}
-keepclasseswithmembers class * {
    .support.annotation.Keep <init>(...);
}
# These classes are duplicated between android.jar and org.apache.http.legacy.jar.
-dontnote org.apache.http.**
-dontnote android.net.http.**
# These classes are duplicated between android.jar and core-lambda-stubs.jar.
-dontnote java.lang.invoke.**
```

2. csproj changes

```xml
<Project>
    <PropertyGroup 
        Condition="'$(Configuration)' == 'Release' And $([MSBuild]::GetTargetPlatformIdentifier('$(TargetFramework)')) == 'android'">
        <!--
        R8 shrinks Java/DEX. SDK configs bake in -dontoptimize / -dontobfuscate; EnableR8Optimization swaps those files.
        -->
        <AndroidLinkTool>r8</AndroidLinkTool>
        <PublishTrimmed>true</PublishTrimmed>
        <!--
        Strip unused developer & diagnostic code from the runtime
        -->
        <EnableMetaExtensions>false</EnableMetaExtensions>
        <MetadataUpdaterSupport>false</MetadataUpdaterSupport>
        <EventSourceSupport>false</EventSourceSupport>
        <HttpActivityPropagationSupport>false</HttpActivityPropagationSupport>
        <!--
        Force R8 to load our JNI keep file even if the AfterTargets swap is not applied.
        -->
        <AndroidR8ExtraArguments>
            --pg-conf "$(MSBuildThisFileDirectory)/Platforms/Android/proguard-dotnet-android-optimize-size.cfg"
        </AndroidR8ExtraArguments>
    </PropertyGroup>

    <ItemGroup Condition="$([MSBuild]::GetTargetPlatformIdentifier('$(TargetFramework)')) == 'android'">
        <ProguardConfiguration Include="Platforms/Android/proguard-dotnet-android-optimize-size.cfg" />
        <ProguardConfiguration Include="Platforms/Android/proguard-android-optimize.txt" />
    </ItemGroup>

    <!-- 
    SDK configs bake in -dontoptimize / -dontobfuscate; those flags are sticky, so swap the files after the SDK builds 
    the R8 config list. 
    -->
    <Target Name="EnableR8Optimization"
            AfterTargets="_CalculateProguardConfigurationFiles"
            Condition="'$(Configuration)' == 'Release' And $([MSBuild]::GetTargetPlatformIdentifier('$(TargetFramework)')) == 'android'">
        <MakeDir Directories="$(IntermediateOutputPath)proguard" />
        <ItemGroup>
            <_R8ExtraLines 
                Include="-printmapping &quot;$(AndroidProguardMappingFile)&quot;" Condition="'$(AndroidProguardMappingFile)' != ''" 
                />
        </ItemGroup>
        <WriteLinesToFile 
            File="$(IntermediateOutputPath)proguard/r8_extras.cfg"
            Lines="@(_R8ExtraLines)"
            Overwrite="true"
            Encoding="UTF-8"
            Condition="'$(AndroidProguardMappingFile)' != ''" 
            />
        <ItemGroup>
            <_ProguardConfiguration 
                Remove="@(_ProguardConfiguration)"
                Condition="'%(Filename)' == 'proguard-android'" 
                />
            <_ProguardConfiguration
                Remove="@(_ProguardConfiguration)"
                Condition="'%(Filename)' == 'proguard_xamarin'"
                />
            <_ProguardConfiguration 
                Include="$(MSBuildThisFileDirectory)/Platforms/Android/proguard-android-optimize.txt" />
            <_ProguardConfiguration
                Include="$(MSBuildThisFileDirectory)/Platforms/Android/proguard-dotnet-android-optimize-size.cfg" />
            <_ProguardConfiguration 
                Include="$(IntermediateOutputPath)proguard\r8_extras.cfg"
                Condition="'$(AndroidProguardMappingFile)' != ''" 
                />
        </ItemGroup>
    </Target>
</Project>
```

Result
Uncompressed DEX went from ~16 MB → under 10 MB.

The key insight is that the Microsoft.Android.Sdk ProGuard files ship with -dontoptimize and -dontobfuscate. Those flags are sticky, so you have to actively replace the default config files after the SDK calculates the ProGuard configuration list.

Hope this helps someone else who was stuck on the same Google Play warning. Happy to answer questions or hear if anyone improves on this approach.