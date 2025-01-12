# Best practices

best-practices.md

*   https://learn.microsoft.com/en-us/archive/msdn-magazine/2013/march/async-await-best-practices-in-asynchronous-programming

*   https://github.com/davidfowl/AspNetCoreDiagnosticScenarios/blob/master/AsyncGuidance.md

*   https://www.reddit.com/r/dotnet/comments/1hyyzdx/help_finding_a_specific_github_repository_related/

1.  Make every method async and return Task or Task<>.

2.  The last parameter of every method is always a CancellationToken.

3.  Suffix your method names with Async.

4.  If you think you need Task.Run, you are probably wrong.

5.  You are now an async expert.