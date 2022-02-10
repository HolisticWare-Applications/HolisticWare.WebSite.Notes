# Metadata node removal (remove-node) causes `_JniMarshal_*` is inaccessible due to its protection level 

metadata-node-removal-remove-node-causes--jnimarshal-is-inaccessible-due-to-its-protection-level.md

1.  remove-node 

2.  copy generated-removed before removal (build) code to Additions.cs

3.  `error CS0122: '_JniMarshal_PP_L' is inaccessible due to its protection level `

4.  delegates would be internal and should be accessible for Additions
    that change should be in 16.7, so it's in stable

5.  trying to use it from `obj\Debug\generated\src\__NamespaceMapping__.cs`

6.  it doesn't exist in __NamespaceMapping__.cs and it's trying to use one from another assembly, like 
    `Mono.Android.dll`

7.  error happens if i try to use one that isn't in `__NamespaceMapping__.cs` but is in `Mono.Android.dll`

8.   generator generate only the ones the assembly needs, and since you <remove-node> the thing that needs 
    it we no longer generate it, so it is trying to use the one in `Mono.Android.dll`

9.  just copy/paste the Mono.Android.dll one into your Addition 

    ```
    delegate IntPtr _JniMarshal_PP_L(IntPtr jnienv, IntPtr klass);
    ```

## [Re]Solution / Workaaround

1.  generate code without offending `remove-node`

2.  generate code with `remove-node` note with `_JniMarshal_*` is missing/inaccessible

3.  copy missing `delegate IntPtr _JniMarshal_` code to additions C# file[s].

    ```
    delegate IntPtr _JniMarshal_PP_L(IntPtr jnienv, IntPtr klass);
    ```


*   removed 2 methods and re-added them as Additions/

```
/Users/Shared/Projects/d/tmp/msal-bogdan/src/bindings/Microsoft.Identity.Client.XamarinAndroid.AndroidX/Additions/SingleAccountPublicClientApplication.cs(206,206): Error CS0122: '_JniMarshal_PPLLLLL_V' is inaccessible due to its protection level (CS0122) (Microsoft.Identity.Client.XamarinAndroid.AndroidX)
```

*   the delegate won't get generated in Microsoft.Identity.Client.XamarinAndroid.AndroidX because generator doesn't know  about your Addition.  

*   copy a _JniMarshal_PPLLLLL_V you find generated in other libraries into your Additions

*   The signature is encoded in the name, so finding a same named one will work