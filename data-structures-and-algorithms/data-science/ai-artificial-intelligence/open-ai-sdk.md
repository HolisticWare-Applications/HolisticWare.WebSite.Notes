OpenAI API to .NET


https://github.com/markrussinovich/DesktopOrganizerBot

Azure OpenAI SDK forked into variants:
    
    Azure and 
    
    non-Azure (.NET)

    OAI SDK provides the base abstractions / types for working with OAI APIs.

    Azure OAI SDK takes a dependency on the OAI SDK
    
    adds the Azure bits on top of it. 

        identity, 
        
        security, 
        
        etc...

*   Introducing the OpenAI SDK library for .NET

    *   https://www.youtube.com/watch?v=VwuvkqQ5s_U


*   OpenAI API to .NET

    *   separate effort, 
    
        worked on by some of the same (Open AI SDK) folks. 
        
    *   Azure OpenAI SDK will still exist
    
        will be built on top of this new one, 
        
        adding Azure specific APIs/support

*   relation with Semantic Kernel?

    There's a potential over time that you may have access sooner to new OpenAI features. 
    
    may use it for OpenAI-specific behavior that wouldn't be supported in SK
    
    a scenario like that on 2024-06

*   Semantic Kernel builds on top of for OpenAI calls; 

    as a customer, you can use the SDK directly (instead of indirectly via SK) 
    
    if you want lower-level access or 
    
    have some other reason you don't want any additional layer on top of it. 
    
    Definitely not a competition, though -- 
    
    SK already takes a .NET dependency on the Azure Open AI (AOAI) library

*   Python as an analogy: when to pick

    openai

        more base API

    vs.

    langchain

        higher-level abstractions

*   the openai Python library allows switching between Azure vs. not 

    with a single line of code without changing project dependencies or reinstalling packages.


