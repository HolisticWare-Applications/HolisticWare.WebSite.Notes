# Errors

## runtime Java.Lang.ClassNotFoundException

xamarin.android bindings 

	UNHANDLED EXCEPTION: Java.Lang.NoClassDefFoundError: 
	Exception of type 'Java.Lang.NoClassDefFoundError' was thrown.

### Input Jar

jar was accidentaly bound as Input jar.


https://forums.xamarin.com/discussion/8594/java-lang-noclassdeffounderror-on-mixpanel-bindings

The difference between EmbeddedJar and InputJar is whether the .jar is present 
within the binding assembly. If you use InputJar, then you must add the .jar to 
your Application project with a Build action of AndroidJavaLibrary, which you 
did not.

I know you said you used EmbeddedJar and it didn't work for you. I don't know 
why this is the case; it works for me.

One other change I made to the project was to use a "normal" project reference 
instead of a file assembly reference, and having both the Mixpanel binding and 
MixpanelTest project in the same solution. This may be why EmbeddedJar worked 
for me; you may have been testing a "stale" assembly.

Finally, when diagnosing Java.Lang.NoClassDefFoundError errors, there are two 
things which are helpful:

The full stack trace. The exception message should contain both the C# stack 
trace and the Java-side stack trace, and the Java-side stack trace will 
frequently have additional information, such as what type it's looking for.
jar/javap/etc. are worthless when it comes to diagnosis, because the app you're 
running is generated from .jar files; it does not contain them. Consequently, 
it's possible for things to be missing from the .apk.

When that's the case, you want to run dexdump, not javap. See:

http://forums.xamarin.com/discussion/comment/3874/#Comment_3874
http://forums.xamarin.com/discussion/comment/2923/#Comment_2923


### Xamarin.Android assembly/library referencing Xamarin.Android Binding assembly/library

This is common case if user wants to extend/improve binding API with (normalization,
.netification) and splits the whole SDK in 2 libraries:

1.  binding library
2.  extended API library that references binding library (1.)

The error:

	UNHANDLED EXCEPTION: Java.Lang.NoClassDefFoundError: 
	Exception of type 'Java.Lang.NoClassDefFoundError' was thrown.

Error can happen if bindings assemb

NOTE:

