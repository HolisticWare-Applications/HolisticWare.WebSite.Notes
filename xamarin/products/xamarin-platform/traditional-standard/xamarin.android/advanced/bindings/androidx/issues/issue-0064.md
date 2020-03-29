# Issue 0064: `System.IO.FileNotFoundException` when `BundleAssemblies=True`</BundleAssemblies> #64`

issue-0064.md

Morn team

@jonp

Following issue *`System.IO.FileNotFoundException` when `BundleAssemblies=True`* is out of my league.
I know it is Assembly bundling:

https://docs.microsoft.com/en-us/xamarin/android/deploy-test/release-prep/?tabs=windows#bundle-assemblies-into-native-code

but I don't think it is enterprise version or preview issue...

There are several users reporting this issue:

https://github.com/xamarin/AndroidX/issues/64

 There are several repro samples, which I was able to reproduce, but issue itself has very little with bindings. It seems more like build step.

