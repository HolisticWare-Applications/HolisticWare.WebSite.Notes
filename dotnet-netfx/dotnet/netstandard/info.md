# Info

info.md

*   Standard 

    *   not an implementation

    *   similar to interface

    *   set of LCD least common denominator rules for platforms/runtimes

        *   platform/runtime can implement more

*   runtime 

    *   not possible to run on Standard

    *   running only on runtime

    *   runitme - Standard implementation

        *   .NET framework

        *   .NET Core

        *   Mono



## 

```
how does the standard get the ConfigurationFile if it does not have config?

exemple it's System.Configuration.ConfigurationManager.AppSettings["MibClientBootstrapAppName"] in st
antard work
using https://www.nuget.org/packages/System.Configuration.ConfigurationManager

Matthijs ter Woord @mterwoord 15:57
standard is not an implementation

Edinei Cavalcanti @neiesc 16:00
so this line System.Configuration.ConfigurationManager.AppSettings["MibClientBootstrapAppName"] don't work in standard?

Joseph Musser @jnm2 16:00
You can't run on standard. You can only run on a runtime, e.g. Core or Mono or .NET Framework.
Like Matthijs says, think of .NET Standard as an interface and .NET Core, Mono and .NET Framework as implementations of that interface.

net standard is a set of rules: defines contracts on what a platform (mono, .net 4.7, .net 4.8, .net core 2.2, .net core 2.1) should support to be compliant to the standard
it can implement more (wpf, for example is not in standard)
your .exe is specific for a runtime
ie, it targets .net 4.7.2, or .net core 2.1, or xamarin android
```
