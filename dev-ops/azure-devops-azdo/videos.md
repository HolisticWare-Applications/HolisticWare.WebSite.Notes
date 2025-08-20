# Videos

videos.md

*   Ignite

    *   https://www.youtube.com/watch?v=tlGl6I4WIcQ

    *   [ignite.md](ignite.md)


```
adb server stop
```

```
ADB server didn't ACK
Server had pid: 30734
--- adb starting (pid 30734) ---
adb I 05-27 11:51:42 30734 3132253 main.cpp:60] Android Debug Bridge version 1.0.41
adb I 05-27 11:51:42 30734 3132253 main.cpp:60] Version 28.0.3-5475833
adb I 05-27 11:51:42 30734 3132253 main.cpp:60] Installed as /Projects/system-installed/macosx/sdk/platform-tools/adb
adb I 05-27 11:51:42 30734 3132253 main.cpp:60] 
adb E 05-27 11:51:42 30734 3132256 usb_osx.cpp:159] Unable to create an interface plug-in (e00002be)
adb E 05-27 11:51:42  8605 328259 usb_osx.cpp:159] Unable to create an interface plug-in (e00002be)
adb F 05-27 11:51:43 30734 3132253 main.cpp:144] could not install *smartsocket* listener: Address already in use

* could not start server *
```


```
adb server stop ADB server didn't ACK Unable to create an interface plug-in usb_osx.cpp could not install *smartsocket* listener: Address already in use
```

com.google.android.gms.internal.vision
zzad
com\/google\/android\/gms\/internal\/vision\/zzad

./generated/com.google.android.gms.play-services-vision-common/obj/Release/monoandroid90/api.xml:2:  
<package name="com.google.android.gms.internal.vision" jni-name="com/google/android/gms/internal/vision">
./generated/com.google.android.gms.play-services-vision/obj/Release/monoandroid90/api.xml:2:  
<package name="com.google.android.gms.internal.vision" jni-name="com/google/android/gms/internal/vision">





com.google.android.gms.vision.face.internal.client
zza
com\/google\/android\/gms\/vision\/face\/internal\/client\/zza





es.visionsampl] Rejecting re-init on previously-failed class java.lang.Class<com.google.android.gms.vision.face.internal.client.zza>: java.lang.NoClassDefFoundError: Failed resolution of: Lcom/google/android/gms/internal/vision/zzl;
[es.visionsampl]   at void md5e0309ac3bebcb91dbbfdf45b89258e1e.FaceTrackerActivity.n_onCreate(android.os.Bundle) (FaceTrackerActivity.java:-2)
[es.visionsampl]   at void md5e0309ac3bebcb91dbbfdf45b89258e1e.FaceTrackerActivity.onCreate(android.os.Bundle) (FaceTrackerActivity.java:32)
[es.visionsampl]   at void android.app.Activity.performCreate(android.os.Bundle, android.os.PersistableBundle) (Activity.java:7136)
[es.visionsampl]   at void android.app.Activity.performCreate(android.os.Bundle) (Activity.java:7127)
[es.visionsampl]   at void android.app.Instrumentation.callActivityOnCreate(android.app.Activity, android.os.Bundle) (Instrumentation.java:1271)
[es.visionsampl]   at android.app.Activity android.app.ActivityThread.performLaunchActivity(android.app.ActivityThread$ActivityClientRecord, android.content.Intent) (ActivityThread.java:2893)
[es.visionsampl]   at android.app.Activity android.app.ActivityThread.handleLaunchActivity(android.app.ActivityThread$ActivityClientRecord, android.app.servertransaction.PendingTransactionActions, android.content.Intent) (ActivityThread.java:3048)
[es.visionsampl]   at void android.app.servertransaction.LaunchActivityItem.execute(android.app.ClientTransactionHandler, android.os.IBinder, android.app.servertransaction.PendingTransactionActions) (LaunchActivityItem.java:78)
[es.visionsampl]   at void android.app.servertransaction.TransactionExecutor.executeCallbacks(android.app.servertransaction.ClientTransaction) (TransactionExecutor.java:108)
[es.visionsampl]   at void android.app.servertransaction.TransactionExecutor.execute(android.app.servertransaction.ClientTransaction) (TransactionExecutor.java:68)
[es.visionsampl]   at void android.app.ActivityThread$H.handleMessage(android.os.Message) (ActivityThread.java:1808)
[es.visionsampl]   at void android.os.Handler.dispatchMessage(android.os.Message) (Handler.java:106)
[es.visionsampl]   at void android.os.Looper.loop() (Looper.java:193)
[es.visionsampl]   at void android.app.ActivityThread.main(java.lang.String[]) (ActivityThread.java:6669)
[es.visionsampl]   at java.lang.Object java.lang.reflect.Method.invoke(java.lang.Object, java.lang.Object[]) (Method.java:-2)
[es.visionsampl]   at void com.android.internal.os.RuntimeInit$MethodAndArgsCaller.run() (RuntimeInit.java:493)
[es.visionsampl]   at void com.android.internal.os.ZygoteInit.main(java.lang.String[]) (ZygoteInit.java:858)
[es.visionsampl] Caused by: java.lang.ClassNotFoundException: Didn't find class "com.google.android.gms.internal.vision.zzl" on path: DexPathList[[zip file "/system/framework/org.apache.http.legacy.boot.jar", zip file "/data/app/com.xamarin.googleplayservices.visionsample-XgiGfo9ikc5olpkst2FIVQ==/base.apk"],nativeLibraryDirectories=[/data/app/com.xamarin.googleplayservices.visionsample-XgiGfo9ikc5olpkst2FIVQ==/lib/x86, /system/fake-libs, /data/app/com.xamarin.googleplayservices.visionsample-XgiGfo9ikc5olpkst2FIVQ==/base.apk!/lib/x86, /system/lib]]
[es.visionsampl]   at java.lang.Class dalvik.system.BaseDexClassLoader.findClass(java.lang.String) (BaseDexClassLoader.java:134)
[es.visionsampl]   at java.lang.Class java.lang.ClassLoader.loadClass(java.lang.String, boolean) (ClassLoader.java:379)
[es.visionsampl]   at java.lang.Class java.lang.ClassLoader.loadClass(java.lang.String) (ClassLoader.java:312)
[es.visionsampl]   at void md5e0309ac3bebcb91dbbfdf45b89258e1e.FaceTrackerActivity.n_onCreate(android.os.Bundle) (FaceTrackerActivity.java:-2)
[es.visionsampl]   at void md5e0309ac3bebcb91dbbfdf45b89258e1e.FaceTrackerActivity.onCreate(android.os.Bundle) (FaceTrackerActivity.java:32)
[es.visionsampl]   at void android.app.Activity.performCreate(android.os.Bundle, android.os.PersistableBundle) (Activity.java:7136)
[es.visionsampl]   at void android.app.Activity.performCreate(android.os.Bundle) (Activity.java:7127)
[es.visionsampl]   at void android.app.Instrumentation.callActivityOnCreate(android.app.Activity, android.os.Bundle) (Instrumentation.java:1271)
[es.visionsampl]   at android.app.Activity android.app.ActivityThread.performLaunchActivity(android.app.ActivityThread$ActivityClientRecord, android.content.Intent) (ActivityThread.java:2893)
[es.visionsampl]   at android.app.Activity android.app.ActivityThread.handleLaunchActivity(android.app.ActivityThread$ActivityClientRecord, android.app.servertransaction.PendingTransactionActions, android.content.Intent) (ActivityThread.java:3048)
[es.visionsampl]   at void android.app.servertransaction.LaunchActivityItem.execute(android.app.ClientTransactionHandler, android.os.IBinder, android.app.servertransaction.PendingTransactionActions) (LaunchActivityItem.java:78)
[es.visionsampl]   at void android.app.servertransaction.TransactionExecutor.executeCallbacks(android.app.servertransaction.ClientTransaction) (TransactionExecutor.java:108)
[es.visionsampl]   at void android.app.servertransaction.TransactionExecutor.execute(android.app.servertransaction.ClientTransaction) (TransactionExecutor.java:68)
[es.visionsampl]   at void android.app.ActivityThread$H.handleMessage(android.os.Message) (ActivityThread.java:1808)
[es.visionsampl]   at void android.os.Handler.dispatchMessage(android.os.Message) (Handler.java:106)
[es.visionsampl]   at void android.os.Looper.loop() (Looper.java:193)
[es.visionsampl]   at void android.app.ActivityThread.main(java.lang.String[]) (ActivityThread.java:6669)
[es.visionsampl]   at java.lang.Object java.lang.reflect.Method.invoke(java.lang.Object, java.lang.Object[]) (Method.java:-2)
[es.visionsampl]   at void com.android.internal.os.RuntimeInit$MethodAndArgsCaller.run() (RuntimeInit.java:493)
[es.visionsampl]   at void com.android.internal.os.ZygoteInit.main(java.lang.String[]) (ZygoteInit.java:858)
[es.visionsampl] 
[es.visionsampl] Rejecting re-init on previously-failed class java.lang.Class<com.google.android.gms.vision.face.internal.client.zza>: java.lang.NoClassDefFoundError: Failed resolution of: Lcom/google/android/gms/internal/vision/zzl;
[es.visionsampl]   at void md5e0309ac3bebcb91dbbfdf45b89258e1e.FaceTrackerActivity.n_onCreate(android.os.Bundle) (FaceTrackerActivity.java:-2)
[es.visionsampl]   at void md5e0309ac3bebcb91dbbfdf45b89258e1e.FaceTrackerActivity.onCreate(android.os.Bundle) (FaceTrackerActivity.java:32)
[es.visionsampl]   at void android.app.Activity.performCreate(android.os.Bundle, android.os.PersistableBundle) (Activity.java:7136)
[es.visionsampl]   at void android.app.Activity.performCreate(android.os.Bundle) (Activity.java:7127)
[es.visionsampl]   at void android.app.Instrumentation.callActivityOnCreate(android.app.Activity, android.os.Bundle) (Instrumentation.java:1271)
[es.visionsampl]   at android.app.Activity android.app.ActivityThread.performLaunchActivity(android.app.ActivityThread$ActivityClientRecord, android.content.Intent) (ActivityThread.java:2893)
[es.visionsampl]   at android.app.Activity android.app.ActivityThread.handleLaunchActivity(android.app.ActivityThread$ActivityClientRecord, android.app.servertransaction.PendingTransactionActions, android.content.Intent) (ActivityThread.java:3048)
[es.visionsampl]   at void android.app.servertransaction.LaunchActivityItem.execute(android.app.ClientTransactionHandler, android.os.IBinder, android.app.servertransaction.PendingTransactionActions) (LaunchActivityItem.java:78)
[es.visionsampl]   at void android.app.servertransaction.TransactionExecutor.executeCallbacks(android.app.servertransaction.ClientTransaction) (TransactionExecutor.java:108)
[es.visionsampl]   at void android.app.servertransaction.TransactionExecutor.execute(android.app.servertransaction.ClientTransaction) (TransactionExecutor.java:68)
[es.visionsampl]   at void android.app.ActivityThread$H.handleMessage(android.os.Message) (ActivityThread.java:1808)
[es.visionsampl]   at void android.os.Handler.dispatchMessage(android.os.Message) (Handler.java:106)
[es.visionsampl]   at void android.os.Looper.loop() (Looper.java:193)
[es.visionsampl]   at void android.app.ActivityThread.main(java.lang.String[]) (ActivityThread.java:6669)
[es.visionsampl]   at java.lang.Object java.lang.reflect.Method.invoke(java.lang.Object, java.lang.Object[]) (Method.java:-2)
[es.visionsampl]   at void com.android.internal.os.RuntimeInit$MethodAndArgsCaller.run() (RuntimeInit.java:493)
[es.visionsampl]   at void com.android.internal.os.ZygoteInit.main(java.lang.String[]) (ZygoteInit.java:858)
[es.visionsampl] Caused by: java.lang.ClassNotFoundException: Didn't find class "com.google.android.gms.internal.vision.zzl" on path: DexPathList[[zip file "/system/framework/org.apache.http.legacy.boot.jar", zip file "/data/app/com.xamarin.googleplayservices.visionsample-XgiGfo9ikc5olpkst2FIVQ==/base.apk"],nativeLibraryDirectories=[/data/app/com.xamarin.googleplayservices.visionsample-XgiGfo9ikc5olpkst2FIVQ==/lib/x86, /system/fake-libs, /data/app/com.xamarin.googleplayservices.visionsample-XgiGfo9ikc5olpkst2FIVQ==/base.apk!/lib/x86, /system/lib]]
[es.visionsampl]   at java.lang.Class dalvik.system.BaseDexClassLoader.findClass(java.lang.String) (BaseDexClassLoader.java:134)
[es.visionsampl]   at java.lang.Class java.lang.ClassLoader.loadClass(java.lang.String, boolean) (ClassLoader.java:379)
[es.visionsampl]   at java.lang.Class java.lang.ClassLoader.loadClass(java.lang.String) (ClassLoader.java:312)
[es.visionsampl]   at void md5e0309ac3bebcb91dbbfdf45b89258e1e.FaceTrackerActivity.n_onCreate(android.os.Bundle) (FaceTrackerActivity.java:-2)
[es.visionsampl]   at void md5e0309ac3bebcb91dbbfdf45b89258e1e.FaceTrackerActivity.onCreate(android.os.Bundle) (FaceTrackerActivity.java:32)
[es.visionsampl]   at void android.app.Activity.performCreate(android.os.Bundle, android.os.PersistableBundle) (Activity.java:7136)
[es.visionsampl]   at void android.app.Activity.performCreate(android.os.Bundle) (Activity.java:7127)
[es.visionsampl]   at void android.app.Instrumentation.callActivityOnCreate(android.app.Activity, android.os.Bundle) (Instrumentation.java:1271)
[es.visionsampl]   at android.app.Activity android.app.ActivityThread.performLaunchActivity(android.app.ActivityThread$ActivityClientRecord, android.content.Intent) (ActivityThread.java:2893)
[es.visionsampl]   at android.app.Activity android.app.ActivityThread.handleLaunchActivity(android.app.ActivityThread$ActivityClientRecord, android.app.servertransaction.PendingTransactionActions, android.content.Intent) (ActivityThread.java:3048)
[es.visionsampl]   at void android.app.servertransaction.LaunchActivityItem.execute(android.app.ClientTransactionHandler, android.os.IBinder, android.app.servertransaction.PendingTransactionActions) (LaunchActivityItem.java:78)
[es.visionsampl]   at void android.app.servertransaction.TransactionExecutor.executeCallbacks(android.app.servertransaction.ClientTransaction) (TransactionExecutor.java:108)
[es.visionsampl]   at void android.app.servertransaction.TransactionExecutor.execute(android.app.servertransaction.ClientTransaction) (TransactionExecutor.java:68)
[es.visionsampl]   at void android.app.ActivityThread$H.handleMessage(android.os.Message) (ActivityThread.java:1808)
[es.visionsampl]   at void android.os.Handler.dispatchMessage(android.os.Message) (Handler.java:106)
[es.visionsampl]   at void android.os.Looper.loop() (Looper.java:193)
[es.visionsampl]   at void android.app.ActivityThread.main(java.lang.String[]) (ActivityThread.java:6669)
[es.visionsampl]   at java.lang.Object java.lang.reflect.Method.invoke(java.lang.Object, java.lang.Object[]) (Method.java:-2)
[es.visionsampl]   at void com.android.internal.os.RuntimeInit$MethodAndArgsCaller.run() (RuntimeInit.java:493)
[es.visionsampl]   at void com.android.internal.os.ZygoteInit.main(java.lang.String[]) (ZygoteInit.java:858)
[es.visionsampl] 
[es.visionsampl] Rejecting re-init on previously-failed class java.lang.Class<com.google.android.gms.vision.face.internal.client.zza>: java.lang.NoClassDefFoundError: Failed resolution of: Lcom/google/android/gms/internal/vision/zzl;
[es.visionsampl]   at void md5e0309ac3bebcb91dbbfdf45b89258e1e.FaceTrackerActivity.n_onCreate(android.os.Bundle) (FaceTrackerActivity.java:-2)
[es.visionsampl]   at void md5e0309ac3bebcb91dbbfdf45b89258e1e.FaceTrackerActivity.onCreate(android.os.Bundle) (FaceTrackerActivity.java:32)
[es.visionsampl]   at void android.app.Activity.performCreate(android.os.Bundle, android.os.PersistableBundle) (Activity.java:7136)
[es.visionsampl]   at void android.app.Activity.performCreate(android.os.Bundle) (Activity.java:7127)
[es.visionsampl]   at void android.app.Instrumentation.callActivityOnCreate(android.app.Activity, android.os.Bundle) (Instrumentation.java:1271)
[es.visionsampl]   at android.app.Activity android.app.ActivityThread.performLaunchActivity(android.app.ActivityThread$ActivityClientRecord, android.content.Intent) (ActivityThread.java:2893)
[es.visionsampl]   at android.app.Activity android.app.ActivityThread.handleLaunchActivity(android.app.ActivityThread$ActivityClientRecord, android.app.servertransaction.PendingTransactionActions, android.content.Intent) (ActivityThread.java:3048)
[es.visionsampl]   at void android.app.servertransaction.LaunchActivityItem.execute(android.app.ClientTransactionHandler, android.os.IBinder, android.app.servertransaction.PendingTransactionActions) (LaunchActivityItem.java:78)
[es.visionsampl]   at void android.app.servertransaction.TransactionExecutor.executeCallbacks(android.app.servertransaction.ClientTransaction) (TransactionExecutor.java:108)
[es.visionsampl]   at void android.app.servertransaction.TransactionExecutor.execute(android.app.servertransaction.ClientTransaction) (TransactionExecutor.java:68)
[es.visionsampl]   at void android.app.ActivityThread$H.handleMessage(android.os.Message) (ActivityThread.java:1808)
[es.visionsampl]   at void android.os.Handler.dispatchMessage(android.os.Message) (Handler.java:106)
[es.visionsampl]   at void android.os.Looper.loop() (Looper.java:193)
[es.visionsampl]   at void android.app.ActivityThread.main(java.lang.String[]) (ActivityThread.java:6669)
[es.visionsampl]   at java.lang.Object java.lang.reflect.Method.invoke(java.lang.Object, java.lang.Object[]) (Method.java:-2)
[es.visionsampl]   at void com.android.internal.os.RuntimeInit$MethodAndArgsCaller.run() (RuntimeInit.java:493)
[es.visionsampl]   at void com.android.internal.os.ZygoteInit.main(java.lang.String[]) (ZygoteInit.java:858)
[es.visionsampl] Caused by: java.lang.ClassNotFoundException: Didn't find class "com.google.android.gms.internal.vision.zzl" on path: DexPathList[[zip file "/system/framework/org.apache.http.legacy.boot.jar", zip file "/data/app/com.xamarin.googleplayservices.visionsample-XgiGfo9ikc5olpkst2FIVQ==/base.apk"],nativeLibraryDirectories=[/data/app/com.xamarin.googleplayservices.visionsample-XgiGfo9ikc5olpkst2FIVQ==/lib/x86, /system/fake-libs, /data/app/com.xamarin.googleplayservices.visionsample-XgiGfo9ikc5olpkst2FIVQ==/base.apk!/lib/x86, /system/lib]]
[es.visionsampl]   at java.lang.Class dalvik.system.BaseDexClassLoader.findClass(java.lang.String) (BaseDexClassLoader.java:134)
[es.visionsampl]   at java.lang.Class java.lang.ClassLoader.loadClass(java.lang.String, boolean) (ClassLoader.java:379)
[es.visionsampl]   at java.lang.Class java.lang.ClassLoader.loadClass(java.lang.String) (ClassLoader.java:312)
[es.visionsampl]   at void md5e0309ac3bebcb91dbbfdf45b89258e1e.FaceTrackerActivity.n_onCreate(android.os.Bundle) (FaceTrackerActivity.java:-2)
[es.visionsampl]   at void md5e0309ac3bebcb91dbbfdf45b89258e1e.FaceTrackerActivity.onCreate(android.os.Bundle) (FaceTrackerActivity.java:32)
[es.visionsampl]   at void android.app.Activity.performCreate(android.os.Bundle, android.os.PersistableBundle) (Activity.java:7136)
[es.visionsampl]   at void android.app.Activity.performCreate(android.os.Bundle) (Activity.java:7127)
[es.visionsampl]   at void android.app.Instrumentation.callActivityOnCreate(android.app.Activity, android.os.Bundle) (Instrumentation.java:1271)
[es.visionsampl]   at android.app.Activity android.app.ActivityThread.performLaunchActivity(android.app.ActivityThread$ActivityClientRecord, android.content.Intent) (ActivityThread.java:2893)
[es.visionsampl]   at android.app.Activity android.app.ActivityThread.handleLaunchActivity(android.app.ActivityThread$ActivityClientRecord, android.app.servertransaction.PendingTransactionActions, android.content.Intent) (ActivityThread.java:3048)
[es.visionsampl]   at void android.app.servertransaction.LaunchActivityItem.execute(android.app.ClientTransactionHandler, android.os.IBinder, android.app.servertransaction.PendingTransactionActions) (LaunchActivityItem.java:78)
[es.visionsampl]   at void android.app.servertransaction.TransactionExecutor.executeCallbacks(android.app.servertransaction.ClientTransaction) (TransactionExecutor.java:108)
[es.visionsampl]   at void android.app.servertransaction.TransactionExecutor.execute(android.app.servertransaction.ClientTransaction) (TransactionExecutor.java:68)
[es.visionsampl]   at void android.app.ActivityThread$H.handleMessage(android.os.Message) (ActivityThread.java:1808)
[es.visionsampl]   at void android.os.Handler.dispatchMessage(android.os.Message) (Handler.java:106)
[es.visionsampl]   at void android.os.Looper.loop() (Looper.java:193)
[es.visionsampl]   at void android.app.ActivityThread.main(java.lang.String[]) (ActivityThread.java:6669)
[es.visionsampl]   at java.lang.Object java.lang.reflect.Method.invoke(java.lang.Object, java.lang.Object[]) (Method.java:-2)
[es.visionsampl]   at void com.android.internal.os.RuntimeInit$MethodAndArgsCaller.run() (RuntimeInit.java:493)
[es.visionsampl]   at void com.android.internal.os.ZygoteInit.main(java.lang.String[]) (ZygoteInit.java:858)
