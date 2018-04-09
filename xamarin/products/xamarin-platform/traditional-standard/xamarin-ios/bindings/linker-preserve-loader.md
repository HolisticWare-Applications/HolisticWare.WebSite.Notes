@holmes, @redth one question about Jenkins, what is the purpose of the Loader class?

Jonathan Dick [10:05 PM] 
hehe i’ll let bill explain. but basically linker

Jonathan Dick [10:06 PM]
are we 100% yet that it’s needed?

Israel Soto [10:10 PM] 
so, in a few words, you’re making sure that the dependencies classes are loading first, right?

Bill Holmes [10:11 PM] 
We may not need it in this case

Bill Holmes [10:11 PM]
but what it did at one point was ensure that the linkwith statement would not be removed

Bill Holmes [10:12 PM]
So consider if Core.dll was a binding project that had no API definition

Bill Holmes [10:12 PM]
only an embedded static archive and LinkWith statement

Bill Holmes [10:13 PM]
Then you create a SignIn.dll that is a typical binding project

Bill Holmes [10:13 PM]
and you need the frameworks that are embedded in the Core.dll

Bill Holmes [10:13 PM]
so you add a dll reference to it

Jonathan Dick [10:13 PM] 
in any case it’s easy to maintain and won’t hurt anything

Alex Soto [10:14 PM] 
I hear we have a bug?

Jonathan Dick [10:14 PM] 
a bug?

Bill Holmes [10:14 PM] 
but in that case the C# compiler will throw the entire core.dll out

Alex Soto [10:14 PM] 
we as in binding project?

Bill Holmes [10:14 PM] 
because there is not C# code un SignIn using Core types

Bill Holmes [10:14 PM]
therefore you do not get the frameworks for linking

Bill Holmes [10:14 PM]
are you guys following?

Bill Holmes [10:15 PM]
But now I think redth is right, we may not need it.

Bill Holmes [10:15 PM]
Because the Core.dll does indeed have API C# code

Alex Soto [10:16 PM] 
mmm can’t you just add `[Preserve (AllMembers = true)]` ?

Bill Holmes [10:16 PM] 
So as long as the app or the SignIn dll does call something in the Core.dll it will keep it

Bill Holmes [10:16 PM]
I do not think so

Bill Holmes [10:17 PM]
This is not really a Xam.iOS problem removing members

Bill Holmes [10:17 PM]
It is a C# thing

Bill Holmes [10:17 PM]
if you reference a dll but do not call it it gets thrown out

Alex Soto [10:17 PM] 
right

Israel Soto [10:22 PM] 
so, SignIn doesn’t use any type of Core types publicly, so that’s the reason the Loader is not necessary?

Bill Holmes [10:23 PM] 
Does the API definition in SignIn have Core types?

Bill Holmes [10:23 PM]
I think it does not

Bill Holmes [10:24 PM]
In that case you would need the loader

Bill Holmes [10:24 PM]
however

Bill Holmes [10:24 PM]
The sample does

Bill Holmes [10:24 PM]
https://github.com/xamarin/components/blob/GoogleAPIsForiOS/JenkinsRoot/GoogleAPIsForiOS/Google.SignIn/samples/SignInExample/SignInExample/AppDelegate.cs

Bill Holmes [10:24 PM]
So the Loader is really not needed in this particular case

Israel Soto [10:24 PM] 
no, it doesn’t use any type

Bill Holmes [10:24 PM] 
If the sample did not call the core calls, and the loader did not exist I think it may fail to link on device

Israel Soto [10:25 PM] 
but what if it uses a Core type internally

Bill Holmes [10:25 PM] 
internally as in?

Bill Holmes [10:25 PM]
in the static archive

Bill Holmes [10:25 PM]
?

Israel Soto [10:25 PM] 
yep

Bill Holmes [10:25 PM] 
That is the problem

Bill Holmes [10:26 PM]
SignIn internally does need types that are internal to Core

Bill Holmes [10:26 PM]
If no C# code calls Core APIs then its LinkWith will not be considered at build type

Jonathan Dick [10:26 PM] 
and the c# linker has no clue about that

Bill Holmes [10:26 PM] 
yep

Jonathan Dick [10:27 PM] 
so bye-bye core.dll

Bill Holmes [10:27 PM] 
and all the internal archives that SignIn needs to link properly

Israel Soto [10:33 PM] 
agh! I hate this internet connection…:unamused: I lose the connection every 5 min!

Israel Soto [10:34 PM]
so, in the end, just in case, we need the Loader class

Bill Holmes [10:35 PM] 
I will take another look to see if there is a better way to do it

Bill Holmes [10:35 PM]
But for now yes

Bill Holmes [10:35 PM]
just go with it

Jonathan Dick [10:36 PM] 
i think it’s reasonable, it’s very little code and should work

Jonathan Dick [10:36 PM]
liked the partial class trick really

Bill Holmes [10:36 PM] 
I am thinking that we just declare an assembly level attribute in core

Bill Holmes [10:37 PM]
I need something similar for cordova

Bill Holmes [10:37 PM]
For plugins

Bill Holmes [10:37 PM]
And I am pretty sure I can not use the same trick

Jonathan Dick [10:39 PM] 
though shouldn’t [Preserve] work?

Jonathan Dick [10:39 PM]
i thought that was meant for preserving c# code from the c# linker

Bill Holmes [10:42 PM] 
That keeps classes and methods around

Bill Holmes [10:42 PM]
Maybe it could help us, I did not ry

Jonathan Dick [10:45 PM] 
if it keeps the class around it should keep the dll around no?

Bill Holmes [10:46 PM] 
I think it will get skipped at a higher level

Jonathan Dick [10:46 PM] 
perhaps

Bill Holmes [10:46 PM] 
because C# does not see it used anywhere

but I think @holmes is right

Bill Holmes [10:47 PM] 
I am trying now

Alex Soto [10:48 PM] 
I really hope `[Preserve (AllMembers = true)]` does the trick

Bill Holmes [10:49 PM] 
Here is the test setup

Bill Holmes [10:49 PM]
comment out https://github.com/xamarin/components/blob/GoogleAPIsForiOS/JenkinsRoot/GoogleAPIsForiOS/Google.SignIn/samples/SignInExample/SignInExample/AppDelegate.cs#L4

Bill Holmes [10:49 PM]
and

Bill Holmes [10:49 PM]
https://github.com/xamarin/components/blob/GoogleAPIsForiOS/JenkinsRoot/GoogleAPIsForiOS/Google.SignIn/samples/SignInExample/SignInExample/AppDelegate.cs#L23-L27

Bill Holmes [10:49 PM]
finally this

Bill Holmes [10:49 PM]
https://github.com/xamarin/components/blob/GoogleAPIsForiOS/JenkinsRoot/GoogleAPIsForiOS/Google.SignIn/source/Google.SignIn/Loader.cs#L3-L25

Bill Holmes [10:49 PM]
Then build

Bill Holmes [10:50 PM]
you get an error

Bill Holmes [10:50 PM]
So start from there and see if you can find another way

Bill Holmes [10:50 PM]
I need to run for now

Bill Holmes [10:52 PM]
adding [Preserve] here does not fix it

Bill Holmes [10:52 PM]
https://github.com/xamarin/components/blob/GoogleAPIsForiOS/JenkinsRoot/GoogleAPIsForiOS/Google.Core/source/Google.Core/Loader.cs#L5

Bill Holmes [10:54 PM]
we can simplify a little bit.

Bill Holmes [10:54 PM]
https://gist.github.com/bholmes/4df27301b3e5e76b877c

Bill Holmes [10:55 PM]
That does work

Jonathan Dick [10:55 PM] 
interesting

Jonathan Dick [10:55 PM]
i thought maybe *that* would get linked out

Jonathan Dick [10:55 PM]
though at that point you could probably use [preserve] to keep that class around

Jonathan Dick [10:56 PM]
are you linking sdk assemblies only though?

Bill Holmes [10:56 PM] 
yes

Bill Holmes [10:56 PM]
which think may be typical

Jonathan Dick [10:56 PM] 
you should test worst case i think

Jonathan Dick [10:56 PM]
link all

Jonathan Dick [10:56 PM]
sdk assemblies only is very typical but some users will turn to link all

Bill Holmes [10:57 PM] 
all appears to work (edited)

Jonathan Dick [10:57 PM] 
interesting i would have thought Loader would get linked out

