# Error APT0000 reference is private failed linking references

error-aapt0000-reference0-is-private-failed-linking-references.md

```
(_UpdateAndroidResgen target) -> 
  ./samples/all/GpsBuildAll/obj/Release/resourcecache/86F720BC415EE4F5EE60E36578986B2F/res/values/attrs.xml(58): 
  error APT0000: 
    resource 
        android:attr/preserveIconSpacing 
    is private. 
  /Library/Frameworks/Mono.framework/External/xbuild/Xamarin/Android/Xamarin.Android.Common.targets(1699,2): 
  error APT0000: 
        failed linking references.
  ```

*   d8 - no good.

*   r8 - no good

*   d8 + r8 - no good

```
    <PackageReference Include="Xamarin.Android.Support.v4" Version="">
        <PrivateAssets>None</PrivateAssets>
    </PackageReference>
    <PackageReference Include="Xamarin.Android.Support.v7.AppCompat" Version="">
        <PrivateAssets>None</PrivateAssets>
    </PackageReference>
```

*   present `Xamarin.Android.Support.v7.AppCompat`

*   solution

    1.  either remove `Xamarin.Android.Support.v7.AppCompat`

    2.  or add `Xamarin.Android.Support.v7.AppCompat`


## References/Links

*   https://stackoverflow.com/questions/45865366/cardslib-error-resource-androidattr-foregroundinsidepadding-is-private-while-ta