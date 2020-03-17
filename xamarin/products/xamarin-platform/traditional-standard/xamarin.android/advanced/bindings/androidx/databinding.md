
# Databinding

databinding.md

*   https://developer.android.com/topic/libraries/data-binding/start

*   https://medium.com/androiddevelopers/data-binding-lessons-learnt-4fd16576b719

*   https://guides.codepath.com/android/Applying-Data-Binding-for-Views

*   https://developer.android.com/topic/libraries/data-binding

*	https://github.com/android/databinding-samples

*	https://medium.com/androiddevelopers/android-data-binding-library-from-observable-fields-to-livedata-in-two-steps-690a384218f2

*	https://medium.com/androiddevelopers/data-binding-lessons-learnt-4fd16576b719

*	https://github.com/atsushieno/monodroid-schema-gen/blob/master/android-layout-xml.xsd

*	https://developer.android.com/reference/classes

*	https://developer.android.com/topic/libraries/data-binding/architecture

```
android {
    dataBinding {
        enabled = true
    }
}

```

There is a class `android.databinding.tool.MakeCopy` that you can try to run. It is a command line 
interface that copies resources from one or more directories to a target directory, modifies the layout files, and generates some artifacts that are required by the annotation processor (xml files, source files).

*   https://android.googlesource.com/platform/frameworks/data-binding/+/41b4a286c98ded1dbb8bf2fcdd5a9ca29f9423e2/compiler/src/main/java/android/databinding/tool/MakeCopy.java



There hasn't been a lot of effort put into this since most developers use gradle. That said, I did a quick bit of development to try to enable make builds that you could try out. There is a class android.databinding.tool.MakeCopy that you can try to run. It is a command line interface that copies resources from one or more directories to a target directory, modifies the layout files, and generates some artifacts that are required by the annotation processor (xml files, source files).

It should be included in the library with the annotation processor. You'll have to work out the full class path requirements to get it to work. As I said, I didn't spend a lot of time getting it going because we didn't have any clients for it.

where to put the output files (src-out-dir, xml-out-dir, res-out-dir) so they get picked up?

Maybe describing their use will help. The source out directory must be picked up during the java compile stage (of your app) to trigger the annotation processor. The XML out directory is placed in an annotation of the generated source to be read during the annotation processor stage of compilation. The target res dir is where resources will be copied to and should be picked up by aapt. i.e. your app should point to this directory instead of the original (source) directory

```
android/databinding/tool/DataBinderPlugin
```


```
14:18:16.246 [DEBUG] [org.gradle.internal.operations.DefaultBuildOperationExecutor] 
Build operation 'Resolve databinding-compiler-common.jar (androidx.databinding:databinding-compiler-common:3.5.1)' started
14:18:16.246 [DEBUG] [org.gradle.internal.operations.DefaultBuildOperationExecutor] 
Build operation 'Resolve ddmlib.jar (com.android.tools.ddms:ddmlib:26.5.1)' started
```


*   https://android.googlesource.com/platform/frameworks/data-binding/+/41b4a286c98ded1dbb8bf2fcdd5a9ca29f9423e2/compiler/src/main/java/android/databinding/tool/MakeCopy.java

*   https://stackoverflow.com/questions/31154358/can-i-use-android-data-binding-with-maven


```
System.out.println("required parameters: manifest adk-dir src-out-dir xml-out-dir " +
                "res-out-dir res-in-dir...");
System.out.println("Creates an android data binding class and copies resources from");
System.out.println("res-source to res-target and modifies binding layout files");
System.out.println("in res-target. Binding data is extracted into XML files");
System.out.println("and placed in xml-out-dir.");
System.out.println("  manifest    path to AndroidManifest.xml file");
System.out.println("  adk-dir     path to Android SDK home");
System.out.println("  src-out-dir path to where generated source goes");
System.out.println("  xml-out-dir path to where generated binding XML goes");
System.out.println("  res-out-dir path to the where modified resources should go");
System.out.println("  res-in-dir  path to source resources \"res\" directory. One" +
        " or more are allowed.");
```

https://proandroiddev.com/new-in-android-viewbindings-the-difference-from-databinding-library-bef5945baf5e

https://developer.android.com/topic/libraries/view-binding

http://programmersought.com/article/2221528141/;jsessionid=28E68C8FDA6B6744A8D5AEC4058BD60A


```
rm -fr AndroidDataBindingSampleNative*

git clone \
    https://github.com/someone1984/AndroidDataBindingSampleNative.git \
    AndroidDataBindingSampleNative-databinding-off
git clone \
    https://github.com/someone1984/AndroidDataBindingSampleNative.git \
    AndroidDataBindingSampleNative-databinding-on

code ./AndroidDataBindingSampleNative-databinding-off/app/build.gradle

```

```
cd ./AndroidDataBindingSampleNative-databinding-on/
rm -fr build/
gradle clean
gradle build --debug > gradle-build-debug.log

cd ../

cd ./AndroidDataBindingSampleNative-databinding-off/
rm -fr build/
gradle clean
gradle build --debug > gradle-build-debug.log

```

## Analysis of the differences

```
diff -rq \
    ./AndroidDataBindingSampleNative-databinding-off/ \
    ./AndroidDataBindingSampleNative-databinding-on

```

```
find ./AndroidDataBindingSampleNative-databinding-on/app/build -type d -name "databinding*"
```
```
./app/build/generated/data_binding_base_class_source_out/debug/dataBindingGenBaseClassesDebug/out/com/example/databindingsample
./app/build/generated/data_binding_base_class_source_out/debug/dataBindingGenBaseClassesDebug/out/com/example/databindingsample/databinding
./app/build/generated/source/dataBinding/trigger/debug/com/example/databindingsample
./app/build/generated/source/buildConfig/androidTest/debug/com/example/databindingsample
./app/build/generated/source/buildConfig/debug/com/example/databindingsample
./app/build/generated/not_namespaced_r_class_sources/debug/r/androidx/databinding
./app/build/generated/not_namespaced_r_class_sources/debug/r/com/example/databindingsample
./app/build/generated/ap_generated_sources/debug/out/androidx/databinding
./app/build/generated/ap_generated_sources/debug/out/com/example/databindingsample
./app/build/generated/ap_generated_sources/debug/out/com/example/databindingsample/databinding
./app/build/intermediates/transforms/dexBuilder/debug/0/androidx/databinding
./app/build/intermediates/transforms/dexBuilder/debug/0/com/example/databindingsample
./app/build/intermediates/transforms/dexBuilder/debug/0/com/example/databindingsample/databinding
./app/build/intermediates/javac/debug/classes/androidx/databinding
./app/build/intermediates/javac/debug/classes/com/example/databindingsample
./app/build/intermediates/javac/debug/classes/com/example/databindingsample/databinding
```



```
./build/intermediates/data_binding_base_class_log_artifact/debug/dataBindingGenBaseClassesDebug/out/com.example.databindingsample-binding_classes.json
```

```
{
  "mappings": {
    "activity_main": {
      "qualified_name": "com.example.databindingsample.databinding.ActivityMainBinding",
      "module_package": "com.example.databindingsample",
      "variables": {
        "user": "com.example.databindingsample.User",
        "activity": "com.example.databindingsample.MainActivity",
        "handler": "com.example.databindingsample.EventHandler"
      },
      "implementations": [
        {
          "tag": "layout/activity_main",
          "merge": false,
          "qualified_name": "com.example.databindingsample.databinding.ActivityMainBindingImpl"
        }
      ]
    }
  }
}
```

*   Maven Plugin

    *   https://bitbucket.org/eppleton/databinding-demo/

*   https://medium.com/@dzolnai/debugging-a-databinding-compiler-error-9510f88f4cec

*   https://stackoverflow.com/questions/43047030/unsuccessful-gradle-build-with-custom-xml-tag-and-databinding

*   https://www.majormojo.co.uk/blog/android-data-binding-part-1.html

*   https://www.majormojo.co.uk/blog/android-data-binding-part-2.html

*   https://www.majormojo.co.uk/blog/android-data-binding-part-3.html

*   https://www.majormojo.co.uk/blog/android-data-binding-part-4.html

*   http://programmersought.com/article/2221528141/;jsessionid=28E68C8FDA6B6744A8D5AEC4058BD60A