# C# 

csharp.md

## Online Compiler/IDE/Editor

*   https://www.tutorialspoint.com/compile_csharp_online.php

*   https://dotnetfiddle.net/

*   https://rextester.com/

*   https://repl.it/languages/csharp

*   https://www.onlinegdb.com/online_csharp_compiler

*   https://www.jdoodle.com/compile-c-sharp-online/

*   https://csharppad.com/

## Tutorials

*   https://www.learncs.org/

*   http://zetcode.com/lang/csharp/

*   https://www.w3schools.com/cs/

*   https://www.tutorialspoint.com/csharp/index.htm

*   https://docs.microsoft.com/en-us/dotnet/csharp/tutorials/

*   https://www.tutorialsteacher.com/csharp/csharp-tutorials

*   https://csharp.net-tutorials.com/getting-started/introduction/

*   https://www.guru99.com/c-sharp-tutorial.html

*   https://www.codecademy.com/learn/learn-c-sharp

*   https://www.javatpoint.com/net-framework

*   https://www.codementor.io/collections/learn-c-sharp-online-bwbavow0y

    *   https://www.homeandlearn.co.uk/csharp/csharp.html

    *   https://docs.microsoft.com/en-us/dotnet/csharp/tutorials/

*   https://dotnettutorials.net/course/csharp-dot-net-tutorials/


## Courses

*   https://www.edx.org/course/programming-with-c#


### Video Tutorials

*   https://channel9.msdn.com/Series/CSharp-Fundamentals-for-Absolute-Beginners

*   https://www.youtube.com/watch?v=GhQdlIFylQ8

*   Dev Apps

    *   https://www.youtube.com/channel/UCNv-ayYLnyEk3zhVkf_wa5A

## Exericses / Tests

*   https://www.w3resource.com/csharp-exercises/

*   https://edabit.com/challenges/csharp

*   http://www.pskills.org/csharp.jsp

*   https://www.w3schools.com/cs/cs_exercises.asp

*   https://devskiller.com/coding-tests-category/net-csharp/


## Awsome

*   https://github.com/uhub/awesome-c-sharp

*   https://github.com/danperor/awesome-csharp

*   https://github.com/thangchung/awesome-dotnet-core

*   https://github.com/quozd/awesome-dotnet

*   https://dotnet.libhunt.com/

## Blogs

*   https://damieng.com/blog/2012/10/29/8-things-you-probably-didnt-know-about-csharp

## String

*   http://www.mokhan.ca/csharp/2007/06/04/c-strings.html

*   http://resourcerefactoring.codeplex.com/

## Versions

*   https://en.wikipedia.org/wiki/C_Sharp_(programming_language)

*   versions:

    *   1.0

        *   https://docs.microsoft.com/en-us/dotnet/csharp/whats-new/csharp-version-history#c-version-10

    *   1.1 and 1.2

        *   https://docs.microsoft.com/en-us/dotnet/csharp/whats-new/csharp-version-history#c-version-12

    *   2.0

        *   https://docs.microsoft.com/en-us/dotnet/csharp/whats-new/csharp-version-history#c-version-20

    *   3.0

        *   https://docs.microsoft.com/en-us/dotnet/csharp/whats-new/csharp-version-history#c-version-30

    *   4.0

        *   https://docs.microsoft.com/en-us/dotnet/csharp/whats-new/csharp-version-history#c-version-40

    *   5.0

        *   https://docs.microsoft.com/en-us/dotnet/csharp/whats-new/csharp-version-history#c-version-50

    *   6.0

        *   https://docs.microsoft.com/en-us/dotnet/csharp/whats-new/csharp-version-history#c-version-60

    *   7.0

        *   https://docs.microsoft.com/en-us/dotnet/csharp/whats-new/csharp-version-history#c-version-70

    *   7.1

        *   https://docs.microsoft.com/en-us/dotnet/csharp/whats-new/csharp-version-history#c-version-71

    *   7.2

        *   https://docs.microsoft.com/en-us/dotnet/csharp/whats-new/csharp-version-history#c-version-72

    *   7.3

        *   https://docs.microsoft.com/en-us/dotnet/csharp/whats-new/csharp-version-history#c-version-73

    *   8.0

        *   https://docs.microsoft.com/en-us/dotnet/csharp/whats-new/csharp-8

    *   9.0

        *   https://docs.microsoft.com/en-us/dotnet/csharp/whats-new/csharp-9

    *   10.0

        *   https://docs.microsoft.com/en-us/dotnet/csharp/whats-new/csharp-10

    *   11

        *   https://docs.microsoft.com/en-us/dotnet/csharp/whats-new/csharp-11

## v.10

*   https://twitter.com/DanJSiegel/status/1448716839123488768

*   https://sharplab.io/#gist:a20498078ba7f6376fd9413a15ba9ff9

*   https://www.tabsoverspaces.com/233844-back-to-csharp-basics-difference-between-and-get-for-properties

```csharp
public class C 
{
    // defines the method body on the property getter
    // Option one is equivalent to 
    //  Foo { get { return Guid.NewGuid(); } } 
    // so new Guid every time. 
     public Guid Foo0 => Guid.NewGuid();

    // assigns the value to the property when the object is instantiated
    // Option two creates a default initializer that sets the auto backing field 
    // to Guid.NewGuid(); 
    // so same Guid every time.
     public Guid Foo1 { get; } = Guid.NewGuid(); 
}
```
