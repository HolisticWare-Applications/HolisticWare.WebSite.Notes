# async await Tips n Tricks

async-await-tips-n-tricks.md

Async tip: 
*Always* dispose CancellationTokenSources that are configured with a timeout. 
Not disposing can lead to flooding the timer queue resulting in extremely poor performance.

Well in some scenarios especially with task completion sources token registrations come in 
handy if you manage the disposal as well as the closure allocs properly

n theory, you only need to use a TCS when you interop with something you can't directly await. 
Library authors need to do this a bunch, I'm trying to mine for places that use them to figure 
out the patterns.

For example also for things like smart batch and dispatch both count or time based. TCS is a nice 
toolkit for those things

*   https://github.com/Particular/NServiceBus.AzureServiceBus/blob/develop/src/Transport/Receiving/MultiProducerConcurrentCompletion.cs#L92 …

*   https://github.com/Particular/NServiceBus.AzureServiceBus/blob/develop/src/Transport/Receiving/MultiProducerConcurrentCompletion.cs#L152 …

Shouldn't we dispose all disposable things when we're done with them?

Most of the time yep.



*   https://devblogs.microsoft.com/dotnet/configureawait-faq/


*   Internals of How the await Keyword Works

    *   https://www.codeproject.com/Articles/5327239/Internals-of-How-the-await-Keyword-Works