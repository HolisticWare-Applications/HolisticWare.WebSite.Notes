# Lambdas - Method Groups

lambdas-method-groups.md

A lambda function is a small anonymous function. A lambda function can take any number of arguments, but can only have one expression.


https://en.wikipedia.org/wiki/Anonymous_function


method Group

    https://stackoverflow.com/questions/886822/what-is-a-method-group-in-c

    A method group is the name for a set of methods (that might be just one) - i.e. in theory the ToString method may have multiple overloads (plus any extension methods):

    compiler term for "known method name, but unknown the signature"

    Covariance and contravariance support for method groups allows for matching method signatures with delegate types. This enables you to assign to delegates not only methods that have matching signatures, but also methods that return more derived types (covariance) or that accept parameters that have less derived types (contravariance) than that specified by the delegate type. For more information, see Variance in Delegates (C#) and Using Variance in Delegates (C#)

    one can cast a method group into a delegate.

    https://docs.microsoft.com/en-us/dotnet/csharp/language-reference/language-specification/expressions

    A method group, which is a set of overloaded methods resulting from a member lookup (Member lookup). A method group may have an associated instance expression and an associated type argument list. When an instance method is invoked, the result of evaluating the instance expression becomes the instance represented by this (This access). A method group is permitted in an invocation_expression (Invocation expressions) , a delegate_creation_expression (Delegate creation expressions) and as the left hand side of an is operator, and can be implicitly converted to a compatible delegate type (Method group conversions). In any other context, an expression classified as a method group causes a compile-time error.


## Lambda expression can be simplified to method group

*   https://stackoverflow.com/questions/6662532/difference-between-lambda-expression-and-method-group

*   https://www.jetbrains.com/help/resharper/ConvertClosureToMethodGroup.html

