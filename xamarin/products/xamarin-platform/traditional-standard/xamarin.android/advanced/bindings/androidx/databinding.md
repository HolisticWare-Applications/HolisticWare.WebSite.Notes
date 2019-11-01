
# Databinding

databinding.md

*   https://developer.android.com/topic/libraries/data-binding/start

*   https://medium.com/androiddevelopers/data-binding-lessons-learnt-4fd16576b719

*   https://guides.codepath.com/android/Applying-Data-Binding-for-Views


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