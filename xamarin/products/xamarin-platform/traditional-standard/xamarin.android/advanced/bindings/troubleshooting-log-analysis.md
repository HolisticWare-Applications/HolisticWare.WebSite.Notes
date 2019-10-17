# Troubleshooting Log Analysis

troubleshooting-log-analysis.md

To obtain `Metadata.xml` issues like wrong XPath nodes:

```
```

To obtain Managed Callable Wrapper (MCW) issues search for log for

```
message BG0000: warning BG8
```

```
BINDINGSGENERATOR : warning BG8
```

```
BINDINGSGENERATOR : warning BG8604: top ancestor
```

```
BINDINGSGENERATOR : warning BG8800: Unknown parameter type
```



## Java.Lang.NoClassDefFoundError

When diagnosing Java.Lang.NoClassDefFoundError errors, there are two things which are helpful:

The full stack trace. The exception message should contain both the C# stack trace and the Java-side stack trace, and the Java-side stack trace will frequently have additional information, such as what type it's looking for.

jar/javap/etc. are worthless when it comes to diagnosis, because the app you're running is generated from .jar files; it does not contain them. Consequently, it's possible for things to be missing from the .apk.

When that's the case, you want to run dexdump, not javap. See:

*   http://forums.xamarin.com/discussion/comment/3874/#Comment_3874

*   http://forums.xamarin.com/discussion/comment/2923/#Comment_2923