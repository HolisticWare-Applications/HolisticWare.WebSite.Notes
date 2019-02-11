# CS1998 “method lacks await operators”

CS1998-method-lacks-await-operators.md


This async method lacks 'await' operators and will run synchronously. Consider using the 'await' 
operator to await non-blocking API calls, or 'await Task.Run(...)' to do CPU-bound work on a 
background thread.

async is an implementation detail, so it can't be applied to interface methods.

somewhat common problem when you have a synchronous (or noop) implementation for an asynchronous interface.

You can implement a Task-returning method without the async keyword by just returning a completed Task, as such:

public Task FinalizeAsync()
{
  return Task.FromResult(0);
}
However, this still allocates a Task every time it's called. If you find yourself doing this a lot, you may want 
to cache a completed Task instance. My AsyncEx library provides a number of task constants for this purpose:

public Task FinalizeAsync()
{
  return TaskConstants.Completed;
}

Finally, you may want to take a look at my blog post on asynchronous disposal for a couple of 
alternative approaches.


obvious incorrect assumption from new programmers would be that a method marked async somehow executes, 
well, asynchronously. This is manifestly untrue if there are no await operators anywhere. 
"This does not do what you expect and there is a better way of writing whatever you are trying to achieve" 
is an obvious candidate situation for a compiler warning. –


an async method that does not use await is almost certainly wrong. Not always wrong, or this would be an error. 
But almost always wrong, hence the warning.

An incredibly common async-newbie mistake is to assume async means "make this method asynchronous". 
This is commonly paired with the assumption that "asynchronous" means "run on a background thread", but sometimes 
it's just an assumption of "magic".

Thus, the warning explicitly points out that the code will run synchronously.

I have also found this warning helpful when refactoring my own code - sometimes I end up with an async method that should be changed to a synchronous method, and this warning points that out.

It's true that async without await could be useful to reduce code if you have non-trivial (i.e., possibly exception-generating) synchronous code and you need to implement an asynchronous method signature. In that case, you can use async to avoid a half-dozen lines of TaskCompletionSource<T> and try/catch code. But this is an extremely small use case; the vast majority of the time, the warning is helpful.


mechanical translation I use to convert from the async version that yields compiler warning CS1998 
to a non-async version that behaves identically is as follows:

Remove the async keyword.
Wrap the entire existing method body with a try-catch.
Define a TaskCompletionSource<T> called tcs before the try-catch.
Replace all existing instances of return <expr>; with tcs.SetResult(<expr>); followed by  return tcs.Task;.
Define the catch block to call tcs.SetException(e) followed by return tcs.Task;.
For example:

public Task<string> GetAnswerAsync(string question)
{
    var tcs = new TaskCompletionSource<string>();
    try
    {
        string answer = Lookup[question];
        tcs.SetResult(answer);
        return tcs.Task;
    }
    catch (Exception e)
    {
        tcs.SetException(e);
        return tcs.Task;
    }
}
This can be expressed more generally by the following, although I don't know if it would be appropriate to actually introduce such a helper method into a codebase.

public static Task<T> AsyncPattern(Func<T> func)
{
    var tcs = new TaskCompletionSource<T>();
    try
    {
        tcs.SetResult(func());
    }
    catch (Exception e)
    {
        tcs.SetException(e);
    }
    return tcs.Task;
}

If you're using .NET 4.6, you can use Task.FromException to handle the exception case, just as you use FromResult to handle the successful case:

public Task<string> GetAnswerAsync(string question)
{
    try
    {
        return Task.FromResult(Lookup[question]);
    }
    catch(Exception e)
    {
        return Task.FromException<string>(e);
    }
}
If you're using .NET 4.5 then you'll need to write your own FromException method, but it's pretty trivial:

public static Task<T> FromException<T>(Exception e)
{
    var tcs = new TaskCompletionSource<T>();
    tcs.SetException(e);
    return tcs.Task;
}
public static Task FromException(Exception e)
{
    var tcs = new TaskCompletionSource<bool>();
    tcs.SetException(e);
    return tcs.Task;
}


can fix it by awaiting on a Task.Run but that feels wrong for a method that is only doing a few inexpensive operations. It also sounds like it will add unneeded overhead to the execution but then I am also not sure if that is already there because the async keyword is present.



Just remove the async keyword. You can still return a Task using Task.FromResult



The async keyword is merely an implementation detail of a method; it isn't part of the method signature. If one particular method implementation or override has nothing to await, then just omit the async keyword and return a completed task using Task.FromResult<TResult>:

public Task<string> Foo()               //    public async Task<string> Foo()
{                                       //    {
    Baz();                              //        Baz();
    return Task.FromResult("Hello");    //        return "Hello";
}                                       //    }
If your method returns Task instead of Task<TResult>, then you can return a completed task of any type and value. Task.FromResult(0) seems to be a popular choice:

public Task Bar()                       //    public async Task Bar()
{                                       //    {
    Baz();                              //        Baz();
    return Task.FromResult(0);          //
}                                       //    }
Or, as of .NET Framework 4.6, you can return Task.CompletedTask:

public Task Bar()                       //    public async Task Bar()
{                                       //    {
    Baz();                              //        Baz();
    return Task.CompletedTask;          //
}                                       //    }


One has to be aware, what part runs synchronously, what part asynchronously, what is the current synchronization context and just for the record, Tasks are always little faster, as there is not state machine 



It's perfectly reasonable that some "asynchronous" operations complete synchronously, yet still conform to the asynchronous call model for the sake of polymorphism.

A real-world example of this is with the OS I/O APIs. Asynchronous and overlapped calls on some devices always complete inline (writing to a pipe implemented using shared memory, for example). But they implement the same interface as multi-part operations which do continue in the background




If you have nothing to await, then you can just return Task.FromResult:

public Task<int> Success() // note: no "async"
{
  ... // non-awaiting code
  int result = ...;
  return Task.FromResult(result);
}
In the case of throwing NotImplementedException, the procedure is a bit more wordy:

public Task<int> Fail() // note: no "async"
{
  var tcs = new TaskCompletionSource<int>();
  tcs.SetException(new NotImplementedException());
  return tcs.Task;
}


If you have a lot of methods throwing NotImplementedException (which itself may indicate that some 
design-level refactoring would be good), then you could wrap up the wordiness into a helper class:

public static class TaskConstants<TResult>
{
  static TaskConstants()
  {
    var tcs = new TaskCompletionSource<TResult>();
    tcs.SetException(new NotImplementedException());
    NotImplemented = tcs.Task;
  }

  public static Task<TResult> NotImplemented { get; private set; }
}

public Task<int> Fail() // note: no "async"
{
  return TaskConstants<int>.NotImplemented;
}
The helper class also reduces garbage that the GC would otherwise have to collect, since each method 
with the same return type can share its Task and NotImplementedException objects.

I have several other "task constant" type examples in my AsyncEx library.



Since Task<T> inherits from Task, the same solutions (Task.FromResult, TaskCompletionSource) work just fine. There isn't an easy and efficient way to create just a plain Task like that, so it's best to create a Task<T> and (implicitly) cast it to Task


Another way to preserve the async keyword (in case you want to keep it) is to use:

public async Task StartAsync()
{
    await Task.Yield();
}
Once you populate the method you can simply remove the statement. I use this a lot especially when a 
method might await something but not every implementation actually does.

This should be the accepted answer. Sometimes the interface implementations don't need to be async, 
this is much cleaner than wrapping everything in a Task.Run call.


if an implementation does return a value, it seems like Task.FromResult is the better answer. For that matter, if you are going to throw an exception, it seems another answer has come into play regarding Task.FromException


able to simply throw a NotImplementedException when I haven't yet implemented a method, without altering the method signature. If it's problematic I'd be happy to know about it, but it barely matters to me: I only use this while in development anyway, so how it performs isn't all that important. Still, I'd be happy to hear about why it's a bad idea, if it is.

public async Task<object> test()
{
    throw await new AwaitableNotImplementedException<object>();
}
Here's the type I added to make that possible.

public class AwaitableNotImplementedException<TResult> : NotImplementedException
{
    public AwaitableNotImplementedException() { }

    public AwaitableNotImplementedException(string message) : base(message) { }

    // This method makes the constructor awaitable.
    public TaskAwaiter<AwaitableNotImplementedException<TResult>> GetAwaiter()
    {
        throw this;
    }
}

no longer need to write the TaskConstants class as there is a new helper method:

return Task.FromException(new NotImplementedException());





There is difference in different solutions which you can find in answers and strictly speaking you should know how caller is going to call the async method, but with default usage pattern that assumes ".Wait()" on method result - "return Task.CompletedTask" is the best solution.

    BenchmarkDotNet=v0.10.11, OS=Windows 10 Redstone 3 [1709, Fall Creators Update] (10.0.16299.192)
Processor=Intel Core i5-2500K CPU 3.30GHz (Sandy Bridge), ProcessorCount=4
Frequency=3233537 Hz, Resolution=309.2589 ns, Timer=TSC
.NET Core SDK=2.1.2
  [Host] : .NET Core 2.0.3 (Framework 4.6.25815.02), 64bit RyuJIT
  Clr    : .NET Framework 4.7 (CLR 4.0.30319.42000), 64bit RyuJIT-v4.7.2600.0
  Core   : .NET Core 2.0.3 (Framework 4.6.25815.02), 64bit RyuJIT


         Method |  Job | Runtime |         Mean |       Error |      StdDev |       Median |          Min |          Max | Rank |  Gen 0 |  Gen 1 |  Gen 2 | Allocated |
--------------- |----- |-------- |-------------:|------------:|------------:|-------------:|-------------:|-------------:|-----:|-------:|-------:|-------:|----------:|
 CompletedAwait |  Clr |     Clr |    95.253 ns |   0.7491 ns |   0.6641 ns |    95.100 ns |    94.461 ns |    96.557 ns |    7 | 0.0075 |      - |      - |      24 B |
      Completed |  Clr |     Clr |    12.036 ns |   0.0659 ns |   0.0617 ns |    12.026 ns |    11.931 ns |    12.154 ns |    2 | 0.0076 |      - |      - |      24 B |
         Pragma |  Clr |     Clr |    87.868 ns |   0.3923 ns |   0.3670 ns |    87.789 ns |    87.336 ns |    88.683 ns |    6 | 0.0075 |      - |      - |      24 B |
     FromResult |  Clr |     Clr |   107.009 ns |   0.6671 ns |   0.6240 ns |   107.009 ns |   106.204 ns |   108.247 ns |    8 | 0.0584 |      - |      - |     184 B |
          Yield |  Clr |     Clr | 1,766.843 ns |  26.5216 ns |  24.8083 ns | 1,770.383 ns | 1,705.386 ns | 1,800.653 ns |    9 | 0.0877 | 0.0038 | 0.0019 |     320 B |
 CompletedAwait | Core |    Core |    37.201 ns |   0.1961 ns |   0.1739 ns |    37.227 ns |    36.970 ns |    37.559 ns |    4 | 0.0076 |      - |      - |      24 B |
      Completed | Core |    Core |     9.017 ns |   0.0690 ns |   0.0577 ns |     9.010 ns |     8.925 ns |     9.128 ns |    1 | 0.0076 |      - |      - |      24 B |
         Pragma | Core |    Core |    34.118 ns |   0.4576 ns |   0.4281 ns |    34.259 ns |    33.437 ns |    34.792 ns |    3 | 0.0076 |      - |      - |      24 B |
     FromResult | Core |    Core |    46.953 ns |   1.2728 ns |   1.1905 ns |    46.467 ns |    45.674 ns |    49.868 ns |    5 | 0.0533 |      - |      - |     168 B |
          Yield | Core |    Core | 2,480.980 ns | 199.4416 ns | 575.4347 ns | 2,291.978 ns | 1,810.644 ns | 4,085.196 ns |   10 | 0.0916 |      - |      - |     296 B |



Test Code:

   [RankColumn, MinColumn, MaxColumn, StdDevColumn, MedianColumn]
   [ClrJob, CoreJob]
   [HtmlExporter, MarkdownExporter]
   [MemoryDiagnoser]
 public class BenchmarkAsyncNotAwaitInterface
 {
string context = "text context";
[Benchmark]
public int CompletedAwait()
{
    var t = new CompletedAwaitTest();
    var a = t.DoAsync(context);
    a.Wait();
    return t.Length;
}

[Benchmark]
public int Completed()
{
    var t = new CompletedTest();
    var a = t.DoAsync(context);
    a.Wait();
    return t.Length;
}

[Benchmark]
public int Pragma()
{
    var t = new PragmaTest();
    var a = t.DoAsync(context);
    a.Wait();
    return t.Length;
}

[Benchmark]
public int Yield()
{
    var t = new YieldTest();
    var a = t.DoAsync(context);
    a.Wait();
    return t.Length;
}

    [Benchmark]
    public int FromResult()
    {
        var t = new FromResultTest();
        var t2 = t.DoAsync(context);
        return t2.Result;
    }

public interface ITestInterface
{
    int Length { get; }
    Task DoAsync(string context);
}

class CompletedAwaitTest : ITestInterface
{
    public int Length { get; private set; }
    public async Task DoAsync(string context)
    {
        Length = context.Length;
        await Task.CompletedTask;
    }
}

class CompletedTest : ITestInterface
{
    public int Length { get; private set; }
    public Task DoAsync(string context)
    {
        Length = context.Length;
        return Task.CompletedTask;
    }
}

class PragmaTest : ITestInterface
{
    public int Length { get; private set; }
    #pragma warning disable 1998
    public async Task DoAsync(string context)
    {
        Length = context.Length;
        return;
    }
    #pragma warning restore 1998
}

class YieldTest : ITestInterface
{
    public int Length { get; private set; }
    public async Task DoAsync(string context)
    {
        Length = context.Length;
        await Task.Yield();
    }
}

    public interface ITestInterface2
    {
        Task<int> DoAsync(string context);
    }

    class FromResultTest : ITestInterface2
    {
        public async Task<int> DoAsync(string context)
        {
            var i = context.Length;
            return await Task.FromResult(i);
        }
    }
}


When working with “async” I figured out, that during refactoring process in development of components 
statistically “async” can often and implicitly happen. That means, that small changes in method 
signatures can cause changing of “async” behavior. Mostly developers should and aware of this, but such 
changes are mostly so silent, that unexpected behavioral changes might be often overseen.

Here one example, which might be harmful, but it can be very dangerous:

warning CS1998: This async method lacks 'await' operators and will run synchronously. Consider using the 
'await' operator to await non-blocking API calls, or 'await Task.Run(...)' to do CPU-bound work on a 
background thread. 

What does this mean?

Assume you have following code:

   public async Task LoadDataAsync() 
   { 
    1.        await this.ViewData.Dal.LoadDataAsync(); 

    2.        //NEXT STATEMENT 
   } 


If you see this warning on method ,LoadDataAsync() then the line 1 will be executed and immediately after 
this line the line 2 will be executed. 
Assuming that the method LoadDataAsync() is a  long-running method,  it will likely ends up after executing 
of next statement in the line 2, before long running of the method is finished. However, note you have put 
await which is statement that says “Wait on LoadDataAsync() in line 1 to be executed and then execute next 
statement in line 2.”. Depending on what you are doing in statement 2, the application might possible bind 
to none existing data are even crash.


Following example shows a BAD implementation of the async method which will cause named warning.


       

public async Task LoadDataAsync() 
        { 
            Task t = new Task(() => 
            { 
                // Some Long Running Code ..
            }); 

            t.Start(); 
        } 


The BAD thing in this example is putting of async in front of Task. If you do this, without of 
having any await in the method, you will get warning CS1998. To prevent warning simply remove async . 
Unfortunately in the real life, you probably already implemented await inside of that method, but due 
same refactoring, you decided to implement awaiting code inside of  the task body and likely forgotten 
to remove async . 

The CORRECT implementation of this method looks like:


       

public Task LoadDataAsync() 
        { 
            Task t = new Task(() => 
            { 
                // Some Long Running Code ..
            }); 

            t.Start();

            return t; 
        } 


Another interesting article for async best practices: 

http://developers.de/blogs/damir_dobric/archive/2013/07/30/async-error-handling-recap.aspx

https://visualstudiomagazine.com/articles/2017/09/01/hide-compiler-warnings.aspx




#pragma warning disable CS1998 // Warning suppressed from here
private async Task DoSomeWork()
#pragma warning restore CS1998 // Warning recognized from here
{
}


// ----- Assumes: using System.Diagnostics.CodeAnalysis;
[SuppressMessage("Compiler", "CS1998")]
private async Task DoSomeWork()
{
}
