# Linking

linking.md

```
[assembly: Preserve(typeof(Xamarin.Auth.Account), AllMembers = true)]
```

*   https://docs.microsoft.com/en-us/xamarin/cross-platform/deploy-test/linker


```
<linker>
    <assembly fullname="mscorlib">
        <type fullname="System.Environment">
            <field name="mono_corlib_version" />
            <method name="get_StackTrace" />
        </type>
    </assembly>
    <assembly fullname="My.Own.Assembly">
        <type fullname="Foo" preserve="fields">
            <method name=".ctor" />
        </type>
        <type fullname="Bar">
            <method signature="System.Void .ctor(System.String)" />
            <field signature="System.String _blah" />
        </type>
        <namespace fullname="My.Own.Namespace" />
        <type fullname="My.Other*" />
    </assembly>
</linker>
```

```
<ItemGroup>
  <LinkDescription Include="LinkDescriptionFile.xml" />
</ItemGroup>
```

App, not library project, Additional `mtouch` arguments:

```
--xml=${ProjectDir}/LinkDescription.xml
```

Or edit project:

```
    <MtouchExtraArgs>--xml=${ProjectDir}/LinkDescription.xml</MtouchExtraArgs>
```

## Links / References

*   https://github.com/VincentH-Net/QuickCross/blob/master/SampleApp.ios/QuickCross/LinkDescription.xml

*   https://xamarinhelp.com/xamarin-linker/

