# Android Callable Wrappers ACW - `javac` errors

android-callable-wrappers-acw-javac-errors.md

Error:

```
package PACKAGENAME does not exist
```

When you bind a .jar library and reference the binding project from another project, user needs to 
also add the  .jar to your Application project and set its Build action to AndroidJavaLibrary.


Failure to do so means that the .jar won't be added to the javac $CLASSPATH, resulting in javac 
compilation errors when compiling the Android Callable Wrapper, and that the .jar won't included 
into your final .apk.


And that is because when the project is wrapped it automaticaly adds `mono(.PACKAGENAME) to the 
package name.

That's for an "Implementor" type; you can ignore it. It's used as part of the implementation of 
events. If you look at the generated C# code, there should be:

```
[global::Android.Runtime.Register ("mono/PACKAGENAME/SomeListenerImplementor")]
internal sealed class SomeListenerImplementor : Java.Lang.Object, IZubhiumListener 
{
    // ...
}
```

The `mono.PACKAGENAME.SomeListenerImplementor` is the ACW for the internal `SomeListenerImplementor` 
type.

It is not possible to rename this type; it's an internal construct that isn't controlled via metadata.


*   https://stackoverflow.com/questions/10911214/monodroid-issue-with-jar-binding-zubhium-sdk/10914223#10914223


*   https://gist.github.com/JonDouglas/dda6d8ace7d071b0e8cb

References are in `map.cache`:

```
find ./obj/ -type f -name "map.cache"
```
output:
```
./obj//Release/lp/map.cache
./obj//Debug/lp/map.cache
./obj//Debug/g/obj/lp/map.cache
```

In the sample folder search `obj/` folder and decompile all jars:

```
find ./obj/ -name "*.jar" \
    -exec $SHELL \
    -c \
    ' 
        echo "$0" >> acw-decompile.class.java.txt
        JARNAME="$0"
        javap \
            -classpath $JARNAME \
            $(jar -tf $JARNAME | grep "class$" | sed s/\.class$//) \
            >> acw-decompile.class.java.txt
        cat acw-decompile.class.java.txt
    ' {} \;
```

Build Log analysis:

```
  Task "DetermineJavaLibrariesToCompile"
      JavaLibrariesToCompile:
        /Library/Frameworks/Mono.framework/External/xbuild-frameworks/MonoAndroid/v9.0/mono.android.jar
        /Library/Frameworks/Mono.framework/External/xbuild/Xamarin/Android/java_runtime.jar
        obj/Debug/lp/9/jl/android.arch.lifecycle.common.jar
        obj/Debug/lp/0/jl/universal-image-loader-1.9.5.jar
        obj/Debug/lp/7/jl/android.arch.core.common.jar
        obj/Debug/lp/17/jl/com.android.support.collections.jar
        obj/Debug/lp/48/jl/auto-value-annotations.jar
        obj/Debug/lp/15/jl/com.android.support.support-annotations.jar
        obj/Debug/lp/3/jl/uno.ui-MonoAndroid90.jar
        obj/Debug/lp/32/jl/bin/classes.jar
        obj/Debug/lp/35/jl/bin/classes.jar
        obj/Debug/lp/33/jl/bin/classes.jar
        obj/Debug/lp/20/jl/bin/classes.jar
        obj/Debug/lp/18/jl/bin/classes.jar
        obj/Debug/lp/27/jl/bin/classes.jar
        obj/Debug/lp/11/jl/bin/classes.jar
        obj/Debug/lp/29/jl/bin/classes.jar
        obj/Debug/lp/16/jl/bin/classes.jar
        obj/Debug/lp/28/jl/bin/classes.jar
        obj/Debug/lp/10/jl/bin/classes.jar
        obj/Debug/lp/19/jl/bin/classes.jar
        obj/Debug/lp/26/jl/bin/classes.jar
        obj/Debug/lp/8/jl/bin/classes.jar
        obj/Debug/lp/21/jl/bin/classes.jar
        obj/Debug/lp/38/jl/bin/classes.jar
        obj/Debug/lp/36/jl/bin/classes.jar
        obj/Debug/lp/31/jl/bin/classes.jar
        obj/Debug/lp/30/jl/bin/classes.jar
        obj/Debug/lp/37/jl/bin/classes.jar
        obj/Debug/lp/39/jl/bin/classes.jar
        obj/Debug/lp/24/jl/bin/classes.jar
        obj/Debug/lp/23/jl/bin/classes.jar
        obj/Debug/lp/12/jl/bin/classes.jar
        obj/Debug/lp/13/jl/bin/classes.jar
        obj/Debug/lp/14/jl/bin/classes.jar
        obj/Debug/lp/22/jl/bin/classes.jar
        obj/Debug/lp/25/jl/bin/classes.jar
```

Sorted:

```
        /Library/Frameworks/Mono.framework/External/xbuild-frameworks/MonoAndroid/v9.0/mono.android.jar
        /Library/Frameworks/Mono.framework/External/xbuild/Xamarin/Android/java_runtime.jar
        obj/Debug/lp/0/jl/universal-image-loader-1.9.5.jar
        obj/Debug/lp/3/jl/uno.ui-MonoAndroid90.jar
        obj/Debug/lp/7/jl/android.arch.core.common.jar
        obj/Debug/lp/8/jl/bin/classes.jar
        obj/Debug/lp/9/jl/android.arch.lifecycle.common.jar
        obj/Debug/lp/10/jl/bin/classes.jar
        obj/Debug/lp/11/jl/bin/classes.jar
        obj/Debug/lp/12/jl/bin/classes.jar
        obj/Debug/lp/13/jl/bin/classes.jar
        obj/Debug/lp/14/jl/bin/classes.jar
        obj/Debug/lp/15/jl/com.android.support.support-annotations.jar
        obj/Debug/lp/16/jl/bin/classes.jar
        obj/Debug/lp/17/jl/com.android.support.collections.jar
        obj/Debug/lp/18/jl/bin/classes.jar
        obj/Debug/lp/19/jl/bin/classes.jar
        obj/Debug/lp/20/jl/bin/classes.jar
        obj/Debug/lp/21/jl/bin/classes.jar
        obj/Debug/lp/22/jl/bin/classes.jar
        obj/Debug/lp/23/jl/bin/classes.jar
        obj/Debug/lp/24/jl/bin/classes.jar
        obj/Debug/lp/25/jl/bin/classes.jar
        obj/Debug/lp/26/jl/bin/classes.jar
        obj/Debug/lp/27/jl/bin/classes.jar
        obj/Debug/lp/28/jl/bin/classes.jar
        obj/Debug/lp/29/jl/bin/classes.jar
        obj/Debug/lp/30/jl/bin/classes.jar
        obj/Debug/lp/31/jl/bin/classes.jar
        obj/Debug/lp/32/jl/bin/classes.jar
        obj/Debug/lp/33/jl/bin/classes.jar
        obj/Debug/lp/35/jl/bin/classes.jar
        obj/Debug/lp/36/jl/bin/classes.jar
        obj/Debug/lp/37/jl/bin/classes.jar
        obj/Debug/lp/38/jl/bin/classes.jar
        obj/Debug/lp/39/jl/bin/classes.jar
        obj/Debug/lp/48/jl/auto-value-annotations.jar
```
map.cache

```
```