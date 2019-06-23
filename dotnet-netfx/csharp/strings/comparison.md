# C# String Comparison

comparison.md

https://www.meziantou.net/2019/03/18/string-comparisons-are-harder-than-it-seems

https://github.com/meziantou/Meziantou.Analyzer. In fact, it was the first rules I've created because it's so easy to forget them, especially for junior developers.

MA0001 - Use StringComparison parameter when possible
MA0002 - Use an overload that has a IEqualityComparer<string> parameter
MA0006 - Use string.Equals instead of == or !=
MA0020 - Use StringComparer.GetHashCode instead of string.GetHashCode
MA0024 - Do not use EqualityComparer<string>.Default


In .NET there are 6 ways to compare strings:

Ordinal:

Performs a simple byte comparison that is independent of language. This is most appropriate when comparing strings that are generated programmatically or when comparing case-sensitive resources such as passwords.

OrdinalIgnoreCase:

Treats the characters in the strings to compare as if they were converted to uppercase using the conventions of the invariant culture, and then performs a simple byte comparison that is independent of language. This is most appropriate when comparing strings that are generated programmatically or when comparing case-insensitive resources such as paths and filenames.

InvariantCulture:

Compares strings in a linguistically relevant manner, but it is not suitable for display in any particular culture. Its major application is to order strings in a way that will be identical across cultures.

InvariantCultureIgnoreCase:

Compares strings in a linguistically relevant manner that ignores case, but it is not suitable for display in any particular culture. Its major application is to order strings in a way that will be identical across cultures.

CurrentCulture:

Can be used when strings are linguistically relevant. For example, if strings are displayed to the user, or if strings are the result of user interaction, culture-sensitive string comparison should be used to order the string data.

CurrentCultureIgnoreCase:

Can be used when strings are linguistically relevant but their case is not. For example, if strings are displayed to the user but case is unimportant, culture-sensitive, case-insensitive string comparison should be used to order the string data.

It's important to explicitly specify the comparison mode to avoid unexpected behaviors, or even worse, security issues. For instance, if you compare 2 passwords using the current culture, the passwords may be equal whereas they may be actually different!

E