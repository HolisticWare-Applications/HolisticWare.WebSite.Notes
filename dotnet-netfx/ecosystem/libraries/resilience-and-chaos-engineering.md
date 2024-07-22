# Resilience and Chaos Engineering

resilience-and-chaos-engineering.md


resilience strategies

Retry: Try again if something fails. This can be useful when the problem is temporary and might go away.
Circuit Breaker: Stop trying if something is broken or busy. This can benefit you by avoiding wasting time and making things worse. It can also support the system to recover.
Timeout: Give up if something takes too long. This can improve your performance by freeing up space and resources.
Rate Limiter: Limit how many requests you make or accept. This can enable you to control the load and prevent problems or penalties.
Fallback: Do something else if something fails. This can improve your user experience and keep the program working.
Hedging: Do more than one thing at the same time and take the fastest one. This can make your program faster and more responsive.
chaos strategies:

Fault: Introduces faults (exceptions) into your system.
Outcome: Injects fake outcomes (results or exceptions) in your system.
Latency: Adds delay to executions before calls are executed.
Behavior: Enables the injection of any additional behavior before a call is made.


https://devblogs.microsoft.com/dotnet/resilience-and-chaos-engineering/

https://www.pollydocs.org/
