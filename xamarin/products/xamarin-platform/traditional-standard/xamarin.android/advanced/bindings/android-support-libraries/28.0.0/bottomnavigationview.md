# BottomNavigationView

bottomnavigationview.md

*   https://github.com/hitherejoe/BottomNavigationViewSample

*   https://github.com/hitherejoe/BottomNavigationViewSample.git

*   https://github.com/hitherejoe/BottomNavigationViewSample/archive/master.zip

*   https://medium.com/@hitherejoe/exploring-the-android-design-support-library-bottom-navigation-drawer-548de699e8e0

*   https://github.com/vipulasri/Bottom-Navigation-View-Sample

*   https://github.com/vipulasri/Bottom-Navigation-View-Sample.git

*   https://github.com/vipulasri/Bottom-Navigation-View-Sample/archive/master.zip

*   https://github.com/NealRDC/Android-BottomNavigationView-example

*   https://github.com/NealRDC/Android-BottomNavigationView-example.git

*   https://github.com/NealRDC/Android-BottomNavigationView-example/archive/master.zip

```
/Library/Frameworks/Mono.framework/External/xbuild/Xamarin/Android/Xamarin.Android.Common.targets(2,2): 
Error MSB4018: 
The "ResolveLibraryProjectImports" task failed unexpectedly.
Xamarin.Tools.Zip.ZipIOException: File /Projects/HW/Xamarin.Android.Samples/samples/Android.Support/BottomNavigationView/obj/Debug/lp/21/__AndroidLibraryProjects__.zip does not exist and file creation wasn't requested
  at Xamarin.Tools.Zip.ZipArchive.Open (System.String path, System.IO.FileMode mode, System.String defaultExtractionDir, System.Boolean strictConsistencyChecks, Xamarin.Tools.Zip.IPlatformOptions options) [0x00141] in <fb94026dc5d54888a70189de0cf51027>:0 
  at Xamarin.Android.Tools.Files.ReadZipFile (System.String filename, System.Boolean strictConsistencyChecks) [0x00000] in <0669e22a1ea34a33ae956490b400f14d>:0 
  at Xamarin.Android.Tasks.MonoAndroidHelper.ReadZipFile (System.String filename) [0x00000] in <0669e22a1ea34a33ae956490b400f14d>:0 
  at Xamarin.Android.Tasks.ResolveLibraryProjectImports.Extract (Java.Interop.Tools.Cecil.DirectoryAssemblyResolver res, System.Collections.Generic.ICollection`1[T] jars, System.Collections.Generic.ICollection`1[T] resolvedResourceDirectories, System.Collections.Generic.ICollection`1[T] resolvedAssetDirectories, System.Collections.Generic.ICollection`1[T] resolvedEnvironments) [0x00521] in <0669e22a1ea34a33ae956490b400f14d>:0 
  at Xamarin.Android.Tasks.ResolveLibraryProjectImports.Execute () [0x000fc] in <0669e22a1ea34a33ae956490b400f14d>:0 
  at Microsoft.Build.BackEnd.TaskExecutionHost.Microsoft.Build.BackEnd.ITaskExecutionHost.Execute () [0x00023] in /Users/builder/jenkins/workspace/build-package-osx-mono/2018-06/external/bockbuild/builds/msbuild-15/src/Build/BackEnd/TaskExecutionHost/TaskExecutionHost.cs:573 
  at Microsoft.Build.BackEnd.TaskBuilder.ExecuteInstantiatedTask (Microsoft.Build.BackEnd.ITaskExecutionHost taskExecutionHost, Microsoft.Build.BackEnd.Logging.TaskLoggingContext taskLoggingContext, Microsoft.Build.BackEnd.TaskHost taskHost, Microsoft.Build.BackEnd.ItemBucket bucket, Microsoft.Build.BackEnd.TaskExecutionMode howToExecuteTask) [0x001f6] in /Users/builder/jenkins/workspace/build-package-osx-mono/2018-06/external/bockbuild/builds/msbuild-15/src/Build/BackEnd/Components/RequestBuilder/TaskBuilder.cs:784  
 ```


 ``` 
/Library/Frameworks/Mono.framework/External/xbuild/Xamarin/Android/Xamarin.Android.Common.targets(2,2): 
Error MSB4018: The "ConvertResourcesCases" task failed unexpectedly.
System.IO.IOException: Could not create file "/var/folders/xt/ytq9wfqd2y78kx1ks7z36mrr0000gn/T/tmp1269a091.tmp" or "/Projects/HW/Xamarin.Android.Samples/samples/Android.Support/BottomNavigationView/obj/Debug/lp/18/jl/res/layout/design_navigation_item_header.xml". File already exists.
  at System.IO.File.Copy (System.String sourceFileName, System.String destFileName, System.Boolean overwrite) [0x00193] in /Users/builder/jenkins/workspace/build-package-osx-mono/2018-06/external/bockbuild/builds/mono-x64/mcs/class/corlib/System.IO/File.cs:111 
  at Xamarin.Android.Tools.Files.CopyIfChanged (System.String source, System.String destination) [0x00027] in <0669e22a1ea34a33ae956490b400f14d>:0 
  at Xamarin.Android.Tasks.MonoAndroidHelper.CopyIfChanged (System.String source, System.String destination) [0x00000] in <0669e22a1ea34a33ae956490b400f14d>:0 
  at Xamarin.Android.Tasks.ConvertResourcesCases.FixupResources (Microsoft.Build.Framework.ITaskItem item, System.Collections.Generic.Dictionary`2[TKey,TValue] acwMap) [0x00248] in <0669e22a1ea34a33ae956490b400f14d>:0 
  at Xamarin.Android.Tasks.ConvertResourcesCases.FixupResources (System.Collections.Generic.Dictionary`2[TKey,TValue] acwMap) [0x0000f] in <0669e22a1ea34a33ae956490b400f14d>:0 
  at Xamarin.Android.Tasks.ConvertResourcesCases.Execute () [0x000a7] in <0669e22a1ea34a33ae956490b400f14d>:0 
  at Microsoft.Build.BackEnd.TaskExecutionHost.Microsoft.Build.BackEnd.ITaskExecutionHost.Execute () [0x00023] in /Users/builder/jenkins/workspace/build-package-osx-mono/2018-06/external/bockbuild/builds/msbuild-15/src/Build/BackEnd/TaskExecutionHost/TaskExecutionHost.cs:573 
  at Microsoft.Build.BackEnd.TaskBuilder.ExecuteInstantiatedTask (Microsoft.Build.BackEnd.ITaskExecutionHost taskExecutionHost, Microsoft.Build.BackEnd.Logging.TaskLoggingContext taskLoggingContext, Microsoft.Build.BackEnd.TaskHost taskHost, Microsoft.Build.BackEnd.ItemBucket bucket, Microsoft.Build.BackEnd.TaskExecutionMode howToExecuteTask) [0x001f6] in /Users/builder/jenkins/workspace/build-package-osx-mono/2018-06/external/bockbuild/builds/msbuild-15/src/Build/BackEnd/Components/RequestBuilder/TaskBuilder.cs:784  (MSB4018) (BottomNavigationView)
```



```
> am start -n "com.holisticware.bottomnavigationviewsample/md5389a40c2a1fc5c16911e9344cd3fce27.MainActivity"
> Starting: Intent { cmp=com.holisticware.bottomnavigationviewsample/md5389a40c2a1fc5c16911e9344cd3fce27.MainActivity }
Error type 3
Error: Activity class {com.holisticware.bottomnavigationviewsample/md5389a40c2a1fc5c16911e9344cd3fce27.MainActivity} does not exist.
```

```
am start -n ".MainActivity"
> Starting: Intent { cmp=.MainActivity }
Error type 3
Error: Activity class {.MainActivity} does not exist.
```


Could not connect to the debugger.

*   https://developercommunity.visualstudio.com/content/problem/209829/cannot-connect-debugger-after-update-03062018.html

*   https://developercommunity.visualstudio.com/content/problem/333737/vusual-studio-mac-could-not-connect-to-the-debugge.html

launching from emulator works.


    1.  Rebuild 
    2.  nuke `bin/` and `obj/`
    3.  restart IDE 
    4.  reset (factory) simulator
    5.  check logs Debug > Open System Log menu
    5.  restart Computer and device (Android/iOS)

```
01-03 14:39:37.000: E/AndroidRuntime(9022): FATAL EXCEPTION: main
01-03 14:39:37.000: E/AndroidRuntime(9022): Process: BottomNavigationViewSample.BottomNavigationViewSample, PID: 9022
01-03 14:39:37.000: E/AndroidRuntime(9022): java.lang.RuntimeException: Unable to start activity ComponentInfo{BottomNavigationViewSample.BottomNavigationViewSample/md5389a40c2a1fc5c16911e9344cd3fce27.MainActivity}: android.view.InflateException: Binary XML file line #1: Binary XML file line #1: Error inflating class android.support.design.widget.BottomNavigationView
01-03 14:39:37.000: E/AndroidRuntime(9022): 	at android.app.ActivityThread.performLaunchActivity(ActivityThread.java:2913)
01-03 14:39:37.000: E/AndroidRuntime(9022): 	at android.app.ActivityThread.handleLaunchActivity(ActivityThread.java:3048)
01-03 14:39:37.000: E/AndroidRuntime(9022): 	at android.app.servertransaction.LaunchActivityItem.execute(LaunchActivityItem.java:78)
01-03 14:39:37.000: E/AndroidRuntime(9022): 	at android.app.servertransaction.TransactionExecutor.executeCallbacks(TransactionExecutor.java:108)
01-03 14:39:37.000: E/AndroidRuntime(9022): 	at android.app.servertransaction.TransactionExecutor.execute(TransactionExecutor.java:68)
01-03 14:39:37.000: E/AndroidRuntime(9022): 	at android.app.ActivityThread$H.handleMessage(ActivityThread.java:1808)
01-03 14:39:37.000: E/AndroidRuntime(9022): 	at android.os.Handler.dispatchMessage(Handler.java:106)
01-03 14:39:37.000: E/AndroidRuntime(9022): 	at android.os.Looper.loop(Looper.java:193)
01-03 14:39:37.000: E/AndroidRuntime(9022): 	at android.app.ActivityThread.main(ActivityThread.java:6669)
01-03 14:39:37.000: E/AndroidRuntime(9022): 	at java.lang.reflect.Method.invoke(Native Method)
01-03 14:39:37.000: E/AndroidRuntime(9022): 	at com.android.internal.os.RuntimeInit$MethodAndArgsCaller.run(RuntimeInit.java:493)
01-03 14:39:37.000: E/AndroidRuntime(9022): 	at com.android.internal.os.ZygoteInit.main(ZygoteInit.java:858)
01-03 14:39:37.000: E/AndroidRuntime(9022): Caused by: android.view.InflateException: Binary XML file line #1: Binary XML file line #1: Error inflating class android.support.design.widget.BottomNavigationView
01-03 14:39:37.000: E/AndroidRuntime(9022): Caused by: android.view.InflateException: Binary XML file line #1: Error inflating class android.support.design.widget.BottomNavigationView
01-03 14:39:37.000: E/AndroidRuntime(9022): Caused by: java.lang.reflect.InvocationTargetException
01-03 14:39:37.000: E/AndroidRuntime(9022): 	at java.lang.reflect.Constructor.newInstance0(Native Method)
01-03 14:39:37.000: E/AndroidRuntime(9022): 	at java.lang.reflect.Constructor.newInstance(Constructor.java:343)
01-03 14:39:37.000: E/AndroidRuntime(9022): 	at android.view.LayoutInflater.createView(LayoutInflater.java:647)
01-03 14:39:37.000: E/AndroidRuntime(9022): 	at android.view.LayoutInflater.createViewFromTag(LayoutInflater.java:790)
01-03 14:39:37.000: E/AndroidRuntime(9022): 	at android.view.LayoutInflater.createViewFromTag(LayoutInflater.java:730)
01-03 14:39:37.000: E/AndroidRuntime(9022): 	at android.view.LayoutInflater.rInflate(LayoutInflater.java:863)
01-03 14:39:37.000: E/AndroidRuntime(9022): 	at android.view.LayoutInflater.rInflateChildren(LayoutInflater.java:824)
01-03 14:39:37.000: E/AndroidRuntime(9022): 	at android.view.LayoutInflater.inflate(LayoutInflater.java:515)
01-03 14:39:37.000: E/AndroidRuntime(9022): 	at android.view.LayoutInflater.inflate(LayoutInflater.java:423)
01-03 14:39:37.000: E/AndroidRuntime(9022): 	at android.view.LayoutInflater.inflate(LayoutInflater.java:374)
01-03 14:39:37.000: E/AndroidRuntime(9022): 	at com.android.internal.policy.PhoneWindow.setContentView(PhoneWindow.java:420)
01-03 14:39:37.000: E/AndroidRuntime(9022): 	at android.app.Activity.setContentView(Activity.java:2771)
01-03 14:39:37.000: E/AndroidRuntime(9022): 	at md5389a40c2a1fc5c16911e9344cd3fce27.MainActivity.n_onCreate(Native Method)
01-03 14:39:37.000: E/AndroidRuntime(9022): 	at md5389a40c2a1fc5c16911e9344cd3fce27.MainActivity.onCreate(MainActivity.java:29)
01-03 14:39:37.000: E/AndroidRuntime(9022): 	at android.app.Activity.performCreate(Activity.java:7136)
01-03 14:39:37.000: E/AndroidRuntime(9022): 	at android.app.Activity.performCreate(Activity.java:7127)
01-03 14:39:37.000: E/AndroidRuntime(9022): 	at android.app.Instrumentation.callActivityOnCreate(Instrumentation.java:1271)
01-03 14:39:37.000: E/AndroidRuntime(9022): 	at android.app.ActivityThread.performLaunchActivity(ActivityThread.java:2893)
01-03 14:39:37.000: E/AndroidRuntime(9022): 	at android.app.ActivityThread.handleLaunchActivity(ActivityThread.java:3048)
01-03 14:39:37.000: E/AndroidRuntime(9022): 	at android.app.servertransaction.LaunchActivityItem.execute(LaunchActivityItem.java:78)
01-03 14:39:37.000: E/AndroidRuntime(9022): 	at android.app.servertransaction.TransactionExecutor.executeCallbacks(TransactionExecutor.java:108)
01-03 14:39:37.000: E/AndroidRuntime(9022): 	at android.app.servertransaction.TransactionExecutor.execute(TransactionExecutor.java:68)
01-03 14:39:37.000: E/AndroidRuntime(9022): 	at android.app.ActivityThread$H.handleMessage(ActivityThread.java:1808)
01-03 14:39:37.000: E/AndroidRuntime(9022): 	at android.os.Handler.dispatchMessage(Handler.java:106)
01-03 14:39:37.000: E/AndroidRuntime(9022): 	at android.os.Looper.loop(Looper.java:193)
01-03 14:39:37.000: E/AndroidRuntime(9022): 	at android.app.ActivityThread.main(ActivityThread.java:6669)
01-03 14:39:37.000: E/AndroidRuntime(9022): 	at java.lang.reflect.Method.invoke(Native Method)
01-03 14:39:37.000: E/AndroidRuntime(9022): 	at com.android.internal.os.RuntimeInit$MethodAndArgsCaller.run(RuntimeInit.java:493)
01-03 14:39:37.000: E/AndroidRuntime(9022): 	at com.android.internal.os.ZygoteInit.main(ZygoteInit.java:858)
01-03 14:39:37.000: E/AndroidRuntime(9022): Caused by: java.lang.IllegalArgumentException: The style on this component requires your app theme to be Theme.AppCompat (or a descendant).
01-03 14:39:37.000: E/AndroidRuntime(9022): 	at android.support.design.internal.ThemeEnforcement.checkTheme(ThemeEnforcement.java:221)
01-03 14:39:37.000: E/AndroidRuntime(9022): 	at android.support.design.internal.ThemeEnforcement.checkAppCompatTheme(ThemeEnforcement.java:196)
01-03 14:39:37.000: E/AndroidRuntime(9022): 	at android.support.design.internal.ThemeEnforcement.checkCompatibleTheme(ThemeEnforcement.java:131)
01-03 14:39:37.000: E/AndroidRuntime(9022): 	at android.support.design.internal.ThemeEnforcement.obtainTintedStyledAttributes(ThemeEnforcement.java:110)
01-03 14:39:37.000: E/AndroidRuntime(9022): 	at android.support.design.widget.BottomNavigationView.<init>(BottomNavigationView.java:138)
01-03 14:39:37.000: E/AndroidRuntime(9022): 	at android.support.design.widget.BottomNavigationView.<init>(BottomNavigationView.java:114)
01-03 14:39:37.000: E/AndroidRuntime(9022): 	... 29 more
01-03 14:39:37.035: E/lowmemorykiller(1619): Error writing /proc/9022/oom_score_adj; errno=22
```




````
./obj/Debug/lp/18/jl/res/values/values.xml(0,0): 
Error APT0000: 
Error retrieving parent for item: No resource found that matches the given name 'CardView'. 

./obj/Debug/lp/18/jl/res/values/values.xml(0,0): 
Error APT0000: No resource found that matches the given name: attr 'cardBackgroundColor'.

./obj/Debug/lp/18/jl/res/values/values.xml(0,0): 
Error APT0000: No resource found that matches the given name: attr 'cardElevation'.
```


