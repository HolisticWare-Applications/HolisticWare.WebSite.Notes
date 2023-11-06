# C# Operators

operators.md

## null forgiving operator - Postfix ! (exclamation)


Postfix ! (exclamation) operator in C#

```csharp
SomeObject foo = other_object!.DoSomething();
```

It tells the compiler "this isn't null, trust me" "`other_object` isn't `null`", so it does 
not issue a warning for a  possible null reference.

https://learn.microsoft.com/en-us/dotnet/csharp/language-reference/operators/null-forgiving

