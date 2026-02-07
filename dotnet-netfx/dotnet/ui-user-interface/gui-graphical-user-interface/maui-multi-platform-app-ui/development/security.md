# Security

* potentional issues

    *   passwords 

        *   samples

        *   tests

    *   unsafe deserialization

*   https://github.com/guardrailsio/awesome-dotnet-security

## Tools

*   https://security-code-scan.github.io/

*   https://github.com/security-code-scan/security-code-scan

*   https://www.kristhecodingunicorn.com/post/dotnet-sca-with-security-code-scan/

*   https://github.com/dotnetarium/DotnetariumSCS

*   https://github.com/dotnetarium/Dotnetarium.Analyzers.SCS

*   https://dev.to/dbalikhin/a-quick-comparison-of-security-static-code-analyzers-for-c-2l5h


*   https://learn.microsoft.com/en-us/dotnet/fundamentals/code-analysis/quality-rules/security-warnings

*   https://dev.to/dbalikhin/a-quick-comparison-of-security-static-code-analyzers-for-c-2l5h

## Package Dependencies

### NuGet Package Auditing

*   https://learn.microsoft.com/en-us/nuget/concepts/auditing-packages

    *   https://learn.microsoft.com/en-us/nuget/concepts/auditing-packages#configuring-nuget-audit

    *   Added to MAUI for `net8.0`

    *   by default in `net9.0`


### NuGetDefense

*   https://digitalcoyote.github.io/NuGetDefense/docs/intro/

*   https://github.com/digitalcoyote/NuGetDefense

### SafeNuget

*   https://github.com/OWASP/SafeNuGet

### HolisticWare.*.OpenSourceVulnerabilities.OSV

*   NuGet auditing tools cannot verify payload in our case Maven artifacts

*   finishing PR in `dotnet/android-libraries`

    *   during/before/after binderate step

        *   checks vulnerability info for Maven artifact from https://osv.dev/ 

        *   no transitive dependencies [yet] - WIP

    *   basic queries for now

        ```shell
        curl -d \
            '{"package": {"name": "com.google.guava:guava-jdk5"}, "version": "13.0"}' \
            "https://api.osv.dev/v1/query"
        ```

        *   [response-osv.json](response-osv.json)
        
    *   SpanJson (see [./performance.md](./preformance.md))

## Developer Environment

### DevSkim

> DevSkim is a framework of IDE extensions and language analyzers that provide inline security analysis in the dev 
> environment as the developer writes code. It has a flexible rule model that supports multiple programming languages. 
> The goal is to notify the developer as they are introducing a security vulnerability in order to fix the issue at 
> the point of introduction, and to help build awareness for the developer.

*   https://github.com/Microsoft/DevSkim

    *   https://www.nuget.org/packages/Microsoft.CST.DevSkim/

    *   https://www.nuget.org/packages/Microsoft.CST.DevSkim.CLI/

        ```shell
        dotnet tool install --global Microsoft.CST.DevSkim.CLI 
        ```

        ```shell
        devskim analyze --source-code ./
        ```

        *   result

            *   [devskim.json](devskim.json)

                *   Suspicious comments (`TODO`)

                *   `Cryptography.BannedHashAlgorithm` `Insecure URL`

                *   `Cryptography.BannedHashAlgorithm` `"Weak/Broken Hash Algorithm"`

## System 

### AttackSurfaceAnalyzer

*   https://github.com/microsoft/AttackSurfaceAnalyzer

