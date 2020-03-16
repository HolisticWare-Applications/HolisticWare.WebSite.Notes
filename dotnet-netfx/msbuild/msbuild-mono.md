# MSBuild on mono

msbuild-on-mono.md

msbuild is now a separate component so it's not included if you just build the mono repository from 
source.

Get it from https://github.com/mono/msbuild/tree/xplat-2017-02 
(the xplat-2017-02 branch corresponds to the Mono 5.0 release).

Compile with 

    ./cibuild.sh --scope Compile --target Mono --host Mono --config Release


Install with 

    ./install-mono-prefix.sh <prefix>

msbuild relies on .NET Core 1.x to bootstrap so user needs to make sure that it is installed from 

https://dot.net/core.

