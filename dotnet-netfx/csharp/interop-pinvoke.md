# PInvoke

interop-pinvoke.md

*   https://en.wikipedia.org/wiki/Platform_Invocation_Services

*   https://msdn.microsoft.com/en-us/library/55d3thsc.aspx

*   http://www.pinvoke.net/

    *   https://marketplace.visualstudio.com/items?itemName=vs-publisher-306627.PInvokenetVisualStudioExtension

*   https://github.com/AArnott/pinvoke

*   https://github.com/jaredpar/pinvoke-interop-assistant

*   http://www.mono-project.com/docs/advanced/pinvoke/

*   PInvoke conventions for unix

    *   ftp://164.41.45.4/pub/os/DotGNU/current/pnet/doc/pinvoke.html

*   https://github.com/dotnet/ClangSharp

*   PInvoker

    *   http://www.pinvoker.com

*   P/Invoke Interop Assistant

    *   http://www.codeplex.com/clrinterop

*   P/Invoke Wizard

    *   http://www.paulyao.com/res/pinvoke/pinvoke.aspx

https://github.com/mono/CppSharp

https://sharpgentools.readthedocs.io/en/latest/index.html

https://www.nuget.org/packages/ClangSharpPInvokeGenerator

https://github.com/dotnet/clangsharp/

http://codinggorilla.domemtech.com/blog/2018/11/12/pinvoke.html

https://swig.org/

https://github.com/EgorBo/CppPinvokeGenerator

https://github.com/xoofx/CppAst.NET

https://github.com/EgorBo/CppPinvokeGenerator

https://pinvoke.net/

https://pinvokeisalive.gitbook.io/pinvoke

https://github.com/dotnet/pinvoke

https://ricardojoserf.gitbook.io/pinvoke

https://medium.com/@R3dLevy/understanding-pinvoke-in-c-and-the-difference-between-managed-and-unmanaged-code-4e3e0944c6a1

https://learn.microsoft.com/en-us/dotnet/standard/native-interop/tutorial-custom-marshaller


https://stackoverflow.com/questions/1555311/net-pinvoke-exception-handling

With P/Invoke it's safe to say there are two kinds of errors you need to handle.

Exceptions thrown by P/Invoke itself .
Errors returned by the dll's you are invoking/
With group 1 there are a couple of exceptions that can occur (not the definitive list):

EntryPointNotFoundException
ExecutionEngineException
MissingMethodException
NotSupportedException
With group 2 you need to check the return result of your P/Invoked method/function call and act appropriately. Marshal.GetLastWin32Error() comes in handy here.

This is why it's always best to create wrapper classes for any native stuff you need to use. That way you can convert your return results to exceptions and separate your managed and native code.

PInvoke

https://learn.microsoft.com/en-us/dotnet/standard/native-interop/pinvoke-source-generation

http://codinggorilla.domemtech.com/blog/2018/11/12/pinvoke.html

https://neuecc.medium.com/csbindgen-generate-c-native-code-bridge-automatically-or-modern-approaches-to-native-code-78d9f9a616fb
    
SWIG

    https://www.swig.org/
 
ClangSharpPInvokeGenerator
 
    https://github.com/dotnet/ClangSharp

CppSharp

    https://github.com/mono/CppSharp




    https://sharovarskyi.com/blog/posts/clangsharp-dotnet-interop-bindings/

    https://sharovarskyi.com/blog/posts/clangsharp-dotnet-interop-bindings/



