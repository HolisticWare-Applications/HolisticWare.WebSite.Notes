# `Task.Run()` vs `Task.Factory.StartNew()`

task-run-vs-task-factory-startnew.md

https://stackoverflow.com/questions/18013523/when-correctly-use-task-run-and-when-just-async-await


Actually, StartNew does not have to use the ThreadPool, see the blog I linked to in my answer. The problem 
is StartNew by default uses TaskScheduler.Current which may be the thread pool but also could be the UI 
thread.

https://stackoverflow.com/questions/38423472/what-is-the-difference-between-task-run-and-task-factory-startnew

```
Task.Run(someAction);
```

that’s exactly equivalent to:

```
Task.Factory.StartNew
    (
        someAction, 
        CancellationToken.None, 
        TaskCreationOptions.DenyChildAttach, 
        TaskScheduler.Default
    );
```

Task.Run unwrap nested task by default. I recommend to read this article about major differences: 

https://blogs.msdn.microsoft.com/pfxteam/2011/10/24/task-run-vs-task-factory-startnew/

http://blog.stephencleary.com/2013/08/startnew-is-dangerous.html

I see a lot of code on blogs and in SO questions that use Task.Factory.StartNew to spin up work on a
background thread. Stephen Toub has an excellent blog article that explains why Task.Run is better 
than Task.Factory.StartNew, but I think a lot of people just haven’t read it (or don’t understand it). 
So, I’ve taken the same arguments, added some more forceful language, and we’ll see how this goes. :) 
StartNew does offer many more options than Task.Run, but it is quite dangerous, as we’ll see. 
You should prefer `Task.Run` over `Task.Factory.StartNew` in async code.

Here are the actual reasons:

Does not understand async delegates. This is actually the same as point 1 in the reasons why you would 
want to use StartNew. The problem is that when you pass an async delegate to StartNew, it’s natural to 
assume that the returned task represents that delegate. However, since StartNew does not understand async 
delegates, what that task actually represents is just the beginning of that delegate. This is one of the 
first pitfalls that coders encounter when using StartNew in async code.
Confusing default scheduler. OK, trick question time: in the code below, what thread does the method “A” 
run on?

https://stackoverflow.com/questions/17119075/do-you-have-to-put-task-run-in-a-method-to-make-it-async


When you use Task.Run to run a method, Task gets a thread from threadpool to run that method. So from 
the UI thread's perspective, it is "asynchronous" as it doesn't block UI thread.This is fine for 
desktop application as you usually don't need many threads to take care of user interactions.

However, for web application each request is serviced by a thread-pool thread and thus the number of 
active requests can be increased by saving such threads. Frequently using threadpool threads to simulate 
async operation is not scalable for web applications.

True Async doesn't necessarily involving using a thread for I/O operations, such as file / DB access etc. 
You can read this to understand why I/O operation doesn't need threads. 

http://blog.stephencleary.com/2013/11/there-is-no-thread.html

https://blog.stephencleary.com/2013/11/taskrun-etiquette-examples-dont-use.html

https://blog.stephencleary.com/2013/10/taskrun-etiquette-and-proper-usage.html

https://blogs.msdn.microsoft.com/pfxteam/2012/03/24/should-i-expose-asynchronous-wrappers-for-synchronous-methods/


https://medium.com/@guptakhil

https://www.youtube.com/user/professorleonard57/playlists

https://github.com/Avik-Jain/100-Days-Of-ML-Code

https://github.com/Avik-Jain/100-Days-Of-ML-Code/commit/3544b6b9edcdbd2f906e5c467cc586b9fd0e6994

https://distill.pub/2018/differentiable-parameterizations/

https://blog.ycombinator.com/learning-math-for-machine-learning/

https://www.datasciencecentral.com/profiles/blogs/combining-cnns-and-rnns-crazy-or-genius

https://engineering.taboola.com/neural-networks-bayesian-perspective/

http://www.mdpi.com/1999-5903/10/3/27/html





