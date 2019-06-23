# Coordinator Layout

coordinatorlayout.md

```
/Library/Frameworks/Mono.framework/External/xbuild/Xamarin/Android/Xamarin.Android.Common.targets(2,2): 
Error MSB4018: The "ConvertResourcesCases" task failed unexpectedly.
System.IO.IOException: 
    Could not create file "/var/folders/xt/ytq9wfqd2y78kx1ks7z36mrr0000gn/T/tmp7754bf6a.tmp" 
    or 
    "/Projects/hw-tools/Xamarin.Android.Samples/samples/Android.Support/CoordinatorLayout/cstew/obj/Debug/lp/18/jl/res/drawable/ic_mtrl_chip_checked_black.xml". 
    File already exists.
  at System.IO.File.Copy (System.String sourceFileName, System.String destFileName, System.Boolean overwrite) [0x00193] in /Users/builder/jenkins/workspace/build-package-osx-mono/2018-08/external/bockbuild/builds/mono-x64/mcs/class/corlib/System.IO/File.cs:111 
  at Xamarin.Android.Tools.Files.CopyIfChanged (System.String source, System.String destination) [0x00027] in <f064f1381131417c9bea7824c6ebfdf2>:0 
  at Xamarin.Android.Tasks.MonoAndroidHelper.CopyIfChanged (System.String source, System.String destination) [0x00000] in <f064f1381131417c9bea7824c6ebfdf2>:0 
  at Xamarin.Android.Tasks.ConvertResourcesCases.FixupResources (Microsoft.Build.Framework.ITaskItem item, System.Collections.Generic.Dictionary`2[TKey,TValue] acwMap) [0x00248] in <f064f1381131417c9bea7824c6ebfdf2>:0 
  at Xamarin.Android.Tasks.ConvertResourcesCases.FixupResources (System.Collections.Generic.Dictionary`2[TKey,TValue] acwMap) [0x0000f] in <f064f1381131417c9bea7824c6ebfdf2>:0 
  at Xamarin.Android.Tasks.ConvertResourcesCases.Execute () [0x000a7] in <f064f1381131417c9bea7824c6ebfdf2>:0 
  at Microsoft.Build.BackEnd.TaskExecutionHost.Microsoft.Build.BackEnd.ITaskExecutionHost.Execute () [0x00023] in /Users/builder/jenkins/workspace/build-package-osx-mono/2018-08/external/bockbuild/builds/msbuild-15/src/Build/BackEnd/TaskExecutionHost/TaskExecutionHost.cs:573 
  at Microsoft.Build.BackEnd.TaskBuilder.ExecuteInstantiatedTask (Microsoft.Build.BackEnd.ITaskExecutionHost taskExecutionHost, Microsoft.Build.BackEnd.Logging.TaskLoggingContext taskLoggingContext, Microsoft.Build.BackEnd.TaskHost taskHost, Microsoft.Build.BackEnd.ItemBucket bucket, Microsoft.Build.BackEnd.TaskExecutionMode howToExecuteTask) [0x00212] in /Users/builder/jenkins/workspace/build-package-osx-mono/2018-08/external/bockbuild/builds/msbuild-15/src/Build/BackEnd/Components/RequestBuilder/TaskBuilder.cs:784  
```