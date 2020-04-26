# Guava

guava.md

https://github.com/xamarin/XamarinComponents/commit/5dda58eb6f7fd8f0f3374b37c5d424a552da34be#diff-de6c324ea8efa9973accbabba02f3f09R56-R58

```
```

https://github.com/brendanzagaeski/XamarinComponents/commit/4280ac6cad94a6cb9b17c44bd32f49846e072eea#commitcomment-38441617

More contexts (for documentation and reference):

https://github.com/xamarin/GooglePlayServicesComponents#317

```
"D:\X\GPS-FB-ax\samples\all\BuildAll.sln" (Build target) (1) ->
"D:\X\GPS-FB-ax\samples\all\FbAll\FbBuildAll.csproj" (default target) (3) ->
(_CompileToDalvikWithD8 target) ->
  R8 : error : Program type already present: com.google.common.util.concurrent.ListenableFuture [D:\X\GPS-FB-ax\samples\all\FbAll\FbBuildAll.csproj]
```

The root cause to change ReferenceJar to EmbeddedReferenceJar was following R8 error during build of 
samples for AndroidX:

```
R8 : warning : Missing class: java.lang.ClassValue [/Users/Shared/Projects/d/X/AndroidX-updates_202002/samples/BuildAll/BuildAll/BuildAll.csproj]
8 : error : Compilation can't be completed because some library classes are missing. [/Users/Shared/Projects/d/X/AndroidX-updates_202002/samples/BuildAll/BuildAll/BuildAll.csproj]
```

Changing ReferenceJar to EmbeddedReferenceJar solved that issue. Why? No idea. I haven't had time to dig deeper into that.

In the meantime I found that java.lang.ClassValue is in java/kotlin world solved by proguard rules:

```
-dontwarn java.lang.ClassValue
```

The problem is that those errors pop out in different "stages" (branches) of the AndroidX and GPS-FB bindings, which map to 
update at some specific date-time and if tooling changes (IDE or Xamarin.Android updates) it can happend that I cannot 
reproduce that.



GPS-FB with AndroidX dependencies:

Building ci target fails with:

```
R8 : error : Program type already present: com.google.common.util.concurrent.ListenableFuture 
[D:\X\GPS-FB-ax\samples\all\FbAll\FbBuildAll.csproj]
```

*   https://github.com/xamarin/GooglePlayServicesComponents/issues/317

Opening sample[s] GpsBuildAll and FbBuildAll in IDE and buid them ends with 100 ACW errors about missing 
classes and packages:

https://github.com/xamarin/GooglePlayServicesComponents/issues/315

This 2nd one is confusing with respect to "missing packages" and they are there!?!?

https://github.com/thudugala/Plugin.LocalNotification/issues/72#issuecomment-586668645

https://github.com/xamarin/AndroidX/issues/74

https://github.com/xamarin/XamarinComponents/pull/811

https://github.com/brendanzagaeski/XamarinComponents/commit/4280ac6cad94a6cb9b17c44bd32f49846e072eea



https://xamarinhq.slack.com/archives/C03CEGRUW/p1584028327008400

https://xamarinhq.slack.com/archives/C03CEGRUW/p1585671831200600

https://xamarinhq.slack.com/archives/C03CEGRUW/p1585126222006000

https://xamarinhq.slack.com/archives/C03CEGRUW/p1583853225338400

https://xamarinhq.slack.com/archives/C03CEGRUW/p1583846440325200



I talked with Jon a bit about Guava problem, so we went through the PR/commits you did and my bindings.
In this comment is what he suggests:
https://github.com/xamarin/GooglePlayServicesComponents/issues/317#issuecomment-613526574
But we are (he is) not sure that this would work.
Just as suggestion/idea.

Comment on #317 GPS + FB Build All samples with Cake script - R8 ACW error (sample built with Cake 
script `ci` target or `samples` target)

```
  R8 : error : Program type already present: com.google.common.util.concurrent.ListenableFuture [D:\X\GPS-FB-ax\samples\all\FbAll\FbBuildAll.csproj]
```

I believe the problem is caused by an App project referencing both the `Xamarin.Google.Guava.ListenableFuture` 
and `Xamarin.Google.Guava` NuGet packages, which each provide the com.google.common.util.concurrent.ListenableFuture 
type.

A solution is a variation of Don't Do That™: if both packages are provided, only one of the .jar files should 
actually be referenced.
How do we do that?
A possible solution would be to update Xamarin.Google.Guava.targets within the Xamarin.Google.Guava NuGet so that 
it sets a $(_HaveFullGuava) property:



*   jonp thought of one little complication with using a property was that the order of 
    NuGet package imports might change the results. So he was brainstorming that 
    
*   another way could be to use a target with `BeforeTargets="$(_CompileJavaDependsOnTargets)"` in 
    the Guava NuGet package to check for an remove the listenable-future library in cases where an 
    app references both. 
    Brendan will try to play with that approach a little later this week, hopefully around Thursday, 
    if that sounds good.

complication with using a property was that the order of NuGet package imports might change the results.
That crossed my mind too…
Maybe we should/could talk to Peppers.
We don’t need less than ideal solution/workaround.

Brendan Zagaeski:slack_call:  19:04
Sounds good. One other idea I had was if it's worth trying to use the same trick Google uses

Miljenko Cvjetko 🇭🇷:house_with_garden:  19:05
Sounds great for me. I’d like to do it myself, but I want to catch up with GPS-FB stuff.
19:05
worth trying to use the same trick Google uses
Proguard?

Brendan Zagaeski:slack_call:  19:05
Where they have a different package version for listenable-future that is just an empty Maven package for the case where the app also references the full Guava
19:06
So maybe we could make Xamarin.Google.Guava depend on a specific empty-package version of listenable-future

Miljenko Cvjetko 🇭🇷:house_with_garden:  19:06
How would we do that?
19:06
I asked once in Components team, but we never come to conclusion…
19:06
they have something like 9999.99
19:06
right?


*   that wouldn't stop users from referencing a specific version of listenable-future directly 
    in their apps, so maybe it's not the ideal solution either

more brainstorming :slightly_smiling_face: I'll plan to chat with Peppers too and loop you in




## R8

*   https://developercommunity.visualstudio.com/content/problem/979562/r8-warning-missing-class-javalangclassvalue.html

*   https://medium.com/androiddevelopers/troubleshooting-proguard-issues-on-android-bce9de4f8a74

*   https://github.com/xamarin/AndroidX/issues/74

    *   https://github.com/xamarin/AndroidX/issues/74#issuecomment-613526927

https://developercommunity.visualstudio.com/content/problem/979562/r8-warning-missing-class-javalangclassvalue.html


You don't specify in what way it doesn't work. Your configuration keeps the names of all public classes in the specified package:

```
-keep public class com.myapp.customcomponents.*
```

The following configuration keeps the names of all public classes in the specified package and its subpackages:

```
-keep public class com.myapp.customcomponents.**
```

The following configuration keeps the names of all public/protected classes/fields/methods in the specified package and its subpackages:

```
-keep public class com.myapp.customcomponents.** {
  public protected *;
}
```
