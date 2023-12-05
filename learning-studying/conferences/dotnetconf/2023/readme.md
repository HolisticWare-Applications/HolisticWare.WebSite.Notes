# .NET Conf 2023

readme.md

*   https://www.dotnetconf.net/

*   https://www.dotnetconf.net/agenda

*   https://dotnetfoundation.org/projects/current-projects

*   https://devblogs.microsoft.com/dotnet/dotnet-conf-2023-celebrating-the-release-of-dotnet-8-save-the-date/

*   .NET Conf 2023 - Day 1

    *   https://www.youtube.com/watch?v=xEFO1sQ2bUc&ab_channel=dotnet


*   Blog

    *   https://aka.ms/dotnet/blog
*   Twitter

    *   https://aka.ms/dotnet/twitter

*   TikTok

    *   https://aka.ms/dotnet/tiktok

*   Mastodon

    *   https://aka.ms/dotnet/mastodon

*   LinkedIn

    *   https://aka.ms/dotnet/linkedin
*   Facebook

    *   https://aka.ms/dotnet/facebook

*   Docs

    *   https://learn.microsoft.com/dotnet

*   Forums

    *   https://aka.ms/dotnet/forums
*   Q&A

    *   https://aka.ms/dotnet-qa

*   Microsoft Learn

    *   https://aka.ms/learndotnet



​https://github.com/dotnet/eshop


<PublishAot>true

must be AOT compatible

## .NET Aspire

    Components
    Developer Dashboard
    app topology in c#
    deployment
    single command operation

    Aspire AppHost project
    Orchestration Support
    evolution of project Tye

    *   https://learn.microsoft.com/en-us/dotnet/aspire/get-started/aspire-overview

        *   https://aka.ms/dotnet-aspire

    *   https://learn.microsoft.com/en-us/dotnet/aspire/get-started/quickstart-build-your-first-aspire-app

    https://devblogs.microsoft.com/dotnet/introducing-dotnet-aspire-simplifying-cloud-native-development-with-dotnet-8/

    https://learn.microsoft.com/en-us/dotnet/core/whats-new/dotnet-8

    https://devblogs.microsoft.com/dotnet/announcing-dotnet-8/

    https://github.com/dotnet/aspire

    https://github.com/dotnet/aspire-samples

    https://learn.microsoft.com/en-us/dotnet/aspire/get-started/aspire-overview

    https://www.reddit.com/r/dotnet/comments/17v5nll/introducing_net_aspire_simplifying_cloudnative/

```
dotnet new \
    aspire \
    --output SampleAspire               

dotnet new \
    aspire-starter \
    --output SampleAspireStarter

dotnet new \
    aspire-starter \
    --use-redis-cache \
    --output AspireSample
```

```bash
dotnet run \
    --project SampleAspire/SampleAspire.AppHost
```

```bash
dotnet run \
    --project SampleAspireStarter/SampleAspireStarter.AppHost
```

```pwsh
dotnet run `
    --project SampleAspire/SampleAspire.AppHost
```

```pwsh
dotnet run `
    --project SampleAspireStarter/SampleAspireStarter.AppHost
```

### Deployment

*   https://learn.microsoft.com/en-us/dotnet/aspire/deployment/overview

*   https://github.com/dotnet/aspire/blob/main/samples/eShopLite/AppHost/aspire-manifest.json

## Blazor

    QuickGrid
    Sections
    Routing
    Auth
    https://github.com/microsoft/fluentui-blazor
    https://learn.microsoft.com/en-us/fluent-ui/web-components/integrations/blazor
    https://www.blazorfluentui.net/
    https://www.fluentui-blazor.net/

    @rendermode
    Server
    WebAssembly
    Auto Mode

    Building Cloud Native apps with .NET 8

    Glenn Condron, David Fowler
        Aspire
        Aspire questions


Performance

​https://aka.ms/aspnet/benchmarks

rudegpt
material icons
just to get icons


Ghidra

A software reverse engineering (SRE) suite of tools developed by NSA's Research Directorate
in support of the Cybersecurity mission

*   https://ghidra-sre.org/

*   https://ghidra-sre.org/CheatSheet.html

*   https://github.com/NationalSecurityAgency/ghidra

Zerosharp

    https://github.com/MichalStrehovsky/zerosharp

Span

    https://www.stevejgordon.co.uk/an-introduction-to-optimising-code-using-span-t

    https://nishanc.medium.com/an-introduction-to-writing-high-performance-c-using-span-t-struct-b859862a84e4

    Writing High-performance C# and .NET code, by Steve Gordon

        https://www.youtube.com/watch?v=g8MYUfplpt8&ab_channel=JetBrains

    https://medium.com/swlh/optimized-codes-using-span-t-an-introduction-ab8b396e131

    Talking C# Performance with Steve Gordon | Guest Series

        https://www.youtube.com/watch?v=6rc-ErztbCs&ab_channel=CodeOpinion

    TurbochargedWriting High-Performance C# and .NET Code - Steve Gordon

        https://www.youtube.com/watch?v=CwISe8blq38&ab_channel=NDCConferences

    A (brief) overview of Span≤T≥ - David Wengier

        https://www.youtube.com/watch?v=byvoPD15CXs&ab_channel=MelbourneALTNET

    https://andrewlock.net/a-deep-dive-on-stringbuilder-part-3-converting-chunks-to-a-string-with-tostring/

    https://www.meziantou.net/some-performance-tricks-with-dotnet-strings.htm



## Building resilient cloud services with .NET 8

Martin Tomka

This is a deep dive into the .NET 8 resiliency features and integration with the popular Polly library.

*   https://github.com/App-vNext/Polly

*   https://www.pollydocs.org/

Microsot.Extensions.Http.Ressiliency


## App Service the best place to host your .NET 8 Web Apps

Byron Tardif

.NET 8 is supported on App Service on day 0! Learn about some of the new exciting platform features that will take your .NET 8 workloads to the next level.


## In .NET 8, ASP.NET Ate

Safia Abdalla, Stephen Halter

Learn all about new features coming to the ASP.NET stack, from metrics support to improved route tooling, that are guaranteed to supercharge your development.

SignalR Stateful reconnect

https://infinum.com/blog/scaling-out-your-own-signalr-chat-application/

Minimal APIs Form binding


## What's new in System.Text.Json

Eirik George Tsarpalis

Our focus for System.Text.Json in this release has been to substantially improve the user experience when using the library in Native AOT applications, as well as delivering a number of highly requested features and reliability enhancements. These include support for populating read-only members, customizable unmapped member handling, support for interface hierarchies and snake case and kebab case naming policies and much more.

## Docker Podman

Podman


## Tiny, fast ASP.NET Core APIs with native AOT

Damian Edwards

.NET 8 introduces support for publishing ASP.NET Core applications to native AOT for lightning-fast startup times & small, self-contained, native executables & containers. This session will provide an overview of when you might want to consider publishing native AOT for your ASP.NET Core APIs and demonstrate the benefits and compatibility considerations.

<PublishSelfContained>true</PublishSelfContained>


Learning C# and .NET with freeCodeCamp!

Scott Hanselman, Quincy Larson

Excited to learn C# and put a certificate on your LinkedIn? freeCodeCamp and Microsoft teamed up to release the new Foundational C# Certification. It’s absolutely free, so why don’t you join us in getting certified with Microsoft learn and freeCodeCamp. In this session, Scott Hanselman sits down with freeCodeCamp founder, Quincy Larson, to discuss the certification, the origin or freeCodeCamp, accessibility in computing education, and how to keep learning throughout your career.



## Leveraging the power of the .NET platform in Azure Functions

Matthew Henderson, Fabio Cavalcante

Recent updates to Azure Functions make it easier than ever to build scalable, event-driven, serverless applications in .NET! In this session, the Azure Functions team will show you how to leverage .NET 8, ASP.NET Core integration, the latest Azure SDKs, and more so that you can make the most of your function projects.


https://aka.ms/af-



## CQRS with Event Sourcing using the “Critter Stack”

Jeremy Miller

Do you have a system where you think would be a good fit for a CQRS architecture that also uses Event Sourcing for at least part of its persistence strategy? Are you intimidated by the potential complexity of that kind of approach? Fear not, using a combination of the Postgresql-backed Marten (https://martendb.io) library for event sourcing and its newer friend Wolverine (https://wolverine.netlify.app) for command handling and asynchronous messaging, I'll show you how you can quickly get started with both CQRS and Event Sourcing. Once we get past the quick start, I'll show you how the Critter Stack's unique approach to the "Decider" pattern will help you create robust command handlers with very little code ceremony while still enjoying easy testability. Moving beyond basic command handling, I'll show you how to reliably subscribe to and publish the events or other messages created by your command handlers through Wolverine's durable outbox and direct subscriptions to Marten's event storage.



## Monitoring of Containerized .NET Applications in Azure

Ye Gu, Scott Kinghorn, Kayode Prince

At-scale monitoring of your .NET application infrastructure in real time is challenging given the number of steps and pieces typically involved to construct an end-to-end solution. We would like to discuss how Azure helps simplify this process for containerized .NET applications, especially those running on AKS. With the availability of a full monitoring software stack as managed services and automatic data enrichment, Azure makes monitoring more integrated and accessible as part of your application development and deployment cycles.




Blazor Puzzles and Answers

Jeffrey T. Fritz, Carl Franklin

The Blazor Puzzle podcast team of Carl Franklin and Jeff Fritz have a collection of puzzles and brain-teasers for you in this code-focused session about the latest features of the Blazor framework. We'll fix bugs, build cool features, and even write a unit test or two

https://blazorpuzzle.com/

https://www.reddit.com/r/Blazor/comments/17i95xu/anyone_following_blazor_puzzle_on_youtube/

https://www.youtube.com/live/BuB3mRHHIX8?si=8ioOu83ZZ5-X-zOw

https://github.com/BlazorPuzzle



## Integrating Third-party Services with .NET 8's Identity Framework

Kiah Imani

We've all been there - juggling multiple tools, trying to get them to play nicely together. And with .NET 8's robust Identity Framework, the idea of bringing in third-party services can feel a bit daunting. But here’s the good news: It doesn’t have to be! In this talk, we'll pull back the curtain on the seamless integration of third-party services with .NET 8. We'll start with the basics, understanding what the Identity Framework brings to our table. From there, we'll dive into real-world scenarios, like plugging in popular social logins and ensuring that Aunt Mabel can safely access her account without a hitch. And yes, we'll tackle the bumps along the way - challenges, security snags, and those "Oops, didn’t see that coming" moments. Together, we'll navigate the waters, learn from each other, and demystify the process of integrating third-party services, making it feel less like a chore and more like a new adventure. So, whether you're a .NET veteran or someone just dipping their toes in, come along! Let's make our projects a little less "How do I even?" and a lot more "Look what I just did!"

copilot problems - overthinking


## Clean Architecture with ASP.NET Core 8

Steve Smith

Clean Architecture (aka Onion, Hexagonal, Ports-and-Adapters) organizes your code in a way that limits its dependencies on infrastructure concerns. This results in much more testable, maintainable code and is ideal for Domain-Driven Design as well as microservices. Learn how to apply it to your ASP.NET Core apps!

*   https://www.youtube.com/watch?v=yF9SwL0p0Y0&ab_channel=dotnet

*   Clean Architecture

    *   formerly known as 
    
        *   Onion Architecture

        *   Hexagonal Architecture

        *   Ports and Adapters Architecture

    *   goal

        *   domain centric approach to 
        
            *   software design

            *   dependency organization/management

    *   eariler

        *   storage (database) as centre of the universe





## .NET Conf 2023 - Student Zone

https://www.youtube.com/watch?v=TH12YSLLe9E&ab_channel=dotnet


General .NET Conf Student Zone is done! And, if you haven't shared your feedback, we really appreciate to know more about the experience and what can we do better. 
Event Recording: https://aka.ms/netconf23/studentstream
Please leave your feedback on the event! https://aka.ms/netconf23/studentfeedback

1:58 - Introduction 
14:09 - Building Your Own Course Assistant with AI
1:10:45 - Minimal API + SPA, a perfect match
2:21:04 - Building an intelligent app with Blazor and Azure OpenAI
3:32:40 - Get started building mobile & desktop apps with .NET
4:19:19 - Games in Godot! Let’s make a classic Paddle game with C#!
4:47:53 - .NET Backend Mastery for Game Development
5:10:20 - Coding a Drone Using .NET and ChatGPT AI & Flying in MR!
5:39:46 - Outro

*   Get the code 

    *   https://aka.ms/netconf23/studentrepo

    *   https://aka.ms/netconf23/studentrepo





What Is .NET Aspire? The Insane Future of .NET!

    https://www.youtube.com/watch?v=DORZA_S7f9w&ab_channel=NickChapsas

How to Deploy .NET 8's New .NET Aspire Stack

    https://www.youtube.com/watch?v=HYe6y1kBuGI&ab_channel=NickChapsas

    dotnet run --publisher mannigest --output-path manifest.json

    azd init

    
