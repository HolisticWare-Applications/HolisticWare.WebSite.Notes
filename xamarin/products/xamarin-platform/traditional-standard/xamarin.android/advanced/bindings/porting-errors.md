# Porting Errors



## Java.Lang.IllegalArgumentException: Unknown color

### Problem


	System.NotSupportedException: 
	Could not activate JNI Handle  
		(key_handle ) 
	of Java type 
	as managed type 
		'OpenTok.Sample.UI.MeterView'. ---> Java.Lang.IllegalArgumentException: Unknown color

	System.NotSupportedException: 
	Could not activate JNI Handle  
		(key_handle ) 
	of Java type 
		'md510a7665dcc6ee300d41019860b985460/MeterView' 
	as managed type 
		'OpenTok.Sample.UI.MeterView'. ---> Java.Lang.IllegalArgumentException: Unknown color


	System.NotSupportedException: Could not activate JNI Handle 0xb0800029 (key_handle 0x536bccb8) of Java type 'md510a7665dcc6ee300d41019860b985460/MeterView' as managed type 'OpenTok.Sample.UI.MeterView'. ---> Java.Lang.IllegalArgumentException: Unknown color
	  at System.Runtime.ExceptionServices.ExceptionDispatchInfo.Throw () [0x0000c] in /Users/builder/data/lanes/2692/e98e9627/source/mono/external/referencesource/mscorlib/system/runtime/exceptionservices/exceptionservicescommon.cs:143
	  at Android.Runtime.JNIEnv.CallStaticIntMethod (IntPtr jclass, IntPtr jmethod, Android.Runtime.JValue* parms) [0x00064] in /Users/builder/data/lanes/2692/e98e9627/source/monodroid/src/Mono.Android/src/Runtime/JNIEnv.g.cs:1501
	  at Android.Graphics._Color.ParseColor (System.String colorString) [0x0004b] in /Users/builder/data/lanes/2692/e98e9627/source/monodroid/src/Mono.Android/platforms/android-19/src/generated/Android.Graphics._Color.cs:230
	  at Android.Graphics.Color.ParseColor (System.String colorString) [0x00000] in /Users/builder/data/lanes/2692/e98e9627/source/monodroid/src/Mono.Android/src/Android.Graphics/Color.cs:221
	  at OpenTok.Sample.UI.MeterView.Init () [0x0001c] in /Projects/HolisticWare/gitlab[]holisticware-bindings/20160116113719/OpenTok/samples/Sample.OpenTok.XamarinAndroid/csharp/ui/MeterView.cs:74
	  at OpenTok.Sample.UI.MeterView..ctor (Android.Content.Context context, IAttributeSet attrs) [0x00046] in /Projects/HolisticWare/gitlab[]holisticware-bindings/20160116113719/OpenTok/samples/Sample.OpenTok.XamarinAndroid/csharp/ui/MeterView.cs:88
	  at at (wrapper dynamic-method) System.Object:491b845c-30ab-4a29-a56f-79f46c19b121 (intptr,object[])
	  at Java.Interop.TypeManager.n_Activate (IntPtr jnienv, IntPtr jclass, IntPtr typename_ptr, IntPtr signature_ptr, IntPtr jobject, IntPtr parameters_ptr) [0x000fb] in /Users/builder/data/lanes/2692/e98e9627/source/monodroid/src/Mono.Android/src/Java.Interop/TypeManager.cs:163
	  at --- End of managed exception stack trace ---
	  at java.lang.IllegalArgumentException: Unknown color
	  at at android.graphics.Color.parseColor(Color.java:222)
	  at at mono.android.TypeManager.n_activate(Native Method)
	  at at mono.android.TypeManager.Activate(TypeManager.java:7)
	  at at md510a7665dcc6ee300d41019860b985460.MeterView.<init>(MeterView.java:32)
	  at at java.lang.reflect.Constructor.constructNative(Native Method)
	  at at java.lang.reflect.Constructor.newInstance(Constructor.java:417)
	  at at android.view.LayoutInflater.createView(LayoutInflater.java:587)
	  at at android.view.LayoutInflater.createViewFromTag(LayoutInflater.java:687)
	  at at android.view.LayoutInflater.rInflate(LayoutInflater.java:746)
	  at at android.view.LayoutInflater.rInflate(LayoutInflater.java:749)
	  at at android.view.LayoutInflater.inflate(LayoutInflater.java:489)
	  at at android.view.LayoutInflater.inflate(LayoutInflater.java:396)
	  at at android.view.LayoutInflater.inflate(LayoutInflater.java:352)
	  at at com.android.internal.policy.impl.PhoneWindow.setContentView(PhoneWindow.java:256)
	  at at android.app.Activity.setContentView(Activity.java:1867)
	  at at md559967d5d0134fae31dc9c7b22f952026.VoiceOnlyActivity.n_onCreate(Native Method)
	  at at md559967d5d0134fae31dc9c7b22f952026.VoiceOnlyActivity.onCreate(VoiceOnlyActivity.java:43)
	  at at android.app.Activity.performCreate(Activity.java:5008)
	  at at android.app.Instrumentation.callActivityOnCreate(Instrumentation.java:1079)
	  at at android.app.ActivityThread.performLaunchActivity(ActivityThread.java:2023)
	  at at android.app.ActivityThread.handleLaunchActivity(ActivityThread.java:2084)
	  at at android.app.ActivityThread.access$600(ActivityThread.java:130)
	  at at android.app.ActivityThread$H.handleMessage(ActivityThread.java:1195)
	  at at android.os.Handler.dispatchMessage(Handler.java:99)
	  at at android.os.Looper.loop(Looper.java:137)
	  at at android.app.ActivityThread.main(ActivityThread.java:4745)
	  at at java.lang.reflect.Method.invokeNative(Native Method)
	  at at java.lang.reflect.Method.invoke(Method.java:511)
	  at at com.android.internal.os.ZygoteInit$MethodAndArgsCaller.run(ZygoteInit.java:786)
	  at at com.android.internal.os.ZygoteInit.main(ZygoteInit.java:553)
	  at at dalvik.system.NativeStart.main(Native Method)
	  --- End of inner exception stack trace ---
	  at Java.Interop.TypeManager.n_Activate (IntPtr jnienv, IntPtr jclass, IntPtr typename_ptr, IntPtr signature_ptr, IntPtr jobject, IntPtr parameters_ptr) [0x00180] in /Users/builder/data/lanes/2692/e98e9627/source/monodroid/src/Mono.Android/src/Java.Interop/TypeManager.cs:170
	  at at (wrapper dynamic-method) System.Object:c46e1177-d1a1-4917-b4da-936c9bd8960b (intptr,intptr,intptr,intptr,intptr,intptr)










## Java.Lang.IllegalStateException: AudioDevice can only be changed before initialization

### Problem

	Java.Lang.IllegalStateException: AudioDevice can only be changed before initialization.
	  at System.Runtime.ExceptionServices.ExceptionDispatchInfo.Throw () [0x0000c] in /Users/builder/data/lanes/2692/e98e9627/source/mono/external/referencesource/mscorlib/system/runtime/exceptionservices/exceptionservicescommon.cs:143
	  at Android.Runtime.JNIEnv.CallStaticVoidMethod (IntPtr jclass, IntPtr jmethod, Android.Runtime.JValue* parms) [0x00063] in /Users/builder/data/lanes/2692/e98e9627/source/monodroid/src/Mono.Android/src/Runtime/JNIEnv.g.cs:1660
	  at OpenTok.AndroidOSP.AudioDeviceManager.set_AudioDevice (OpenTok.AndroidOSP.BaseAudioDevice value) [0x00051] in /Projects/HolisticWare/gitlab[]holisticware-bindings/20160116113719/OpenTok/source/OpenTok.Library.Bindings.XamarinAndroid/obj/Debug/generated/src/OpenTok.AndroidOSP.AudioDeviceManager.cs:77
	  at OpenTok.Sample.AudioDeviceActivity.SessionConnect () [0x00015] in /Projects/HolisticWare/gitlab[]holisticware-bindings/20160116113719/OpenTok/samples/Sample.OpenTok.XamarinAndroid/csharp/opentoksamples/AudioDeviceActivity.cs:244
	  at OpenTok.Sample.AudioDeviceActivity.OnCreate (Android.OS.Bundle savedInstanceState) [0x0007d] in /Projects/HolisticWare/gitlab[]holisticware-bindings/20160116113719/OpenTok/samples/Sample.OpenTok.XamarinAndroid/csharp/opentoksamples/AudioDeviceActivity.cs:74
	  at Android.App.Activity.n_OnCreate_Landroid_os_Bundle_ (IntPtr jnienv, IntPtr native__this, IntPtr native_savedInstanceState) [0x00011] in /Users/builder/data/lanes/2692/e98e9627/source/monodroid/src/Mono.Android/platforms/android-19/src/generated/Android.App.Activity.cs:2475
	  at at (wrapper dynamic-method) System.Object:bd52e1ef-521b-442d-83a2-2a9622ca4778 (intptr,intptr,intptr)
	  at --- End of managed exception stack trace ---
	  at java.lang.IllegalStateException: AudioDevice can only be changed before initialization.
	  at at com.opentok.android.AudioDeviceManager.setAudioDevice(AudioDeviceManager.java:40)
	  at at md559967d5d0134fae31dc9c7b22f952026.AudioDeviceActivity.n_onCreate(Native Method)
	  at at md559967d5d0134fae31dc9c7b22f952026.AudioDeviceActivity.onCreate(AudioDeviceActivity.java:50)
	  at at android.app.Activity.performCreate(Activity.java:6221)
	  at at android.app.Instrumentation.callActivityOnCreate(Instrumentation.java:1119)
	  at at android.app.ActivityThread.performLaunchActivity(ActivityThread.java:2611)
	  at at android.app.ActivityThread.handleLaunchActivity(ActivityThread.java:2723)
	  at at android.app.ActivityThread.access$900(ActivityThread.java:172)
	  at at android.app.ActivityThread$H.handleMessage(ActivityThread.java:1422)
	  at at android.os.Handler.dispatchMessage(Handler.java:102)
	  at at android.os.Looper.loop(Looper.java:145)
	  at at android.app.ActivityThread.main(ActivityThread.java:5832)
	  at at java.lang.reflect.Method.invoke(Native Method)
	  at at java.lang.reflect.Method.invoke(Method.java:372)
	  at at com.android.internal.os.ZygoteInit$MethodAndArgsCaller.run(ZygoteInit.java:1399)
	  at at com.android.internal.os.ZygoteInit.main(ZygoteInit.java:1194)

### Analysis


	Java.Lang.IllegalStateException: AudioDevice can only be changed before initialization.


### [Re]Solution / Workaround

Permissions for audio device:

Java Android

        mPaintGradient.setShader(new RadialGradient(w / 2, h / 2, h / 2,
                0xff98CE00, 0x8098CE00, TileMode.CLAMP));


In Xamarin.Android color must be parsed and string loteral is in other format:

	mPaintGradient.SetShader(new RadialGradient(w / 2, h / 2, h / 2, 
													Color.ParseColor("#ff98CE00"), 
													Color.ParseColor("#8098CE00"), 
													//Color.ParseColor("0xff98CE00"), 
													//Color.ParseColor("0x8098CE00"), 
													Android.Graphics.Shader.TileMode.Clamp));

