`Task.StartNew` and swapped them to use `Task.Run`. If you want to run a task on a 
thread pool thread always use `Task.Run`. There's no reason to use `Task.StartNew` 
as by default it will *not* do what you expect. It isn't guaranteed to run your 
task on a thread pool thread. Only Task.Run guarantees that.



developer docs on how the thing works under the hood, and when to 
choose between Run/RunAsync and when you need to call the `Join` method on 
the return value of `RunAsync` (which is *not* exposed by IAsyncManager)

Juan Marcelo Tondato [16:36] 
this join is same as `await`

[16:38]  
and you can execute `asyncManager.Run(async ()=> await awaitable)` instead 
of `join`

[16:39]  
but, yes, we can improve the api of merq if it is a nice to have

Alan McGovern [16:41] 
the docs imply that `Join`ing a task is different, i want to know why it's 
different

Mauro Agnoletti [16:47] 
@alan, .Join() method is used against the JoinableTask that is returned when 
you call RunAsync on the JoinableTaskFactory (JoinableTaskFactory.RunAsync().Join()).

This could be somehow equivalent to calling an async method, and then using 
.Wait() over the returned Task.

Now, your doubt could be explained if you take a look at the AsyncManager 
implementation, given that to simplify the API, we are using a custom awaiter 
where we return an IAwaiter as a result of AsyncManager.RunAsync(), instead of 
a JoinableTask. Doing that, we encapsulate the .Join() in our implementation 
and we encourage the user to just use async/await syntaxis as usual






maybe this example can help:
```var myawaitable = asyncManager.RunAsync(async()=> ....);
...
...
await myawaitable;
//or
asyncManager.Run(async()=>await myawaitable);```

Jérémie Laval [16:54] 
why would you have to recall an await in there

[16:55]  
is there interaction that we don’t know about with the synchronization context?

[16:55]  
if so then as alan says that’s the kind of thing that would be helpful to know about

Alan McGovern [16:55] 
`asyncManager.Run(async()=>await myawaitable);` should be identical to `asyncManager.Run(()=>myawaitable);`

Jérémie Laval [16:56] 
there is context capturing in the first case

[16:56]  
*maybe* it’s important?



the signature is IAsyncManager.Run(Func<Task>), so yes it’s the same passing one sample (@jmt) or the other. Of course if it’s a one line call, passing the Func<Task> directly without async/await has less overhead.

Agreed that the code that Alan gave to us hasn’t been analyzed yet, but we recommended to change the IAsyncManager with JTF to compare. But Alan said he couldn’t get to compile the JTF replacement. Anyways, we havent’ done it yet (edited)

Alan McGovern [17:12] 
Aaaand now we have an answer: https://gist.github.com/alanmcgovern/4bcd08132afcef0dae8f3ada841b5c46

[17:13]  
There are a bunch of restrictions with JTF it seems

[17:14]  
if `ContinueWith` can't be used without deadlocking JTF then we need to change a lot of code

[17:15]  
the point about `TaskScheduler.FromCurrentSynchronizationContext ()` is also relevant because other things use that

[17:16]  
this is also a very hard requirement: `DEADLOCK CAUSE is a violation of the 3rd rule: Inside your JTF.Run delegate, you are awaiting work that was scheduled outside of JTF`

[17:16]  
that seems like it should make JTF pretty much impossible to use in normal code

[17:17]  
which is why we've had to revert the usage of that from nearly every case i've debugged


anything that is awaited inside a `Run` needs to have been created from a `RunAsync` so I would venture it’s what’s missing

[20:05]  
i.e. `Run (async () => await RunAsync (() => GetDocumentAsync (path)));`

[20:05]  
as bizarre as it looks

Alan McGovern [20:12] 
not quite

[20:12]  
that thing used StartNew and it's nearly definitely causing the task to be queued up on the main thread because it doesn't set a scheduler/context

[20:13]  
*that* in itself is invalid

[20:13]  
there's only one supported mechanism for getting back to the main thread and that's `await JTF.Factory.SwitchToMainThread ()` or whatever it is

[20:13]  
everything else will deadlock

[20:14]  
i suppose the tl;dr is that writing code so that you *do not* have to block the main thread to wait for an async operation is the safest thing to do by 10000x

[20:14]  
If you must block the main thread to wait for an async task... good luck, and it will probably deadlock

[20:15]  
there are many preconditions you have to satisfy in order for JTF to not result in a deadlock

[20:15]  
i asked a bunch of questions in a separate email chain which i'm going to write up now

[20:15]  
nearly every usage of jtf is wrong so far

[20:15]  
it just wasn't covered in their doc
