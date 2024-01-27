# Modern C#

modern-csharp.md

## 202401

*   Raw string literals

    ```csharp
    string xml = """
            <element attr="content">
                <body>
                </body>
            </element>
            """;    
    ```

*   Records 

    *   to make things inherently immutable and with a nice copy syntax i.e. with {}

    ```csharp
    ```

*   File scope namespaces

    ```csharp
    ```

*   Primary constructors remove a lot of boilerplate.

    ```csharp
    ```

*   Pattern matching

    ```csharp
    ```

*   Required members

*   Nullable reference 

    *   useful in preventing null reference exceptions

        *   especially in use with required members.

*   https://www.reddit.com/r/csharp/comments/18zjljh/how_much_do_you_use_the_newer_features_of_c_last/


C# 8

Nullable reference types - .... Literally all the time. I can't think of a time when I'm not using it.

Pattern matching - At least once an hour, probably more often

Default interface methods - Once a week or so

Index / Range / Span / ReadOnlySpan - At least once a week, sometimes more.

Null coalescing assignment - At least daily

Static local functions - Every couple hours, at a minimum

C# 9

Records - daily, minimum

Init only properties - daily, minimum

Target typed new expressions - Hourly, minimum

Covariant return types - weekly

C# 10

record struct - daily, minimum

Global using - weekly, minimum

file scoped namespaces - every single file

constant interpolated strings - weekly, minimum

CallerArgumentExpression - weekly, minimum

C# 11

Static abstract in interfaces - monthly

raw string literals - any time I write sql queries for dapper










Target-typed new(), file-scoped namespaces, pattern matching, and range indexers are all 



Records, pattern matching, primary constructors, collection expressions, nullable reference types with strict null checks, global usings, file scoped namespaces, tuples and destructuring, Span-type, top-level statements, 



Pattern matching, ranges, init properties, records, string interpolation, heredocs, shorthand methods and get-only properties....


The “quick” {get; set;} auto-implemented property) Newer namespace convention (namespace with a semicolon instead of wrapping entire page). Default values in classes (public string Name {get; set;} = “John Doe”;) Arrow functions, and arrow getters for get only properties (public string DisplayName => LastName + “, “ + FirstName;) I use these daily, I know there’s other stuff too that just makes things more concise. I like static Func<class, dto> = x => {….. } type notation too, I use that for Mappers.



Pattern matching, null coalescing, and collection expressions are amazing!





