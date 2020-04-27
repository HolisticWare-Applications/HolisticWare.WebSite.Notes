# XamarinAndroidXMigration

xamarin-androidx-migration.md


*   2019-03-12

    *    last attempt - threw away all attempts to integrate old code

```
rm -fr XamarinAndroidXMigration/
git clone --recursive https://github.com/xamarin/XamarinAndroidXMigration.git
cd XamarinAndroidXMigration/
sh ./build.sh
```

output

```
========================================
NativeAssets
========================================

========================================
externals
========================================
An error occurred when executing task 'externals'.
Error: One or more errors occurred. (One or more errors occurred. (Could not find a part of the path "/Projects/X/XamarinAndroidXMigration/Jetifier/native/jetifier-standalone.zip".))
	One or more errors occurred. (Could not find a part of the path "/Projects/X/XamarinAndroidXMigration/Jetifier/native/jetifier-standalone.zip".)
An error occurred when executing task 'NativeAssets'.
Error: One or more errors occurred. (Cake: Process returned an error (exit code 1).)
	Cake: Process returned an error (exit code 1).
```

*It works here*