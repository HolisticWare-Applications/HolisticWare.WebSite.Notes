# Logging

logging.md

*   https://learn.microsoft.com/en-us/visualstudio/msbuild/obtaining-build-logs-with-msbuild


*   msbuild ErrorLog property

    ```xml
    <ErrorLog>obj/build-log-data.sarif</ErrorLog>
    ```


.. and improvements (experimental) for bindings improvements

As a result of investigation about bindings improvements this is a proposal for a method of obtaining structured data from build logs so solutions/fixes/workarounds for issues (errors, warnings) can be made either (in the order of priority)

deterministically or
non-deterministically with help of AI
strucutured build data output (SARIF format)

error fixing (troubleshooting) deterministic or AI/ML (fine tuning, RAG,...)

<ErrorLog>obj/build-log-data.sarif</ErrorLog>
reuse existing tools - build with MSBuild/Roslyn strucutred data support

SARIF build data (logs)

https://docs.github.com/en/code-security/code-scanning/integrating-with-code-scanning/sarif-support-for-code-scanning

https://docs.oasis-open.org/sarif/sarif/v2.1.0/sarif-v2.1.0.html

https://sarifweb.azurewebsites.net/

https://github.com/Microsoft/sarif-sdk