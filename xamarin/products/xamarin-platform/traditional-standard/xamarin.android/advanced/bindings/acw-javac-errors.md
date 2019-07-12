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
        echo "$0"
        JARNAME="$0"
        javap \
            -classpath $JARNAME \
            $(jar -tf $JARNAME | grep "class$" | sed s/\.class$//) \
            >> $JARNAME.class.java.txt
        cat $JARNAME.class.java.txt
    ' {} \;
```

Pipe that to some file...


