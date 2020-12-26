# Static Analyzers

static-analyzers.md


*   https://en.wikipedia.org/wiki/List_of_tools_for_static_code_analysis

*   Infer#

    *   interfrace

        *   docker

        *   github action 

        *   no commandline 

    *   https://github.com/microsoft/infersharp
    
    *   https://devblogs.microsoft.com/dotnet/infer-interprocedural-memory-safety-analysis-for-c/
    
    *   https://www.infoq.com/news/2020/12/infersharp-sil-dotnet/

*   Sonarcube

    *   https://www.sonarqube.org/features/multi-languages/csharp

*   FXCopAnalyzers

    Created by Microsoft, a set of analyzers, called Microsoft.CodeAnalysis.FxCopAnalyzers, that contains the 
    most important “FxCop” rules from static code analysis, converted to Roslyn analyzers. These analyzers check 
    your code for security, performance, and design issues, among others.

    You can install these FxCop analyzers either as a NuGet package or as a VSIX extension to Visual Studio.

    *   https://www.nuget.org/packages/Microsoft.CodeAnalysis.FxCopAnalyzers

*   StyleCopAnalyzers

    An implementation of StyleCop rules using the .NET Compiler Platform. It helps in enforcing standard style 
    for code.

    *   https://www.nuget.org/packages/StyleCop.Analyzers/

    *   https://github.com/DotNetAnalyzers/StyleCopAnalyzers

*   Security Code Scan

    Detects various security vulnerability patterns: SQL Injection, Cross-Site Scripting (XSS), 
    Cross-Site Request Forgery (CSRF), XML eXternal Entity Injection (XXE), etc.

    *   https://security-code-scan.github.io/

*   Roslynator 2019

    A collection of 500+ analyzers, refactorings, and fixes for C#, powered by Roslyn.
    
    *   https://github.com/JosefPihrt/Roslynator

        ```
        dotnet tool install --global Roslynator.DotNet.Cli --version 0.1.1
        ```

*   AsyncFixer

    AsyncFixer helps developers in finding and correcting common async/await misuses (anti-patterns). 
    AsyncFixer was tested with hundreds of open-source C# apps and successfully handles many corner cases. 

    *   http://www.asyncfixer.com/

    Here are anti-patterns that AsyncFixer can detect:

    Nugget — https://www.nuget.org/packages/AsyncFixer

    *   https://marketplace.visualstudio.com/items?itemName=SemihOkur.AsyncFixer

*   Web API analyzers

    ASP.NET Core 2.2 and later includes the Microsoft.AspNetCore.Mvc.Api.Analyzers NuGet package containing 
    analyzers for web APIs.

    *   https://www.nuget.org/packages/Microsoft.AspNetCore.Mvc.Api.Analyzers

*   SonarAnalyzer

    Analyzers which spot bugs and code smells in your code.

    *   https://www.sonarqube.org/

    *   https://www.nuget.org/packages/SonarAnalyzer.CSharp

*   NSubstitute.Analyzers.CSharp

    Provides diagnostic analyzers to warn about incorrect usage of NSubstitute in C#.

    *   https://www.nuget.org/packages/NSubstitute.Analyzers.CSharp

*   xUnit.net [Code Analyzers]

    Code Analyzers for projects using xUnit.net that help finds and fix frequent issues when 
    writing tests.

    *   https://www.nuget.org/packages/xunit.analyzers

*   Microsoft.CodeQuality.Analyzers

    *   CodeQuality Analyzers

    *   https://www.nuget.org/packages/Microsoft.CodeQuality.Analyzers

*   Microsoft.CodeAnalysis.VersionCheckAnalyzer

    *   Microsoft.CodeAnalysis Version Check Analyzer

    *   https://www.nuget.org/packages/Microsoft.CodeAnalysis.VersionCheckAnalyzer

    *   Few more analyzers — https://github.com/dotnet/roslyn-analyzers





Such as SonarAnalyzer, XUnit Analyzers, Code Cracker, FxCop and StyleCop can do this analysis relatively easily is due to the unique way that the Roslyn compiler has been created. As shown below, rather than being a black box, the compiler and tools are provided as a series of APIs and services. These tools can use the compiler APIs both to identify problem code and to generate replacements.




https://www.infoq.com/news/2020/01/roslynator-analyzers-231/


https://docs.microsoft.com/en-us/dotnet/csharp/roslyn-sdk/compiler-api-model


https://zimmergren.net/code-analysis-tools-for-azure-developers-coding-dotnet-core/


    AsyncFixer
    SecurityCodeScan
    DevSkim
    https://github.com/microsoft/DevSkim
    Microsoft.CST.DevSkim
    Roslynator.Analyzers
        http://pihrt.net/Roslynator
    SonarLint and SonarAnalyzer
    https://rules.sonarsource.com/csharp
    SonarAnalyzer.CSharp

    RefactoringEssentials
        RefactoringEssentials
        https://github.com/icsharpcode/RefactoringEssentials

    FxCopAnalyzers
    Microsoft.CodeAnalysis.FxCopAnalyzers

Checkmarx
Fortify
Veracode (NB their approach is different in that it looks at the binary rather than source)

https://stackoverflow.com/questions/39016631/static-code-analysis-tool-for-net-core





https://docs.microsoft.com/en-us/visualstudio/code-quality/roslyn-analyzers-overview?view=vs-2019

https://docs.microsoft.com/en-us/dotnet/fundamentals/code-analysis/overview

https://github.com/SonarSource/sonar-dotnet

https://www.sonarqube.org/downloads/

https://github.com/dotnet/roslyn

https://stackoverflow.com/questions/38635/what-static-analysis-tools-are-available-for-c

https://github.com/DotNetAnalyzers/AsyncUsageAnalyzers

https://www.codeproject.com/articles/1105684/four-csharp-code-analyzers-that-are-worth-your-tim

https://medium.com/@cmendibl3/net-core-code-analysis-and-stylecop-675b625ff34b

https://arminreiter.com/2016/08/use-code-analyzers-csharp-improve-code-quality/
