
# Kotlin 1.6.0 fixes

kotlin-1.6.0-fixes.md

As you know my binding R&R (rules and recommendations) are:

*   try not to `remove-node`

*   change only `managedType` and `managedReturn` (only as last resort)


So, using `managedReturn` 

```
  <attr
    path="/api/package[@name='kotlin']/class[@name='UShortArray']/method[@name='get-Mh2AYeg' and count(parameter)=2 and parameter[1][@type='short[]'] and parameter[2][@type='int']]"
    name="managedReturn"
    >
    short
  </attr>
```

causes:

> Removed method:
>
> ```csharp
> public static ushort Get (short[] _this, int index);
> ```

while 

```
  <attr
    path="/api/package[@name='kotlin']/class[@name='UShortArray']/method[@name='get-Mh2AYeg' and count(parameter)=2 and parameter[1][@type='short[]'] and parameter[2][@type='int']]"
    name="managedReturn"
    >
    ushort
  </attr>
```

causes:

```
/Users/Shared/Projects/d/X/AX/mu-20211216-androidx-window-1.0.0-rc1/generated/org.jetbrains.kotlin.kotlin-stdlib/obj/Debug/monoandroid12.0/generated/src/Kotlin.UShortArray.cs(186,12): error CS0266: Cannot implicitly convert type 'short' to 'ushort'. An explicit conversion exists (are you missing a cast?) [/Users/Shared/Projects/d/X/AX/mu-20211216-androidx-window-1.0.0-rc1/generated/org.jetbrains.kotlin.kotlin-stdlib/org.jetbrains.kotlin.kotlin-stdlib.csproj]
```

Workaround could be to `remove-node` and use generated code in `Additions/` with explicit cast.