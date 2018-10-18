# Task.Run vs Task.Factory.StartNew

task-run-vs-task-factory-startnew.md 

Async tip don't `Task.Run()`  for long running work that blocks the thread. 
Thread pool thread will be blocked 

Instead, use 

*   `Task.Factory.StartNew()` with `TaskCreationOptions.LongRunning` or 

*   spawn a Thread and run that instead

https://twitter.com/davidfowl/status/1049185723176251392

https://blog.stephencleary.com/2013/08/startnew-is-dangerous.html

Re: the above link, which has been my go-to for a while now, he states this: "the threadpool will adjust to any long-running task in 0.5 seconds - without the LongRunning flag. Most likely, you don’t really need it.". That not the case?

The literature says 0.5s but I always observed 1s. Each second the thread pool will create or remove 1 thread from the pool based on a clever algorithm. The latency/throughout of the ThreadPool may be severely affected until the thread count adjusts. Rule: blocking => LongRunning

Oh my bad you just meant regular thread pool growth. Yes it does grow very slowly.

0 replies 0 retweets 0 likes


```
public ThrottleLimiter(Rate rate)
{
    this.Rate = rate;
    semaphore = SemaphoreSlim(rate.Occurences, rate.Occurences);
    cts = new CancellationTokenSource();

    _ = Task.Run(ScheduleRepelnish, cts.Token);

    return;
}

async Task ScheduleRepenish()
{
    while(true)
    {
        Task.Delay(new TimeSpan(rate.Period.Ticks/rate.Occurences), cts.Token));
        if (cts.Token.IsCancellationRequested)
        {
            return;
        }
        Repelnish();
    }

    return;
}
```

This is fine but it isn't a long running thread. It's a long running async loop (which is fine as well btw). Why aren't you looping until the token is triggered tho? Why the while true?



What's the difference between starting a long running task with task factory and calling an 
async method without awaiting it? What's considered long running?


For the first question, the difference is that you'll unblock the calling thread immediately vs 
waiting for the first await to happen. For the second question, long running meaning while (true) 
or something thats going to wait on a blocking system call (sleep/poll etc).

```
private async Task DoSomethingAsync(int num) ...

DoSomethingAsync(10); 
```

Without an await in front of it, this would fire off a task without blocking the calling thread right? 
Is that a different flow than what Task.Factory would ultimately use?


When there are these kind of discussions about 1’s and 0’s. It’s a design-flaw somewhere.

Too much public API too much flexibility, too much choice.

Yea it sucks. The flexibility can sometimes bite you in the ass

What amount of time is considered "long" in this context? 10 seconds? 1 minute? An hour?

Forever is long running. A loop that does work goes to sleep attempting to block that thread and 
resume.


```
Task.Run (someAction) 
```

is exactly equivalent to:

```
Task.Factory.StartNew
                (
                    someAction, 
                    CancellationToken.None,
                    TaskCreationOption.DenyChildAttach, 
                    TaskScheduler.Default)
                ;
```

https://blogs.msdn.microsoft.com/pfxteam/2011/10/24/task-run-vs-task-factory-startnew/

But http://Task.Run (async ()=>{}) returns Task, and StartNew returns Task<Task>. so how can it be 
the same? should i await await :D

Just a question, because I don't know thread pool internals that well. What if I end up blocking 
all threads from thread pool? Does the thread pool starve or it acquires more threads from the OS?

it makes new threads slowly, one per second

