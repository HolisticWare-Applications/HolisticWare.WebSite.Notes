## MethodImplOptions.AggressiveInlining

method-impl-options-aggressive-inlining.md

```
private SqlMetaData[] meta;

[MethodImpl(MethodImplOptions.AggressiveInlining)]
private SqlMetaData[] Meta
{
    get
    {
        return this.meta;
    }
}
```

I don't know much about the new inlining attribute, but putting one here is almost certainly not going to make any difference in performance. All you are doing is returning a reference to an array, and the JIT will almost certainly already be making the correct choice here.

1) In my experience such primitive methods will be inlined without the attribute. I mainly found the 
attribute useful with non trivial methods that should still be inlined. 

2) There is no guarantee that a method decorated with the attribute will be inlined either

3) Inlining too much means the code becomes larger, and might not fit into caches anymore. Cache misses can be a significant performance hit. 4) I recommend not using the attribute until a benchmark showed that it improves performance


Quit worrying. The more you try to outsmart the compiler, the more it will find ways to outsmart you. Find something else to worry about. – david.pfx Jun 24 '14 at 4:03
1
For my two cents, I've seen great gains in release mode, especially when calling a larger function in a tight loop. – jjxtra Aug 11 '17 at 14:23


Compilers are smart beasts. Usually, they'll automatically squeeze out as much performance as they can from anywhere they can.

Trying to outsmart the compiler doesn't usually make a big difference, and has a lot of chances to backfire. For instance, inlining makes your program bigger as it duplicates the code everywhere. If your function is used in a lot of places throughout the code, it might actually be detrimential as pointed out @CodesInChaos. If it is obvious the function should be inlined, you can bet the compiler will do so.

In case of hesitation, you can still do both and compare if there is any performance gain, that's the only certain way to now. But my bet is the difference will be neglegible, the source code will just be "noisier".



I think the “noise” is the most important point here. Keep your code tidy and trust your compiler to do the right thing until proven otherwise. Everything else is a dangerous premature optimization

So NoInlining will make my program smaller! – Den Jan 21 '16 at 17:41
1
If compilers are so smart, then why would trying to outsmart the compiler backfire? – AbleArcher Apr 27 '16 at 15:57
4
Compilers are not smart. Compilers do not do "the right thing". Do not attribute intelligence where it is not. In fact, C# compiler / JITer is excessively dumb. For example, it won't inline anything past 32 bytes IL or cases involving structs as parameters - where in quite many cases it should and could. In addition to missing hundreds of obvious optimizations - including, but not limited to - avoiding unnecessary bounds checks and allocations among other things. – JBeurer Dec 6 '16 at 11:19 
2
@DaveBlack Bounds check elusion in C# happens in very small list of very basic cases, usually on the most basic sequentual for loops performed, and even then many simple loops fail being optimized. Multi-dimensional array loops do not get bounds check elimination, loops iterated in descending order doesn't, loops on newly allocated arrays don't. Very many simple cases where you'd expect compiler to do it's job. But it doesn't. Because it's anything, but smart. blogs.msdn.microsoft.com/clrcodegeneration/2009/08/13/… –

there is no way to guarantee that the method would be inlined - MSDN MethodImplOptions Enumeration, SO MethodImplOptions.AggressiveInlining vs TargetedPatchingOptOut.

Programmers are more intelligent than a compiler, but we work on a higher level and our optimizations are products of one man's work - our own. Jitter sees what's going during the execution. It can analyze both the execution flow and the code according to the knowledge put into it by its designers. You can know your program better, but they know better the CLR. And who will be more correct in his optimizations? We don't know for sure.

That's why you should test any optimization you make. Even if it is very simple. And take into account that the environment may change and your optimization or disoptimization can have quite an unexpected result.




Compilers do a lot of optimizations. Inlining is one of them, whether the programmer wanted or not. For example, MethodImplOptions does not have an "inline" option. Because inlining is automatically done by the compiler if needed.

Many other optimizations are especially done if enabled from the build options, or "release" mode will do this. But these optimizations are kind of "worked for you, great! Not worked, leave it" optimizations and usually give better performance.

[MethodImpl(MethodImplOptions.AggressiveInlining)]
is just a flag for the compiler that an inlining operation is really wanted here. More info here and here

https://stackoverflow.com/a/31467000/1290868

http://www.dotnetperls.com/aggressiveinlining

To answer your question;

There's no guarantee the JIT would inline it otherwise. Am I wrong?

True. No guarantee; Neither C# has a "force inlining" option.

Could doing this kind of thing hurt the performance/stability/anything?

In this case no, as it is said in Writing High-Performance Managed Applications : A Primer

https://msdn.microsoft.com/en-us/library/ms973852.aspx

https://msdn.microsoft.com/en-us/library/ms973858.aspx#highperfmanagedapps_topic10


Property get and set methods are generally good candidates for inlining, since all they do is typically initialize private data members.







https://softwareengineering.stackexchange.com/questions/245802/is-there-a-downside-to-using-aggressiveinlining-on-simple-properties







The method will not get inlined because it is virtual. Please refer to the blog post below.

http://blogs.msdn.com/b/davidnotario/archive/2004/11/01/250398.aspx

"These are some of the reasons for which we won't inline a method:

Virtual calls: We don't inline across virtual calls. The reason for not doing this is that we don't know the final target of the call. We could potentially do better here (for example, if 99% of calls end up in the same target, you can generate code that does a check on the method table of the object the virtual call is going to execute on, if it's not the 99% case, you do a call, else you just execute the inlined code), but unlike the J language, most of the calls in the primary languages we support, are not virtual, so we're not forced to be so aggressive about optimizing this case."
Whilst this post is nearly 10 years old I don't believe this has changed with any later JIT compilers.

