# mono.android.Seppuku - Broadcast Receiver

mono-android-seppuku-broadcast-receiver.md

mono.android.Seppuku is a broadcast receiver which calls java.lang.Runtime.exit(); you can view 

    obj\Debug\android\src\mono\android\Seppuku.java 
    
after a build to see what it does. 

"Seppuku" is (ritual) suicide, and in this case the process is killing itself, so 
I thought the 
name was (darkly, sillily) appropriate. 

Now, why is it there? For many reasons -- you want to restart a Debugger session, or 
you're reinstalling the app via Fast Deployment -- the currently running process needs 
to exit. The Seppuku task is how we cause the currently running process to exit. 

Also note that it's only present in Debug builds, not Release builds. 

 - Jon (the guy who came up with the name) 

    <!--suppress ExportedReceiver-->
    <receiver android:name="mono.android.Seppuku">
      <intent-filter>
        <action android:name="mono.android.intent.action.SEPPUKU" />
        <category android:name="mono.android.intent.category.SEPPUKU.Application.Application" />
      </intent-filter>
    </receiver>



deep dive on Xamarin.Android at the moment, trying to understand every layer from 
compilation to execution. Android apps built in Java run within a Java VM on the 
Android device. But what about Xamarin.Android apps. Does the app run in the Mono 
Runtime, within a Java VM, or is the Mono Runtime not used with an app at runtime 
and it's compiled right down to IL that can run directly in a Java VM?

This is the part I am getting a bit confused on and can't find any clear documentation 
on what an Android app is compiled to, then how it actually runs on an Android device.


Take a look at: https://developer.xamarin.com/guides/android/under_the_hood/architecture/

The Mono Runtime runs alongside of Dalvik or ART depending on the Android version. 
If you look at the resulting manifest after your build your app, which is spit out in 
the 

    obj/Debug/Android 

folder you will notice the following lines:

<provider 
    android:name="mono.MonoRuntimeProvider" android:exported="false" 
    android:initOrder="2147483647" 
    android:authorities="App20.App20.mono.MonoRuntimeProvider.__mono_init__" />
<receiver android:name="mono.android.Seppuku">
  <intent-filter>
    <action android:name="mono.android.intent.action.SEPPUKU" />
    <category android:name="mono.android.intent.category.SEPPUKU.App20.App20" />
  </intent-filter>
</receiver>

This is what makes sure Mono runtime is spun up in the Process which your Application 
runs in. Then when your Activity is invoked, it is actually the Android Callable Wrapper 
which is invoked, which in turns invokes the C# version of it.

There is nice description of the startup process here: 

https://developer.xamarin.com/guides/android/under_the_hood/architecture/#Application_Startup
