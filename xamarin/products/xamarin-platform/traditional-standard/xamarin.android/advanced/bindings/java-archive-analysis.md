# Java Archive Analysis

Content of the java library to be bound jar tf  <> | grep <>

Thanks to JonP at Xamarin

jar tf pinit-sdk-1.0.jar | grep PinItButton

All content

jar -tf ubertesters.sdk.android.jar  > jar-tf.md

http://forums.xamarin.com/discussion/356/binding-a-java-library-clarifications-anyone

Sample

$ jar tf gesture-v2.0.0.jar 
META-INF/MANIFEST.MF
com/samsung/android/sdk/gesture/a.class
com/samsung/android/sdk/gesture/SgestureHand$ChangeListener.class
com/samsung/android/sdk/gesture/SgestureHand$Info.class
com/samsung/android/sdk/gesture/SgestureHand$a.class
com/samsung/android/sdk/gesture/SgestureHand.class
com/samsung/android/sdk/gesture/Sgesture.class

Issues in sample

a.class
	probably obfuscated type

$ javap -classpath gesture-v2.0.0.jar com.samsung.android.sdk.gesture.a
final class com.samsung.android.sdk.gesture.a extends java.lang.Object implements android.hardware.scontext.SContextListener{
    com.samsung.android.sdk.gesture.a(com.samsung.android.sdk.gesture.SgestureHand, com.samsung.android.sdk.gesture.SgestureHand$ChangeListener);
    public final void onSContextChanged(android.hardware.scontext.SContextEvent);
}
