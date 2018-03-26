# Concurrency in C#

https://blog.stephencleary.com/

## Books

*   Async in C# 
    Alex Davies

## Links/References

### Async (TAP)

*   http://bit.ly/async-doc

    https://msdn.microsoft.com/en-us/library/hh191443.aspx

*   http://bit.ly/micro-TAP

    https://docs.microsoft.com/en-us/dotnet/standard/asynchronous-programming-patterns/task-based-asynchronous-pattern-tap

*   http://bit.ly/async-faq

    https://blogs.msdn.microsoft.com/pfxteam/2012/04/12/asyncawait-faq/

*   http://bit.ly/pfx-blog

    https://blogs.msdn.microsoft.com/pfxteam/

*   https://docs.microsoft.com/en-us/dotnet/standard/async-in-depth

*   http://bit.ly/bcl-async

    https://www.nuget.org/packages/Microsoft.Bcl.Async


### Parallel Programming

*   http://bit.ly/parallel-prog

    https://msdn.microsoft.com/en-us/library/ff963553.aspx
    
    https://www.amazon.com/gp/offer-listing/0735651590/ref=nav_signin?ie=UTF8&condition=all&

*   http://bit.ly/intro-tpl

    https://www.microsoft.com/en-us/download/details.aspx?id=14782

## Reactive Extensions RX

*   http://www.introtorx.com

*  http://rxwiki.wikidot.com/


*   RX in Action

    https://www.amazon.com/Rx-NET-Action-examples-Tamir-Dresher/dp/1617293067/ref=sr_1_1?s=books&ie=UTF8&qid=1517990923&sr=1-1&keywords=reactive+extensions

    Programming Reactive Extensions and LINQ (Expert's Voice in .NET)

    Highly Scalable Systems in .NET: Concurrency in Functional C# and F#
    
*   http://bit.ly/rx-main

    https://www.nuget.org/packages/Rx-Main


## Dataflows (TPL Dataflows, meshes)

*   http://bit.ly/dataflow-doc

    https://docs.microsoft.com/en-us/dotnet/standard/parallel-programming/dataflow-task-parallel-library


*   http://bit.ly/tpl-dataflow

    https://blogs.msdn.microsoft.com/pfxteam/2011/12/05/paper-guide-to-implementing-custom-tpl-dataflow-blocks/

*   http://bit.ly/tpl-df

    https://www.nuget.org/packages/Microsoft.Tpl.Dataflow


http://bit.ly/micro-immut
https://www.nuget.org/packages/Microsoft.Bcl.Immutable


## Videos

*   https://channel9.msdn.com/Series/Three-Essential-Tips-for-Async

    

*   http://www.jaylee.org/post/2012/06/18/CSharp-5-0-Async-Tips-and-Tricks-Part-1.aspx
*   http://www.jaylee.org/post/2012/07/08/c-sharp-async-tips-and-tricks-part-2-async-void.aspx
*   http://www.jaylee.org/post/2012/09/29/C-Async-Tips-and-Tricks-Part-3-Tasks-and-the-Synchronization-Context.aspx


A SynchronizationContext is just a simple abstraction with Post/Send methods: you hand those 
methods a delegate, and they ensure it gets executed on the "right" context, whatever that 
context may be.  The base SynchronizationContext class just implements Post to go to the 
ThreadPool, WindowsFormsSynchronizationContext implements it to post Win32 messages to the 
UI thread so that the delegate is executed there, etc.  If you need work to run on a specific 
thread, you would need to derive from SynchronizationContext (or TaskScheduler, if you just 
want to schedule tasks there), and override Post/Send to run the delegate on the right thread.  
Typically, however, that means the target thread (or threads) is going to need to be sitting in 
a processing loop, waiting for more incoming execution requests to arrive, processing them, and 
then going back and waiting for more incoming requests.  This is what the UI thread does with 
its message loop, and it's what the thread pool does, with all of the worker threads monitoring 
a set of queues to process work when new queued work items arrive.

So, to do what you want, you'll need your thread on which you want this work to run to be sitting 
in a loop, monitoring some queue for incoming work items, and then implement a SynchronizationContext 
that posts work items to that queue.  If you want to use TaskScheduler.FromCurrentSynchronizationContext, 
you'd first need to set that context as SynchronizationContext.Current for the current thread, 
using SynchronizationContext.SetSynchronizationContext.

All that said, this does not seem like the right approach for you.  I don't completely understand 
your scenario from your description, but if you can elaborate and clarify what exactly is going 
on in your scenario, we might be able to make some other recommendations.

