# Tests 28.0.0.2 2019-07-08

tests-28.0.0.2-20190708.md

## Xamarin.Forms

### New Projects

1.  new Project
2.  update packages

```
/Library/Frameworks/Mono.framework/External/xbuild/Xamarin/Android/Xamarin.Android.Common.targets(3,3): 
Error: 
You have Jar libraries, common.jar, that have the identical name with inconsistent file contents. 
Please make sure to remove any conflicting libraries in EmbeddedJar, InputJar and AndroidJavaLibrary. 
```

### Older samples 

#### Xamarin-Forms-Labs-Samples

### Petzold's charlespetzold-xamarin-forms-samples

*   InnerGlobe - OK

*   TiltMaze 

*   MonkeySee

*   KwazyThreeDee

## monodroid samples

### SlidingMenu/SlidingMenuExample

```
Android.Views.InflateException: Binary XML file line #1: Binary XML file line #1: Error inflating class com.slidingmenu.lib.SlidingMenu ---> Android.Views.InflateException: Binary XML file line #1: Error inflating class com.slidingmenu.lib.SlidingMenu ---> Java.Lang.Reflect.InvocationTargetException:  ---> Java.Lang.NoClassDefFoundError: Failed resolution of: Landroid/support/v4/view/ViewConfigurationCompat; ---> Java.Lang.ClassNotFoundException: Didn't find class "android.support.v4.view.ViewConfigurationCompat" on path: DexPathList[[zip file "/system/framework/org.apache.http.legacy.boot.jar", zip file "/data/app/SlidingMenuExample.SlidingMenuExample-AOVnLYyrVdF1XvoHnoH1Eg==/base.apk"],nativeLibraryDirectories=[/data/app/SlidingMenuExample.SlidingMenuExample-AOVnLYyrVdF1XvoHnoH1Eg==/lib/x86, /system/fake-libs, /data/app/SlidingMenuExample.SlidingMenuExample-AOVnLYyrVdF1XvoHnoH1Eg==/base.apk!/lib/x86, /system/lib]]
  at java.lang.ClassNotFoundException: Didn't find class "android.support.v4.view.ViewConfigurationCompat" on path: DexPathList[[zip file "/system/framework/org.apache.http.legacy.boot.jar", zip file "/data/app/SlidingMenuExample.SlidingMenuExample-AOVnLYyrVdF1XvoHnoH1Eg==/base.apk"],nativeLibraryDirectories=[/data/app/SlidingMenuExample.SlidingMenuExample-AOVnLYyrVdF1XvoHnoH1Eg==/lib/x86, /system/fake-libs, /data/app/SlidingMenuExample.SlidingMenuExample-AOVnLYyrVdF1XvoHnoH1Eg==/base.apk!/lib/x86, /system/lib]]
  at at dalvik.system.BaseDexClassLoader.findClass(BaseDexClassLoader.java:134)
  at at java.lang.ClassLoader.loadClass(ClassLoader.java:379)
  at at java.lang.ClassLoader.loadClass(ClassLoader.java:312)
  at at com.slidingmenu.lib.CustomViewAbove.initCustomViewAbove(CustomViewAbove.java:167)
  at at com.slidingmenu.lib.CustomViewAbove.<init>(CustomViewAbove.java:157)
  at at com.slidingmenu.lib.CustomViewAbove.<init>(CustomViewAbove.java:152)
  at at com.slidingmenu.lib.SlidingMenu.<init>(SlidingMenu.java:207)
  at at com.slidingmenu.lib.SlidingMenu.<init>(SlidingMenu.java:190)
  at at java.lang.reflect.Constructor.newInstance0(Native Method)
  at at java.lang.reflect.Constructor.newInstance(Constructor.java:343)
  at at android.view.LayoutInflater.createView(LayoutInflater.java:647)
  at at android.view.LayoutInflater.createViewFromTag(LayoutInflater.java:790)
  at at android.view.LayoutInflater.createViewFromTag(LayoutInflater.java:730)
  at at android.view.LayoutInflater.inflate(LayoutInflater.java:492)
  at at android.view.LayoutInflater.inflate(LayoutInflater.java:423)
  at at android.view.LayoutInflater.inflate(LayoutInflater.java:374)
  at at com.slidingmenu.lib.app.SlidingActivityHelper.onCreate(SlidingActivityHelper.java:45)
  at at com.slidingmenu.lib.app.SlidingActivity.onCreate(SlidingActivity.java:22)
  at at md5a8b47b0aedc0e2c935504f6ea29b2ef1.Activity1.n_onCreate(Native Method)
  at at md5a8b47b0aedc0e2c935504f6ea29b2ef1.Activity1.onCreate(Activity1.java:29)
  at at android.app.Activity.performCreate(Activity.java:7136)
  at at android.app.Activity.performCreate(Activity.java:7127)
  at at android.app.Instrumentation.callActivityOnCreate(Instrumentation.java:1271)
  at at android.app.ActivityThread.performLaunchActivity(ActivityThread.java:2893)
  at at android.app.ActivityThread.handleLaunchActivity(ActivityThread.java:3048)
  at at android.app.servertransaction.LaunchActivityItem.execute(LaunchActivityItem.java:78)
  at at android.app.servertransaction.TransactionExecutor.executeCallbacks(TransactionExecutor.java:108)
  at at android.app.servertransaction.TransactionExecutor.execute(TransactionExecutor.java:68)
  at at android.app.ActivityThread$H.handleMessage(ActivityThread.java:1808)
  at at android.os.Handler.dispatchMessage(Handler.java:106)
  at at android.os.Looper.loop(Looper.java:193)
  at at android.app.ActivityThread.main(ActivityThread.java:6669)
  at at java.lang.reflect.Method.invoke(Native Method)
  at at com.android.internal.os.RuntimeInit$MethodAndArgsCaller.run(RuntimeInit.java:493)
  at at com.android.internal.os.ZygoteInit.main(ZygoteInit.java:858)
  --- End of inner exception stack trace ---
  at java.lang.NoClassDefFoundError: Failed resolution of: Landroid/support/v4/view/ViewConfigurationCompat;
  at at com.slidingmenu.lib.CustomViewAbove.initCustomViewAbove(CustomViewAbove.java:167)
  at at com.slidingmenu.lib.CustomViewAbove.<init>(CustomViewAbove.java:157)
  at at com.slidingmenu.lib.CustomViewAbove.<init>(CustomViewAbove.java:152)
  at at com.slidingmenu.lib.SlidingMenu.<init>(SlidingMenu.java:207)
  at at com.slidingmenu.lib.SlidingMenu.<init>(SlidingMenu.java:190)
  at at java.lang.reflect.Constructor.newInstance0(Native Method)
  at at java.lang.reflect.Constructor.newInstance(Constructor.java:343)
  at at android.view.LayoutInflater.createView(LayoutInflater.java:647)
  at at android.view.LayoutInflater.createViewFromTag(LayoutInflater.java:790)
  at at android.view.LayoutInflater.createViewFromTag(LayoutInflater.java:730)
  at at android.view.LayoutInflater.inflate(LayoutInflater.java:492)
  at at android.view.LayoutInflater.inflate(LayoutInflater.java:423)
  at at android.view.LayoutInflater.inflate(LayoutInflater.java:374)
  at at com.slidingmenu.lib.app.SlidingActivityHelper.onCreate(SlidingActivityHelper.java:45)
  at at com.slidingmenu.lib.app.SlidingActivity.onCreate(SlidingActivity.java:22)
  at at md5a8b47b0aedc0e2c935504f6ea29b2ef1.Activity1.n_onCreate(Native Method)
  at at md5a8b47b0aedc0e2c935504f6ea29b2ef1.Activity1.onCreate(Activity1.java:29)
  at at android.app.Activity.performCreate(Activity.java:7136)
  at at android.app.Activity.performCreate(Activity.java:7127)
  at at android.app.Instrumentation.callActivityOnCreate(Instrumentation.java:1271)
  at at android.app.ActivityThread.performLaunchActivity(ActivityThread.java:2893)
  at at android.app.ActivityThread.handleLaunchActivity(ActivityThread.java:3048)
  at at android.app.servertransaction.LaunchActivityItem.execute(LaunchActivityItem.java:78)
  at at android.app.servertransaction.TransactionExecutor.executeCallbacks(TransactionExecutor.java:108)
  at at android.app.servertransaction.TransactionExecutor.execute(TransactionExecutor.java:68)
  at at android.app.ActivityThread$H.handleMessage(ActivityThread.java:1808)
  at at android.os.Handler.dispatchMessage(Handler.java:106)
  at at android.os.Looper.loop(Looper.java:193)
  at at android.app.ActivityThread.main(ActivityThread.java:6669)
  at at java.lang.reflect.Method.invoke(Native Method)
  at at com.android.internal.os.RuntimeInit$MethodAndArgsCaller.run(RuntimeInit.java:493)
  at at com.android.internal.os.ZygoteInit.main(ZygoteInit.java:858)
  at Caused by: java.lang.ClassNotFoundException: Didn't find class "android.support.v4.view.ViewConfigurationCompat" on path: DexPathList[[zip file "/system/framework/org.apache.http.legacy.boot.jar", zip file "/data/app/SlidingMenuExample.SlidingMenuExample-AOVnLYyrVdF1XvoHnoH1Eg==/base.apk"],nativeLibraryDirectories=[/data/app/SlidingMenuExample.SlidingMenuExample-AOVnLYyrVdF1XvoHnoH1Eg==/lib/x86, /system/fake-libs, /data/app/SlidingMenuExample.SlidingMenuExample-AOVnLYyrVdF1XvoHnoH1Eg==/base.apk!/lib/x86, /system/lib]]
  at at dalvik.system.BaseDexClassLoader.findClass(BaseDexClassLoader.java:134)
  at at java.lang.ClassLoader.loadClass(ClassLoader.java:379)
  at at java.lang.ClassLoader.loadClass(ClassLoader.java:312)
  at ... 32 more
  --- End of inner exception stack trace ---
  at java.lang.reflect.InvocationTargetException
  at at java.lang.reflect.Constructor.newInstance0(Native Method)
  at at java.lang.reflect.Constructor.newInstance(Constructor.java:343)
  at at android.view.LayoutInflater.createView(LayoutInflater.java:647)
  at at android.view.LayoutInflater.createViewFromTag(LayoutInflater.java:790)
  at at android.view.LayoutInflater.createViewFromTag(LayoutInflater.java:730)
  at at android.view.LayoutInflater.inflate(LayoutInflater.java:492)
  at at android.view.LayoutInflater.inflate(LayoutInflater.java:423)
  at at android.view.LayoutInflater.inflate(LayoutInflater.java:374)
  at at com.slidingmenu.lib.app.SlidingActivityHelper.onCreate(SlidingActivityHelper.java:45)
  at at com.slidingmenu.lib.app.SlidingActivity.onCreate(SlidingActivity.java:22)
  at at md5a8b47b0aedc0e2c935504f6ea29b2ef1.Activity1.n_onCreate(Native Method)
  at at md5a8b47b0aedc0e2c935504f6ea29b2ef1.Activity1.onCreate(Activity1.java:29)
  at at android.app.Activity.performCreate(Activity.java:7136)
  at at android.app.Activity.performCreate(Activity.java:7127)
  at at android.app.Instrumentation.callActivityOnCreate(Instrumentation.java:1271)
  at at android.app.ActivityThread.performLaunchActivity(ActivityThread.java:2893)
  at at android.app.ActivityThread.handleLaunchActivity(ActivityThread.java:3048)
  at at android.app.servertransaction.LaunchActivityItem.execute(LaunchActivityItem.java:78)
  at at android.app.servertransaction.TransactionExecutor.executeCallbacks(TransactionExecutor.java:108)
  at at android.app.servertransaction.TransactionExecutor.execute(TransactionExecutor.java:68)
  at at android.app.ActivityThread$H.handleMessage(ActivityThread.java:1808)
  at at android.os.Handler.dispatchMessage(Handler.java:106)
  at at android.os.Looper.loop(Looper.java:193)
  at at android.app.ActivityThread.main(ActivityThread.java:6669)
  at at java.lang.reflect.Method.invoke(Native Method)
  at at com.android.internal.os.RuntimeInit$MethodAndArgsCaller.run(RuntimeInit.java:493)
  at at com.android.internal.os.ZygoteInit.main(ZygoteInit.java:858)
  at Caused by: java.lang.NoClassDefFoundError: Failed resolution of: Landroid/support/v4/view/ViewConfigurationCompat;
  at at com.slidingmenu.lib.CustomViewAbove.initCustomViewAbove(CustomViewAbove.java:167)
  at at com.slidingmenu.lib.CustomViewAbove.<init>(CustomViewAbove.java:157)
  at at com.slidingmenu.lib.CustomViewAbove.<init>(CustomViewAbove.java:152)
  at at com.slidingmenu.lib.SlidingMenu.<init>(SlidingMenu.java:207)
  at at com.slidingmenu.lib.SlidingMenu.<init>(SlidingMenu.java:190)
  at ... 27 more
  at Caused by: java.lang.ClassNotFoundException: Didn't find class "android.support.v4.view.ViewConfigurationCompat" on path: DexPathList[[zip file "/system/framework/org.apache.http.legacy.boot.jar", zip file "/data/app/SlidingMenuExample.SlidingMenuExample-AOVnLYyrVdF1XvoHnoH1Eg==/base.apk"],nativeLibraryDirectories=[/data/app/SlidingMenuExample.SlidingMenuExample-AOVnLYyrVdF1XvoHnoH1Eg==/lib/x86, /system/fake-libs, /data/app/SlidingMenuExample.SlidingMenuExample-AOVnLYyrVdF1XvoHnoH1Eg==/base.apk!/lib/x86, /system/lib]]
  at at dalvik.system.BaseDexClassLoader.findClass(BaseDexClassLoader.java:134)
  at at java.lang.ClassLoader.loadClass(ClassLoader.java:379)
  at at java.lang.ClassLoader.loadClass(ClassLoader.java:312)
  at ... 32 more
  --- End of inner exception stack trace ---
  at android.view.InflateException: Binary XML file line #1: Error inflating class com.slidingmenu.lib.SlidingMenu
  at Caused by: java.lang.reflect.InvocationTargetException
  at at java.lang.reflect.Constructor.newInstance0(Native Method)
  at at java.lang.reflect.Constructor.newInstance(Constructor.java:343)
  at at android.view.LayoutInflater.createView(LayoutInflater.java:647)
  at at android.view.LayoutInflater.createViewFromTag(LayoutInflater.java:790)
  at at android.view.LayoutInflater.createViewFromTag(LayoutInflater.java:730)
  at at android.view.LayoutInflater.inflate(LayoutInflater.java:492)
  at at android.view.LayoutInflater.inflate(LayoutInflater.java:423)
  at at android.view.LayoutInflater.inflate(LayoutInflater.java:374)
  at at com.slidingmenu.lib.app.SlidingActivityHelper.onCreate(SlidingActivityHelper.java:45)
  at at com.slidingmenu.lib.app.SlidingActivity.onCreate(SlidingActivity.java:22)
  at at md5a8b47b0aedc0e2c935504f6ea29b2ef1.Activity1.n_onCreate(Native Method)
  at at md5a8b47b0aedc0e2c935504f6ea29b2ef1.Activity1.onCreate(Activity1.java:29)
  at at android.app.Activity.performCreate(Activity.java:7136)
  at at android.app.Activity.performCreate(Activity.java:7127)
  at at android.app.Instrumentation.callActivityOnCreate(Instrumentation.java:1271)
  at at android.app.ActivityThread.performLaunchActivity(ActivityThread.java:2893)
  at at android.app.ActivityThread.handleLaunchActivity(ActivityThread.java:3048)
  at at android.app.servertransaction.LaunchActivityItem.execute(LaunchActivityItem.java:78)
  at at android.app.servertransaction.TransactionExecutor.executeCallbacks(TransactionExecutor.java:108)
  at at android.app.servertransaction.TransactionExecutor.execute(TransactionExecutor.java:68)
  at at android.app.ActivityThread$H.handleMessage(ActivityThread.java:1808)
  at at android.os.Handler.dispatchMessage(Handler.java:106)
  at at android.os.Looper.loop(Looper.java:193)
  at at android.app.ActivityThread.main(ActivityThread.java:6669)
  at at java.lang.reflect.Method.invoke(Native Method)
  at at com.android.internal.os.RuntimeInit$MethodAndArgsCaller.run(RuntimeInit.java:493)
  at at com.android.internal.os.ZygoteInit.main(ZygoteInit.java:858)
  at Caused by: java.lang.NoClassDefFoundError: Failed resolution of: Landroid/support/v4/view/ViewConfigurationCompat;
  at at com.slidingmenu.lib.CustomViewAbove.initCustomViewAbove(CustomViewAbove.java:167)
  at at com.slidingmenu.lib.CustomViewAbove.<init>(CustomViewAbove.java:157)
  at at com.slidingmenu.lib.CustomViewAbove.<init>(CustomViewAbove.java:152)
  at at com.slidingmenu.lib.SlidingMenu.<init>(SlidingMenu.java:207)
  at at com.slidingmenu.lib.SlidingMenu.<init>(SlidingMenu.java:190)
  at ... 27 more
  at Caused by: java.lang.ClassNotFoundException: Didn't find class "android.support.v4.view.ViewConfigurationCompat" on path: DexPathList[[zip file "/system/framework/org.apache.http.legacy.boot.jar", zip file "/data/app/SlidingMenuExample.SlidingMenuExample-AOVnLYyrVdF1XvoHnoH1Eg==/base.apk"],nativeLibraryDirectories=[/data/app/SlidingMenuExample.SlidingMenuExample-AOVnLYyrVdF1XvoHnoH1Eg==/lib/x86, /system/fake-libs, /data/app/SlidingMenuExample.SlidingMenuExample-AOVnLYyrVdF1XvoHnoH1Eg==/base.apk!/lib/x86, /system/lib]]
  at at dalvik.system.BaseDexClassLoader.findClass(BaseDexClassLoader.java:134)
  at at java.lang.ClassLoader.loadClass(ClassLoader.java:379)
  at at java.lang.ClassLoader.loadClass(ClassLoader.java:312)
  at ... 32 more
  --- End of inner exception stack trace ---
  at Java.Interop.JniEnvironment+InstanceMethods.CallNonvirtualVoidMethod (Java.Interop.JniObjectReference instance, Java.Interop.JniObjectReference type, Java.Interop.JniMethodInfo method, Java.Interop.JniArgumentValue* args) [0x00089] in <3f0dfed935344816aef2b177cb7cdcaa>:0
  at Java.Interop.JniPeerMembers+JniInstanceMethods.InvokeVirtualVoidMethod (System.String encodedMember, Java.Interop.IJavaPeerable self, Java.Interop.JniArgumentValue* parameters) [0x0005d] in <3f0dfed935344816aef2b177cb7cdcaa>:0
  at Com.Slidingmenu.Lib.App.SlidingActivity.OnCreate (Android.OS.Bundle p0) [0x00029] in /Projects/X/monodroid-samples/SlidingMenu/Mono.SlidingMenu/obj/Debug/generated/src/Com.Slidingmenu.Lib.App.SlidingActivity.cs:105
  at SlidingMenuExample.Activity1.OnCreate (Android.OS.Bundle bundle) [0x0000e] in /Projects/X/monodroid-samples/SlidingMenu/SlidingMenuExample/MainActivity.cs:21
  at Com.Slidingmenu.Lib.App.SlidingActivity.n_OnCreate_Landroid_os_Bundle_ (System.IntPtr jnienv, System.IntPtr native__this, System.IntPtr native_p0) [0x00012] in /Projects/X/monodroid-samples/SlidingMenu/Mono.SlidingMenu/obj/Debug/generated/src/Com.Slidingmenu.Lib.App.SlidingActivity.cs:93
  at at (wrapper dynamic-method) Android.Runtime.DynamicMethodNameCounter.3(intptr,intptr,intptr)
  at android.view.InflateException: Binary XML file line #1: Binary XML file line #1: Error inflating class com.slidingmenu.lib.SlidingMenu
  at Caused by: android.view.InflateException: Binary XML file line #1: Error inflating class com.slidingmenu.lib.SlidingMenu
  at Caused by: java.lang.reflect.InvocationTargetException
  at at java.lang.reflect.Constructor.newInstance0(Native Method)
  at at java.lang.reflect.Constructor.newInstance(Constructor.java:343)
  at at android.view.LayoutInflater.createView(LayoutInflater.java:647)
  at at android.view.LayoutInflater.createViewFromTag(LayoutInflater.java:790)
  at at android.view.LayoutInflater.createViewFromTag(LayoutInflater.java:730)
  at at android.view.LayoutInflater.inflate(LayoutInflater.java:492)
  at at android.view.LayoutInflater.inflate(LayoutInflater.java:423)
  at at android.view.LayoutInflater.inflate(LayoutInflater.java:374)
  at at com.slidingmenu.lib.app.SlidingActivityHelper.onCreate(SlidingActivityHelper.java:45)
  at at com.slidingmenu.lib.app.SlidingActivity.onCreate(SlidingActivity.java:22)
  at at md5a8b47b0aedc0e2c935504f6ea29b2ef1.Activity1.n_onCreate(Native Method)
  at at md5a8b47b0aedc0e2c935504f6ea29b2ef1.Activity1.onCreate(Activity1.java:29)
  at at android.app.Activity.performCreate(Activity.java:7136)
  at at android.app.Activity.performCreate(Activity.java:7127)
  at at android.app.Instrumentation.callActivityOnCreate(Instrumentation.java:1271)
  at at android.app.ActivityThread.performLaunchActivity(ActivityThread.java:2893)
  at at android.app.ActivityThread.handleLaunchActivity(ActivityThread.java:3048)
  at at android.app.servertransaction.LaunchActivityItem.execute(LaunchActivityItem.java:78)
  at at android.app.servertransaction.TransactionExecutor.executeCallbacks(TransactionExecutor.java:108)
  at at android.app.servertransaction.TransactionExecutor.execute(TransactionExecutor.java:68)
  at at android.app.ActivityThread$H.handleMessage(ActivityThread.java:1808)
  at at android.os.Handler.dispatchMessage(Handler.java:106)
  at at android.os.Looper.loop(Looper.java:193)
  at at android.app.ActivityThread.main(ActivityThread.java:6669)
  at at java.lang.reflect.Method.invoke(Native Method)
  at at com.android.internal.os.RuntimeInit$MethodAndArgsCaller.run(RuntimeInit.java:493)
  at at com.android.internal.os.ZygoteInit.main(ZygoteInit.java:858)
  at Caused by: java.lang.NoClassDefFoundError: Failed resolution of: Landroid/support/v4/view/ViewConfigurationCompat;
  at at com.slidingmenu.lib.CustomViewAbove.initCustomViewAbove(CustomViewAbove.java:167)
  at at com.slidingmenu.lib.CustomViewAbove.<init>(CustomViewAbove.java:157)
  at at com.slidingmenu.lib.CustomViewAbove.<init>(CustomViewAbove.java:152)
  at at com.slidingmenu.lib.SlidingMenu.<init>(SlidingMenu.java:207)
  at at com.slidingmenu.lib.SlidingMenu.<init>(SlidingMenu.java:190)
  at ... 27 more
  at Caused by: java.lang.ClassNotFoundException: Didn't find class "android.support.v4.view.ViewConfigurationCompat" on path: DexPathList[[zip file "/system/framework/org.apache.http.legacy.boot.jar", zip file "/data/app/SlidingMenuExample.SlidingMenuExample-AOVnLYyrVdF1XvoHnoH1Eg==/base.apk"],nativeLibraryDirectories=[/data/app/SlidingMenuExample.SlidingMenuExample-AOVnLYyrVdF1XvoHnoH1Eg==/lib/x86, /system/fake-libs, /data/app/SlidingMenuExample.SlidingMenuExample-AOVnLYyrVdF1XvoHnoH1Eg==/base.apk!/lib/x86, /system/lib]]
  at at dalvik.system.BaseDexClassLoader.findClass(BaseDexClassLoader.java:134)
  at at java.lang.ClassLoader.loadClass(ClassLoader.java:379)
  at at java.lang.ClassLoader.loadClass(ClassLoader.java:312)
  at ... 32 more
```

### RemoteNotifications/ClientApp

```
/Library/Frameworks/Mono.framework/External/xbuild/Xamarin/Android/Xamarin.Android.Common.targets(3,3): Error: You have Jar libraries, common.jar, that have the identical name with inconsistent file contents. Please make sure to remove any conflicting libraries in EmbeddedJar, InputJar and AndroidJavaLibrary. (ClientApp)
```

### android-n/ActiveNotifications


### android-n/CommitContentSample
### android-n/MultiWindowPlayground
### android-n/DirectBoot
### android-n/MessagingService
### android-n/ScopedDirectoryAccess
### android-n/DirectReply

### android-o/AndroidCipher
### android-o/EmojiCompat
