# mono floating point optimizations

mono floating point optimizations.md 

A couple of years ago we introduced a JIT option called float32 that emits 
code using 32bits intermediates for 32 bits float in lieu of using 64bits 
intermediates.
 
ECMA allows us to use 64bits intermediates and we’ve done like that ever since 
but it comes at a hefty performance cost, specially on mobile, where double 
precision math is measurably slower.
 
I think it’s time we make it the default for a couple of reasons.
First, iOS, of their own volition, went ahead and made it the default some time 
ago on their own.
 
<sebastien> 

Not quite sure it matches my dictionary definition of volition. Miguel asked for 
this to be the default in C6
 
https://github.com/xamarin/minutes/blob/master/ios/ios-2015-11-09.md#floating-point-optimizations
 
Still it’s not really the default for XI (even today) but it became the default for new projects, 
i.e. IDE templates set float32 by default. For such projects msbuild gives the 
`--aot-options=-O=float32` argument (thru mtouch) to the AOT compiler (note that it’s AOT only, 
simulators never used that option).
 
What it means is that most recent XI-based projects are using float32 but, more importantly, that 
we never “broke” existing applications (by changing our default). IOW unless manual action was taken, 
old projects still use the more “compatible” (and slow) FP code.
 
That means FP code is not portable by default across our two major platforms.
</sebastien> 

<sebastien> 
 I’m not sure what you mean by portability ? If you are assuming result compatibility then even the 
 non-float32 FP is not compatible across architectures. The most common complaint we have is about 
 Epsilon

-          https://bugzilla.xamarin.com/show_bug.cgi?id=15630
-          https://bugzilla.xamarin.com/show_bug.cgi?id=8747
-          https://bugzilla.xamarin.com/show_bug.cgi?id=15802
-          https://bugzilla.xamarin.com/show_bug.cgi?id=24808
-          https://bugzilla.xamarin.com/show_bug.cgi?id=39443
 
In comparison, I don’t recall of any complaint over the use of float32. Still that might be because 
we never changed existing applications behavior.
</sebastien> 
 
 
Second, Roslyn optimizes code assuming intermediates are 32bits, which makes code behave differently 
when compiled with /O. Zoltan filed a bug for this: https://github.com/dotnet/roslyn/issues/18891
 
Overall, it will be a nice perf improvement to some of our customers and come with little risk. The 
change is trivial and it’s mostly about making it explicit on Android release notes.
It’s worth discussing if Android should have a project dialog to help disabling it in case customers 
need and I’ll let others discuss it.
 
Our plan is to disable it on mono/master next week and include it on 15.4.
 
Comments?
 
<sebastien> 
As long as we can keep our current IDE option working (enabling/disabling float32) then I have no 
issue about the change, I think it will be beneficial to most people.
<sebastien> 
