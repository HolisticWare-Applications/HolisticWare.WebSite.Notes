# Size

https://stackoverflow.com/questions/35321742/android-proguard-most-aggressive-optimizations

https://stackoverflow.com/questions/65279153/enabling-proguard-and-code-minification-and-obfuscation



In a .NET for Android (or .NET MAUI Android) project, generated .dex (Dalvik Executable) files are stored in the 
intermediate output directory during the build process, typically located at 

obj\<Configuration>\<TargetFramework>\android\bin\.

Build Location DetailsPath: 

    obj\<Configuration>\<TargetFramework>\android\bin\
    
(for example, obj\Debug\net9.0-android\android\bin\classes.dex)Files generated: 

classes.dex and, if multidex is active, additional files like classes2.dex.

Process: During compilation, .NET for Android compiles C# and Java sources via javac and converts the output bytecode 
into .dex format using d8 or r8 before packaging everything into the final APK or AAB.If you are trying to troubleshoot 
a build error, locate dex files inside a packaged APK, or configure multidex, let me know and I can provide more specific 
steps.

https://github.com/dotnet/android/blob/master/Documentation/guides/D8andR8.md

https://github.com/dotnet/android/issues/2040

https://learn.microsoft.com/en-us/dotnet/android/building-apps/build-properties

