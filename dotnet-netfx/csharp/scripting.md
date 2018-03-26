# C# scripting

scripting.md

2018-03-20 basically 3 options:

1.  csi

    Installed by default with .NET/Mono

    `/Library/Frameworks/Mono.framework/Versions/Current/Commands/csi`

2.  scriptcs

    *   http://scriptcs.net/

    *   https://github.com/scriptcs/scriptcs

3.  csharp

    Installed by default with Mono

    *   http://www.mono-project.com/docs/tools+libraries/tools/repl/

    *   http://tirania.org/blog/archive/2010/Apr-27.html

    *   http://tirania.org/blog/archive/2008/Sep-08.html


## Tips & Tricks

*   for debugging and errors - enter interactive mode by entering command only

*   start of the file (preamble) is sensitive for comments and order 

    errors cause intellisense not working!



## CSI - C# Interactive

### Installation

Installed with .NET/Mono.

### Usage

#### Enter interactive mode

On Windows:

```
    C:\ csi.exe
```

On mac OSX:

```
    $ which csi
    /Library/Frameworks/Mono.framework/Versions/Current/Commands/csi
    $ csi
```

#### batch Execute csi

`csi` needs `*.csx` extensions (`*.cs` will not work)

```
    $ csi ./REPL.Demo.01.scriptcs.csx 
```

## ScriptCS

ScriptCS is superset of CSI! (packages and `#r` references)

### Installation

1.  brew

    `brew install scriptcs`

2.  build from github and setting path + aliases

    https://github.com/scriptcs/scriptcs/wiki/Building-on-Mac-and-Linux

### Installation for VS Code

Extensions needed:

*   C#

    C# for Visual Studio Code (powered by OmniSharp)

    ms-vscode.csharp
    
*   scriptcsRunner

    Runner for scriptcs (C# scripts). Allows for execution of entire CSX scripts or 
    snippets of C# code.

    filipw.scriptcsrunner

#### Installation Steps

1.  enter extensions mode

    1.  Windows press F1

    2.  MacOSX press Command+P

2.  type

    `ext install scriptcsRunner`

3.  choose `install`

#### batch Execute scriptcs

`scriptcs` works with `*.cs` and `*.csx` extensions

```
    $ scriptcs ./REPL.Demo.01.scriptcs.csx 
```



## csharp

mono utility

NOTEs:

*   syntax slightly different 

    TODO: options share code between REPLs

*   could not include/load script from another 

    TODO: 

### Usage

#### Enter interactive mode

```
    $ csharp
```

#### batch Execute ScriptCS

```
    $ csharp ./REPL.Demo.01.scriptcs.csx 
```

So to run a CSX file you need a CSX runner on your machine - kinda like to run a 
.NET Core application, you need a .NET Core installation or to run a desktop .NET 
application, you need desktop .NET installation (plus possibly Mono).

The most popular CSX runners out there are:

CSI (the official Roslyn script runner). It ships with MSBuild tools so it's likely 
already on your machine. Here is an article to help you get started. CSI works on 
windows + on Mono (no .NET Core)

scriptcs is an open source project that extends a bit the abilities of CSI (works on 
windows + on Mono (no .NET Core))

dotnet script is another open source project that allows running scripts using .NET Core 
(so specifically targeting the gap other two don't support)

So in other words, Omnisharp and VS Code in this case only support intellisense, language 
services and refactoring capabilities for CSX, but you need a runner separately.


There is CSX support already in OmniSharp (via scriptcs) and Atom uses it, and you can 
"fake-force" it in VS Code by adding an empty project.json next to your CSX. You will get 
CSX intellisense, including cross-CSX file navigation and it will respect #r directives 
and even recognize scriptcs-style NuGet references (by convention).

That said, this whole experience should be normalized (after all, scriptcs is a bit 
opinionated about some things). As I mentioned in a call a while ago I'd like to see 
"basic" CSX support as first class citizen in OmniSharp and then scriptcs (with its custom 
host and what have you), being the superset of regular CSX, could be an opt in plugin.


*   https://www.strathweb.com/2015/11/running-c-scripts-and-snippets-in-visual-studio-code-with-scriptcs/

