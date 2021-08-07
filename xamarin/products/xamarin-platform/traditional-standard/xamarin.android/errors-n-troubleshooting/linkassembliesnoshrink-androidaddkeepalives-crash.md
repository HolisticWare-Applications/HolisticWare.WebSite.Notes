# LinkAssembliesNoShrink/AndroidAddKeepAlives Crash

linkassembliesnoshrink-androidaddkeepalives-crash.md

```
/Users/Shared/Projects/d/X/GPS-FB/wsu-20210125/samples/com.google.android.gms/play-services-ads/AdMobSample.sln" (Build target) (1) ->
"/Users/Shared/Projects/d/X/GPS-FB/wsu-20210125/samples/com.google.android.gms/play-services-ads/AdMobSample/AdMobSample.csproj" (default target) (2) ->
(_LinkAssembliesNoShrink target) -> 
/Library/Frameworks/Mono.framework/External/xbuild/Xamarin/Android/Xamarin.Android.Common.targets(1328,3): error XALNS7001: System.NullReferenceException: Object reference not set to an instance of an object [/Users/Shared/Projects/d/X/GPS-FB/wsu-20210125/samples/com.google.android.gms/play-services-ads/AdMobSample/AdMobSample.csproj]
/Library/Frameworks/Mono.framework/External/xbuild/Xamarin/Android/Xamarin.Android.Common.targets(1328,3): error XALNS7001:   at Mono.Tuner.Extensions.GetAssembly (Mono.Linker.LinkContext context, System.String assembly_name) [0x00000] in <63bd6b3dbc794759a7324af2bc31647c>:0  [/Users/Shared/Projects/d/X/GPS-FB/wsu-20210125/samples/com.google.android.gms/play-services-ads/AdMobSample/AdMobSample.csproj]
/Library/Frameworks/Mono.framework/External/xbuild/Xamarin/Android/Xamarin.Android.Common.targets(1328,3): error XALNS7001:   at Mono.Tuner.Extensions.TryGetLinkedAssembly (Mono.Linker.LinkContext context, System.String name, Mono.Cecil.AssemblyDefinition& assembly) [0x00000] in <63bd6b3dbc794759a7324af2bc31647c>:0  [/Users/Shared/Projects/d/X/GPS-FB/wsu-20210125/samples/com.google.android.gms/play-services-ads/AdMobSample/AdMobSample.csproj]
/Library/Frameworks/Mono.framework/External/xbuild/Xamarin/Android/Xamarin.Android.Common.targets(1328,3): error XALNS7001:   at MonoDroid.Tuner.Extensions.GetAssembly (Mono.Linker.LinkContext context, System.String assemblyName) [0x00000] in <63bd6b3dbc794759a7324af2bc31647c>:0  [/Users/Shared/Projects/d/X/GPS-FB/wsu-20210125/samples/com.google.android.gms/play-services-ads/AdMobSample/AdMobSample.csproj]
/Library/Frameworks/Mono.framework/External/xbuild/Xamarin/Android/Xamarin.Android.Common.targets(1328,3): error XALNS7001:   at MonoDroid.Tuner.Extensions.GetType (Mono.Linker.LinkContext context, System.String assemblyName, System.String typeName) [0x00000] in <63bd6b3dbc794759a7324af2bc31647c>:0  [/Users/Shared/Projects/d/X/GPS-FB/wsu-20210125/samples/com.google.android.gms/play-services-ads/AdMobSample/AdMobSample.csproj]
/Library/Frameworks/Mono.framework/External/xbuild/Xamarin/Android/Xamarin.Android.Common.targets(1328,3): error XALNS7001:   at MonoDroid.Tuner.Extensions.GetMethod (Mono.Linker.LinkContext context, System.String ns, System.String typeName, System.String name, System.String[] parameters) [0x00000] in <63bd6b3dbc794759a7324af2bc31647c>:0  [/Users/Shared/Projects/d/X/GPS-FB/wsu-20210125/samples/com.google.android.gms/play-services-ads/AdMobSample/AdMobSample.csproj]
/Library/Frameworks/Mono.framework/External/xbuild/Xamarin/Android/Xamarin.Android.Common.targets(1328,3): error XALNS7001:   at MonoDroid.Tuner.AddKeepAlivesStep.AddKeepAlives (Mono.Cecil.TypeDefinition type) [0x0016e] in <63bd6b3dbc794759a7324af2bc31647c>:0  [/Users/Shared/Projects/d/X/GPS-FB/wsu-20210125/samples/com.google.android.gms/play-services-ads/AdMobSample/AdMobSample.csproj]
/Library/Frameworks/Mono.framework/External/xbuild/Xamarin/Android/Xamarin.Android.Common.targets(1328,3): error XALNS7001:   at MonoDroid.Tuner.AddKeepAlivesStep.AddKeepAlives (Mono.Cecil.AssemblyDefinition assembly) [0x0007f] in <63bd6b3dbc794759a7324af2bc31647c>:0  [/Users/Shared/Projects/d/X/GPS-FB/wsu-20210125/samples/com.google.android.gms/play-services-ads/AdMobSample/AdMobSample.csproj]
/Library/Frameworks/Mono.framework/External/xbuild/Xamarin/Android/Xamarin.Android.Common.targets(1328,3): error XALNS7001:   at Xamarin.Android.Tasks.LinkAssembliesNoShrink.RunTask () [0x00158] in <63bd6b3dbc794759a7324af2bc31647c>:0  [/Users/Shared/Projects/d/X/GPS-FB/wsu-20210125/samples/com.google.android.gms/play-services-ads/AdMobSample/AdMobSample.csproj]
/Library/Frameworks/Mono.framework/External/xbuild/Xamarin/Android/Xamarin.Android.Common.targets(1328,3): error XALNS7001:   at Xamarin.Android.Tasks.AndroidTask.Execute () [0x00000] in <63bd6b3dbc794759a7324af2bc31647c>:0  [/Users/Shared/Projects/d/X/GPS-FB/wsu-20210125/samples/com.google.android.gms/play-services-ads/AdMobSample/AdMobSample.csproj]

    5 Warning(s)
    1 Error(s)

Time Elapsed 00:00:03.24
Error: 	Cake.Core.CakeException: MSBuild: Process returned an error (exit code 1).
   at Cake.Core.Tooling.Tool`1.ProcessExitCode(Int32 exitCode) in C:\projects\cake\src\Cake.Core\Tooling\Tool.cs:line 134
   at Cake.Core.Tooling.Tool`1.Run(TSettings settings, ProcessArgumentBuilder arguments, ProcessSettings processSettings, Action`1 postAction) in C:\projects\cake\src\Cake.Core\Tooling\Tool.cs:line 109
   at Submission#0.MSBuild(FilePath solution, Action`1 configurator) in :line 1940
   at Submission#0.<<Initialize>>b__0_10() in /Users/Shared/Projects/d/X/GPS-FB/wsu-20210125/build.cake:line 605
   bl:	/Users/Shared/Projects/d/X/GPS-FB/wsu-20210125/output/AdMobSampleRelease.sample.binlog
   bl:	/Users/Shared/Projects/d/X/GPS-FB/wsu-20210125/output/failed/AdMobSampleRelease.sample.binlog
```

## Analyisis

Related issue:

    *   Fix LinkAssembliesNoShrink/AndroidAddKeepAlives crash
    
        *   https://github.com/xamarin/xamarin-android/pull/5563



## Workaround/[Re]solution

Added `Directory.Build.props` in the root of the `samples/` folder

```
<Project>

  <PropertyGroup>
    <AndroidLinkMode>SdkOnly</AndroidLinkMode>
  </PropertyGroup>

</Project>
```