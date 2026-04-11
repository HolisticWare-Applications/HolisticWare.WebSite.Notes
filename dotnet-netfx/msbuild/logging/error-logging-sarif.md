# SARIF

error-logging-sarif.md

```xml
    <ErrorLog>obj/build-log-data.sarif</ErrorLog>
```


*   msbuild

    *   ErrorLog Sarif

*   https://github.com/Microsoft/sarif-sdk

*   ideas

    *   improvements (experimental) for bindings improvements

As a result of investigation about bindings improvements this is a proposal for a method of obtaining structured data 
from build logs so solutions/fixes/workarounds for issues (errors, warnings) can be made either (in the order of priority)

*   deterministically or

*   non-deterministically with help of AI strucutured build data output (SARIF format)

*   error fixing (troubleshooting) deterministic or AI/ML (fine tuning, RAG,...)

```xml
    <ErrorLog>obj/build-log-data.sarif</ErrorLog>
```

*   reuse existing tools - build with MSBuild/Roslyn strucutred data support

## SARIF build data (logs)

*   https://docs.github.com/en/code-security/code-scanning/integrating-with-code-scanning/sarif-support-for-code-scanning

*   https://docs.oasis-open.org/sarif/sarif/v2.1.0/sarif-v2.1.0.html

*   https://sarifweb.azurewebsites.net/

*   https://github.com/Microsoft/sarif-sdk


```xml
<UseStructuredOutput>true</UseStructuredOutput>
```

*   https://www.meziantou.net/how-to-output-a-sarif-file-from-a-dotnet-project.htm

*   https://github.com/dotnet/roslyn/issues/24319

*   https://www.reddit.com/r/dotnet/comments/zagalv/code_analysis_in_net7_how_to_get_the_warnings_as/

*   https://json-schema.org/tools

```
https://www.schemastore.org/sarif-2.1.0.json
https://www.schemastore.org/sarif-2.0.0.json
https://www.schemastore.org/sarif-1.0.0.json
https://www.schemastore.org/aspire-8.0.json
```