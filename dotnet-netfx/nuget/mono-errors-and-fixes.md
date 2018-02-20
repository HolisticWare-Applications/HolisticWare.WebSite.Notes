# NuGet


Cake error on Xamarin CI macOSX bot

    Executing: /Users/builder/Jenkins/workspace/Components-Generic-Build-Mac/CI/tools/Cake/../nuget.exe restore "/Users/builder/Jenkins/workspace/Components-Generic-Build-Mac/CI/Xamarin.Auth/source/source/Xamarin.Auth-Library.sln" -Verbosity detailed -NonInteractive
    MSBuild auto-detection: using msbuild version '4.0' from '/Library/Frameworks/Mono.framework/Versions/4.4.1/lib/mono/4.5'. Use option -MSBuildVersion to force nuget to use a specific version of MSBuild.
    MSBuild P2P timeout [ms]: 120000
    System.AggregateException: One or more errors occurred. ---> NuGet.CommandLineException: MsBuild.exe does not exist at '/Library/Frameworks/Mono.framework/Versions/4.4.1/lib/mono/4.5/msbuild.exe'.
    at NuGet.CommandLine.MsBuildUtility.GetProjectReferences (System.String msbuildDirectory, System.String[] projectPaths, Int32 timeOut) <0x3484bc0 + 0x00677> in <filename unknown>:0 
    at NuGet.CommandLine.RestoreCommand.DetermineRestoreInputs () <0x33ef108 + 0x002af> in <filename unknown>:0 


Cake error on local Mac

    Executing: /Projects/gl.xc.CI/Xamarin.Auth/tools/Cake/../nuget.exe restore "/Projects/gl.xc.CI/Xamarin.Auth/source/source/Xamarin.Auth-Library.sln" -Source "/Projects/gl.xc.CI/Xamarin.Auth/output;https://api.nuget.org/v3/index.json" -Verbosity detailed -NonInteractive
    MSBuild auto-detection: using msbuild version '4.0' from '/Library/Frameworks/Mono.framework/Versions/4.4.2/lib/mono/4.5'. Use option -MSBuildVersion to force nuget to use a specific version of MSBuild.
    MSBuild P2P timeout [ms]: 120000
    System.AggregateException: One or more errors occurred. ---> NuGet.CommandLineException: MsBuild.exe does not exist at '/Library/Frameworks/Mono.framework/Versions/4.4.2/lib/mono/4.5/msbuild.exe'.
    at NuGet.CommandLine.MsBuildUtility.GetProjectReferences (System.String msbuildDirectory, System.String[] projectPaths, Int32 timeOut) <0x3cab610 + 0x00677> in <filename unknown>:0 
    at NuGet.CommandLine.RestoreCommand.DetermineRestoreInputs () <0x3c15d88 + 0x002af> in <filename unknown>:0 
    at NuGet.CommandLine.RestoreCommand+<ExecuteCommandAsync>d__23.MoveNext () <0x3c14d80 + 0x0028b> in <filename unknown>:0 
    --- End of inner exception stack trace ---
    at System.Threading.Tasks.Task.ThrowIfExceptional (Boolean includeTaskCanceledExceptions) <0x1d1d960 + 0x00049> in <filename unknown>:0 
    at System.Threading.Tasks.Task.Wait (Int32 millisecondsTimeout, CancellationToken cancellationToken) <0x1d1f150 + 0x000c8> in <filename unknown>:0 
    at System.Threading.Tasks.Task.Wait () <0x1d1ef70 + 0x00033> in <filename unknown>:0 
    at NuGet.CommandLine.Command.Execute () <0x3bee208 + 0x00213> in <filename unknown>:0 
    at NuGet.CommandLine.Program.MainCore (System.String workingDirectory, System.String[] args) <0x6a0d58 + 0x005e0> in <filename unknown>:0 
    ---> (Inner Exception #0) NuGet.CommandLineException: MsBuild.exe does not exist at '/Library/Frameworks/Mono.framework/Versions/4.4.2/lib/mono/4.5/msbuild.exe'.
    at NuGet.CommandLine.MsBuildUtility.GetProjectReferences (System.String msbuildDirectory, System.String[] projectPaths, Int32 timeOut) <0x3cab610 + 0x00677> in <filename unknown>:0 
    at NuGet.CommandLine.RestoreCommand.DetermineRestoreInputs () <0x3c15d88 + 0x002af> in <filename unknown>:0 
    at NuGet.CommandLine.RestoreCommand+<ExecuteCommandAsync>d__23.MoveNext () <0x3c14d80 + 0x0028b> in <filename unknown>:0 <---

    Error: Cake.Core.CakeException: NuGet: Process returned an error (exit code 1).
    at Cake.Core.Tooling.Tool`1[TSettings].ProcessExitCode (Int32 exitCode) <0x36fd2d0 + 0x000fb> in <filename unknown>:0 
    at Cake.Core.Tooling.Tool`1[TSettings].Run (Cake.Core.Tooling.TSettings settings, Cake.Core.IO.ProcessArgumentBuilder arguments, Cake.Core.IO.ProcessSettings processSettings, System.Action`1 postAction) <0x36f9a00 + 0x00177> in <filename unknown>:0 
    at Cake.Core.Tooling.Tool`1[TSettings].Run (Cake.Core.Tooling.TSettings settings, Cake.Core.IO.ProcessArgumentBuilder arguments) <0x36f99c0 + 0x0002f> in <filename unknown>:0 
    at Cake.Common.Tools.NuGet.Restore.NuGetRestorer.Restore (Cake.Core.IO.FilePath targetFilePath, Cake.Common.Tools.NuGet.Restore.NuGetRestoreSettings settings) <0x36f92a8 + 0x0004b> in <filename unknown>:0 
    at Cake.Common.Tools.NuGet.NuGetAliases.NuGetRestore (ICakeContext context, Cake.Core.IO.FilePath targetFilePath, Cake.Common.Tools.NuGet.Restore.NuGetRestoreSettings settings) <0x36f8eb8 + 0x0012f> in <filename unknown>:0 
    at CakeBuildScriptImpl.NuGetRestore (Cake.Core.IO.FilePath targetFilePath, Cake.Common.Tools.NuGet.Restore.NuGetRestoreSettings settings) <0x36f8e78 + 0x0002b> in <filename unknown>:0 
    at CakeBuildScriptImpl+<Execute>c__AnonStorey1.<>m__1 (Cake.Core.IO.FilePath solution) <0x36f8d98 + 0x000cf> in <filename unknown>:0 
    at CakeBuildScriptImpl.Execute () <0x36f0000 + 0x024e9> in <filename unknown>:0 
    at <InteractiveExpressionClass>.Host (System.Object& $retval) <0x36de5a0 + 0x0003b> in <filename unknown>:0 
    at Mono.CSharp.Evaluator.Evaluate (System.String input, System.Object& result, System.Boolean& result_set) <0x301dc30 + 0x000ab> in <filename unknown>:0 
    at Mono.CSharp.Evaluator.Run (System.String statement) <0x301dbe0 + 0x00033> in <filename unknown>:0 
    at Cake.Scripting.Mono.MonoScriptSession.Execute (Cake.Core.Scripting.Script script) <0x32d46c8 + 0x0009f> in <filename unknown>:0 
    at Cake.Core.Scripting.ScriptRunner.Run (IScriptHost host, Cake.Core.IO.FilePath scriptPath, IDictionary`2 arguments) <0x2665398 + 0x00789> in <filename unknown>:0 
    at Cake.Commands.BuildCommand.Execute (Cake.CakeOptions options) <0x2665300 + 0x0003f> in <filename unknown>:0 
    at Cake.CakeApplication.Run (Cake.CakeOptions options) <0x2661f60 + 0x0003a> in <filename unknown>:0 
    at Cake.Program.Main () <0x707ef0 + 0x0032f> in <filename unknown>:0 


    mono ./tools/nuget.exe 
    NuGet Version: 3.4.4.1321

