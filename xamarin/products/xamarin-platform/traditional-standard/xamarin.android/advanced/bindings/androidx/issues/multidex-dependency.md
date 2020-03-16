# Multidex Dependency

multidex-dependency.md

```
dotnet cake -t=clean && dotnet cake -t=ci
```

```
Starting test execution, please wait...

A total of 1 test files matched the specified pattern.
                                                                                                                                                                                                                                          [xUnit.net 00:00:01.57]     Xamarin.AndroidX.Migration.Tests.DependenciesTests.FlattensSingleDependencyCorrectly [FAIL]
                                                                                                                                                                                                                                          [xUnit.net 00:00:01.57]     Xamarin.AndroidX.Migration.Tests.DependenciesTests.FlattensNoDependenciesCorrectly [FAIL]
                                                                                                                                                                                                                                          [xUnit.net 00:00:01.57]     Xamarin.AndroidX.Migration.Tests.DependenciesTests.FlattensNoDependenciesCorrectlyWhenExcludingTopLevel [FAIL]
                                                                                                                                                                                                                                          [xUnit.net 00:00:01.58]     Xamarin.AndroidX.Migration.Tests.DependenciesTests.FlattensTripleDependencyCorrectly [FAIL]
                                                                                                                                                                                                                                            X Xamarin.AndroidX.Migration.Tests.DependenciesTests.FlattensSingleDependencyCorrectly [15ms]
  Error Message:
   Assert.Equal() Failure
Expected: String[] ["Xamarin.AndroidX.Collection", "Xamarin.AndroidX.Annotation", "Xamarin.AndroidX.Migration"]
Actual:   List<String> ["Xamarin.AndroidX.Collection", "Xamarin.AndroidX.Annotation", "Xamarin.AndroidX.Migration", "Xamarin.AndroidX.MultiDex"]
  Stack Trace:
     at Xamarin.AndroidX.Migration.Tests.DependenciesTests.FlattensSingleDependencyCorrectly() in /Users/Shared/Projects/d/X/AndroidX-updates_202002/tests/AndroidXMigrationTests/Tests/DependenciesTests.cs:line 75
                                                                                                                                                                                                                                            X Xamarin.AndroidX.Migration.Tests.DependenciesTests.FlattensNoDependenciesCorrectly [2ms]
  Error Message:
   Assert.Equal() Failure
Expected: String[] ["Xamarin.AndroidX.Annotation", "Xamarin.AndroidX.Migration"]
Actual:   List<String> ["Xamarin.AndroidX.Annotation", "Xamarin.AndroidX.Migration", "Xamarin.AndroidX.MultiDex"]
  Stack Trace:
     at Xamarin.AndroidX.Migration.Tests.DependenciesTests.FlattensNoDependenciesCorrectly() in /Users/Shared/Projects/d/X/AndroidX-updates_202002/tests/AndroidXMigrationTests/Tests/DependenciesTests.cs:line 52
                                                                                                                                                                                                                                            X Xamarin.AndroidX.Migration.Tests.DependenciesTests.FlattensNoDependenciesCorrectlyWhenExcludingTopLevel [2ms]
  Error Message:
   Assert.Equal() Failure
Expected: String[] ["Xamarin.AndroidX.Migration"]
Actual:   List<String> ["Xamarin.AndroidX.Migration", "Xamarin.AndroidX.MultiDex"]
  Stack Trace:
     at Xamarin.AndroidX.Migration.Tests.DependenciesTests.FlattensNoDependenciesCorrectlyWhenExcludingTopLevel() in /Users/Shared/Projects/d/X/AndroidX-updates_202002/tests/AndroidXMigrationTests/Tests/DependenciesTests.cs:line 145
                                                                                                                                                                                                                                            X Xamarin.AndroidX.Migration.Tests.DependenciesTests.FlattensTripleDependencyCorrectly [2ms]
  Error Message:
   Assert.Equal() Failure
Expected: String[] ["Xamarin.AndroidX.VersionedParcelable", "Xamarin.AndroidX.Annotation", "Xamarin.AndroidX.Collection", "Xamarin.AndroidX.Migration"]
Actual:   List<String> ["Xamarin.AndroidX.VersionedParcelable", "Xamarin.AndroidX.Annotation", "Xamarin.AndroidX.Collection", "Xamarin.AndroidX.Migration", "Xamarin.AndroidX.MultiDex"]
  Stack Trace:
     at Xamarin.AndroidX.Migration.Tests.DependenciesTests.FlattensTripleDependencyCorrectly() in /Users/Shared/Projects/d/X/AndroidX-updates_202002/tests/AndroidXMigrationTests/Tests/DependenciesTests.cs:line 124
                                                                                                                                                                                                                                          [xUnit.net 00:00:01.59]     Xamarin.AndroidX.Migration.Tests.DependenciesTests.FlattensSingleDependencyCorrectlyWhenExcludingTopLevel [FAIL]
                                                                                                                                                                                                                                          [xUnit.net 00:00:01.59]     Xamarin.AndroidX.Migration.Tests.DependenciesTests.FlattensSharedDependencyCorrectly [FAIL]
                                                                                                                                                                                                                                          [xUnit.net 00:00:01.60]     Xamarin.AndroidX.Migration.Tests.DependenciesTests.XamarinFormsTopLevelPackagesExpandToAll [FAIL]
                                                                                                                                                                                                                                          [xUnit.net 00:00:01.60]     Xamarin.AndroidX.Migration.Tests.DependenciesTests.FlattensSharedDependencyCorrectlyWhenExcludingTopLevel [FAIL]
                                                                                                                                                                                                                                            X Xamarin.AndroidX.Migration.Tests.DependenciesTests.FlattensSingleDependencyCorrectlyWhenExcludingTopLevel [1ms]
  Error Message:
   Assert.Equal() Failure
Expected: String[] ["Xamarin.AndroidX.Annotation", "Xamarin.AndroidX.Migration"]
Actual:   List<String> ["Xamarin.AndroidX.Annotation", "Xamarin.AndroidX.Migration", "Xamarin.AndroidX.MultiDex"]
  Stack Trace:
     at Xamarin.AndroidX.Migration.Tests.DependenciesTests.FlattensSingleDependencyCorrectlyWhenExcludingTopLevel() in /Users/Shared/Projects/d/X/AndroidX-updates_202002/tests/AndroidXMigrationTests/Tests/DependenciesTests.cs:line 167
                                                                                                                                                                                                                                            X Xamarin.AndroidX.Migration.Tests.DependenciesTests.FlattensSharedDependencyCorrectly [2ms]
  Error Message:
   Assert.Equal() Failure
Expected: String[] ["Xamarin.AndroidX.Collection", "Xamarin.AndroidX.CursorAdapter", "Xamarin.AndroidX.Annotation", "Xamarin.AndroidX.Migration"]
Actual:   List<String> ["Xamarin.AndroidX.Collection", "Xamarin.AndroidX.CursorAdapter", "Xamarin.AndroidX.Annotation", "Xamarin.AndroidX.Migration", "Xamarin.AndroidX.MultiDex"]
  Stack Trace:
     at Xamarin.AndroidX.Migration.Tests.DependenciesTests.FlattensSharedDependencyCorrectly() in /Users/Shared/Projects/d/X/AndroidX-updates_202002/tests/AndroidXMigrationTests/Tests/DependenciesTests.cs:line 100
                                                                                                                                                                                                                                            X Xamarin.AndroidX.Migration.Tests.DependenciesTests.XamarinFormsTopLevelPackagesExpandToAll [3ms]
  Error Message:
   Assert.Equal() Failure
Expected: String[] ["Xamarin.AndroidX.Activity", "Xamarin.AndroidX.Annotation", "Xamarin.AndroidX.AppCompat", "Xamarin.AndroidX.AppCompat.Resources", "Xamarin.AndroidX.Arch.Core.Common", ...]
Actual:   List<String> ["Xamarin.AndroidX.Activity", "Xamarin.AndroidX.Annotation", "Xamarin.AndroidX.AppCompat", "Xamarin.AndroidX.AppCompat.Resources", "Xamarin.AndroidX.Arch.Core.Common", ...]
  Stack Trace:
     at Xamarin.AndroidX.Migration.Tests.DependenciesTests.XamarinFormsTopLevelPackagesExpandToAll() in /Users/Shared/Projects/d/X/AndroidX-updates_202002/tests/AndroidXMigrationTests/Tests/DependenciesTests.cs:line 317
                                                                                                                                                                                                                                            X Xamarin.AndroidX.Migration.Tests.DependenciesTests.FlattensSharedDependencyCorrectlyWhenExcludingTopLevel [1ms]
  Error Message:
   Assert.Equal() Failure
Expected: String[] ["Xamarin.AndroidX.Annotation", "Xamarin.AndroidX.Migration"]
Actual:   List<String> ["Xamarin.AndroidX.Annotation", "Xamarin.AndroidX.Migration", "Xamarin.AndroidX.MultiDex"]
  Stack Trace:
     at Xamarin.AndroidX.Migration.Tests.DependenciesTests.FlattensSharedDependencyCorrectlyWhenExcludingTopLevel() in /Users/Shared/Projects/d/X/AndroidX-updates_202002/tests/AndroidXMigrationTests/Tests/DependenciesTests.cs:line 190
Test run in progress.WARNING: Overwriting results file: /Users/Shared/Projects/d/X/AndroidX-updates_202002/output/test-results/Xamarin.AndroidX.Migration.Tests.trx                                                                       
Results File: /Users/Shared/Projects/d/X/AndroidX-updates_202002/output/test-results/Xamarin.AndroidX.Migration.Tests.trx
                                                                                                                                                                                                                                          
Test Run Failed.
Total tests: 211
     Passed: 203
     Failed: 8
 Total time: 24.8527 Seconds
An error occurred when executing task 'migration-tests'.
Error: One or more errors occurred. (.NET Core CLI: Process returned an error (exit code 1).)
	.NET Core CLI: Process returned an error (exit code 1).
```

Tests do not expect `Xamarin.AndroidX.Migration`, so removing comments:

```
sed -i '.mc++' \
    's/\/\/\"Xamarin\.AndroidX\.MultiDex\"\,/\"Xamarin\.AndroidX\.MultiDex\"\,/g' \
    ./tests/AndroidXMigrationTests/Tests/DependenciesTests.cs
```

Running build again. (Nothing but unit test changed)

```
dotnet cake -t=clean && dotnet cake -t=ci
```

Including `Xamarin.AndroidX.MultiDex`:

```
sed -i '.mc++' \
    's/\/\/\"Xamarin\.AndroidX\.MultiDex\"\,/\"Xamarin\.AndroidX\.MultiDex\"\,/g' \
    ./tests/AndroidXMigrationTests/Tests/DependenciesTests.cs
```

Excluding `Xamarin.AndroidX.MultiDex`:

```
sed -i '.mc++' \
    's/\"Xamarin\.AndroidX\.MultiDex\"\,/\/\/\"Xamarin\.AndroidX\.MultiDex\"\,/g' \
    ./tests/AndroidXMigrationTests/Tests/DependenciesTests.cs
```
