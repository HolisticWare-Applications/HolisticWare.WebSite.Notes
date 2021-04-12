# '_JniMarshal_PP_L' is inaccessible due to its protection level

_JniMarshal_PP_L-inaccessible-due-to-protection-level.md


```
'_JniMarshal_PP_L' is inaccessible due to its protection level
```

but tonight I get following error:

```
Additions/ImagelabelerOptions.cs(17,49): error CS0122: '_JniMarshal_PP_L' is inaccessible due to its protection level [/Users/runner/work/1/s/XPlat/ML.Kit/Android/source/Xamarin.GoogleFirebase.ML.Kit.ImageLabeling/Xamarin.GoogleFirebase.ML.Kit.ImageLabeling.csproj]
Additions/ImagelabelerOptions.cs(53,68): error CS0246: The type or namespace name '_JniMarshal_PPF_L' could not be found (are you missing a using directive or an assembly reference?) [/Users/runner/work/1/s/XPlat/ML.Kit/Android/source/Xamarin.GoogleFirebase.ML.Kit.ImageLabeling/Xamarin.GoogleFirebase.ML.Kit.ImageLabeling.csproj]
Additions/AutoMLImageLabelerOptions.cs(17,49): error CS0122: '_JniMarshal_PP_L' is inaccessible due to its protection level [/Users/runner/work/1/s/XPlat/ML.Kit/Android/source/Xamarin.GoogleFirebase.ML.Kit.ImageLabeling.AutoML/Xamarin.GoogleFirebase.ML.Kit.ImageLabeling.AutoML.csproj]
Additions/AutoMLImageLabelerOptions.cs(52,68): error CS0246: The type or namespace name '_JniMarshal_PPF_L' could not be found (are you missing a using directive or an assembly reference?) [/Users/runner/work/1/s/XPlat/ML.Kit/Android/source/Xamarin.GoogleFirebase.ML.Kit.ImageLabeling.AutoML/Xamarin.GoogleFirebase.ML.Kit.ImageLabeling.AutoML.csproj]
Additions/CustomImageLabelerOptions.cs(18,49): error CS0122: '_JniMarshal_PP_L' is inaccessible due to its protection level [/Users/runner/work/1/s/XPlat/ML.Kit/Android/source/Xamarin.GoogleFirebase.ML.Kit.ImageLabeling.Custom/Xamarin.GoogleFirebase.ML.Kit.ImageLabeling.Custom.csproj]
Additions/CustomImageLabelerOptions.cs(50,68): error CS0246: The type or namespace name '_JniMarshal_PPF_L' could not be found (are you missing a using directive or an assembly reference?) [/Users/runner/work/1/s/XPlat/ML.Kit/Android/source/Xamarin.GoogleFirebase.ML.Kit.ImageLabeling.Custom/Xamarin.GoogleFirebase.ML.Kit.ImageLabeling.Custom.csproj]
```




If I remove-node and copy some code to Additions.cs
I get (on previews);

```
error CS0122: '_JniMarshal_PP_L' is inaccessible due to its protection level 
````

I can switch to stable and generate code, but can I do it on preview?

those delegates would be internal and should be accessible for Additions

that change should be in 16.7, so it's in stable

trying to use it from obj\Debug\generated\src\__NamespaceMapping__.cs

it doesn't exist in __NamespaceMapping__.cs and it's trying to use one from another assembly, like Mono.Android.dll


Yeah. I am slightly surprised too. It is internal and should be available in Additions.cs.

get that error if i try to use one that isn't in __NamespaceMapping__.cs but is in Mono.Android.dll

generate only the ones the assembly needs, and since you <remove-node> the thing that needs it we no longer generate it, 
so it is trying to use the one in Mono.Android.dll

should be able to just copy/paste the Mono.Android.dll one into your Addition

```
delegate IntPtr _JniMarshal_PP_L(IntPtr jnienv, IntPtr klass);
```

