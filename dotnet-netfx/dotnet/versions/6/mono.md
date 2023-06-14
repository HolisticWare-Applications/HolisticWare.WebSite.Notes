# Mono

mono.md

*   was an open source cross platform implementation of .net framework, 

    *   back in 2002 onwards. 
    
    *   optional runtime for .net core
    
        *   Since 2020 
        
            *   supporting platforms the original runtime (coreclr) doesn't
        
                *   mobile or 
            
                *   Web Browser Runtime - WASM 
            
                *   weird cpu arches 
            
                    *   embedded

                    *   exotic

*   hasn't seen feature development as a Framework implementation since 2020

*   when using .NET Maui, do I still need to consider using Mono? Maui is designed to be cross platform it seems, but I'm wondering if Mono is  important to use with Maui.
To give a little context I'm making a cross platform file explorer Maui app. So that means it should support Windows/Mac/Linux/Android/Iphone

when using MAUI 

- code will be built with .NET Core (dotnet build runs on top of  coreclr)

- binaries will be run by the runtime which depends on the type of device/simulator/emulator 

  - iOS/Android - mono runtime

  - WebAssembly - mono runtime

  - desktop[s] - coreclr

one doesn't have to think about it

Maui is already using mono as the runtime on several platforms, silently..you don't have to think about it

So does that mean that using things such as System.IO.FileSystemInfo should work the same across platforms?
yes, broadly speaking. obviously you can't use "c:\foo" as a path on non-windows (use environment.specialfolders, that's mapped on each system). also, avoid using backslashes by hand ("a\b\c"), use path.combine(a,b,c)


