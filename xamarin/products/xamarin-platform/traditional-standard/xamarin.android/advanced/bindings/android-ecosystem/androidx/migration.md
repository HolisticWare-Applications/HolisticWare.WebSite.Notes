# Migration

migration.md

*   https://www.youtube.com/watch?v=Hyt7LR5mXLc

*   https://medium.com/mindorks/its-time-to-migrate-your-android-project-into-androidx-cd06e4073824

*   https://medium.com/androiddevelopers/migrating-to-androidx-tip-tricks-and-guidance-88d5de238876

*   https://medium.com/androiddevelopers/cross-stitching-plaid-and-androidx-7603a192348e

*   https://medium.com/programming-lite/androidx-migration-what-why-how-e2ace72cccaa

*   https://blog.gojekengineering.com/how-we-handled-a-large-scale-androidx-migration-5f4a2208c0a0

*   https://android.jlelse.eu/how-to-enter-into-the-androidx-realm-b9d8796b664e

*   https://proandroiddev.com/migrating-to-androidx-the-time-is-right-lets-summarize-it-f95edb33792a

*   http://www.migapro.com/androidx-migration/

*   https://www.jidoka.be/en/blog/migrateandroidx/

*   https://felgo.com/developers/forums/t/androidx-migration

*   https://www.logisticinfotech.com/blog/android-migrate-to-androidx/

### Jettifier Reverse mode

*   https://ncorti.com/blog/jetifier-reverse


## Xamarin

*   https://www.sharpnado.com/on-library-versioning/


*   https://github.com/xamarin/XamarinAndroidXMigration


migration.md

*   libraries

*   Smaples

    * Sasa and myself with projectKreator





```
System.BadImageFormatException: 
    /Users/Shared/Projects/d/X/AX-issue0064_BundleAssemblies/output/AndroidSupport.Merged.dll ---> 
System.IO.EndOfStreamException: Unable to read beyond the end of the stream.
```

```
System.BadImageFormatException: 
System.IO.EndOfStreamException: Unable to read beyond the end of the stream.
```


~/.dotnet/tools/androidx-migrator  \
    generate -v \
        --support ./output/AndroidSupport.Merged.dll \
        --androidx ./output/AndroidX.Merged.dll \
        --output ./output/mappings/androidx-mapping.csv
    