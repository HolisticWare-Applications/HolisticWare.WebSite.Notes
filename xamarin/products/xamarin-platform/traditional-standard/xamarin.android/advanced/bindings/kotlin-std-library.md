# Kotlin Std Library

kotlin-std-library.md

*   https://github.com/xamarin/XamarinComponents/issues/493#issuecomment-486422981

*   `class-parse` crashes

*   https://github.com/JetBrains/kotlin/blob/master/libraries/tools/binary-compatibility-validator/reference-public-api/kotlin-stdlib-runtime-merged.txt#L153


*   bindings docs

    *   https://gist.github.com/JonDouglas/dda6d8ace7d071b0e8cb

    *   https://gist.github.com/brendanzagaeski/9337026

    *   https://gist.github.com/brendanzagaeski/9607158


```
/Projects/X/XamarinComponents/Android/Kotlin/source/Xamarin.Kotlin.StdLib/
BINDINGSGENERATOR: Warning BG8601: No packages found. 
```

https://github.com/JetBrains/kotlin/blob/master/libraries/tools/binary-compatibility-validator/reference-public-api/kotlin-stdlib-runtime-merged.txtc

```
/Library/Frameworks/Mono.framework/External/xbuild/Xamarin/Android/Xamarin.Android.Bindings.targets(5,5): 
Warning: class-parse: 
warning: 
method kotlin/sequences/SequencesKt__SequenceBuilderKt$sequence$$inlined$Sequence$1.<init>(Lkotlin/jvm/functions/Function2;)V: Local variables array has 0 entries ('LocalVariableTableAttribute(LocalVariableTableEntry(Name='this', Descriptor='Lkotlin/sequences/SequencesKt__SequenceBuilderKt$sequence$$inlined$Sequence$1;'))'); descriptor has 1 entries! (Xamarin.Kotlin.StdLib)
```

```
/Library/Frameworks/Mono.framework/External/xbuild/Xamarin/Android/Xamarin.Android.Bindings.targets(5,5): 
Error MSB6006: "generator.exe" exited with code 1. 
```