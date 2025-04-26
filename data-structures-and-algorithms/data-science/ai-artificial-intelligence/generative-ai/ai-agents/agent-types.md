# Agent Types

agent-types.md

*   Chain of Thought agent

    *   agent mode is a Chain of Thought agent. 
    
    *   Autodev 
    
        *   has a Chain of thought agent
    
        *   has multi agent orchstration. 
        
    *   the current trend is towards single chain of thought agents
 
*   as models have advanced, less agentic scaffold is needed

*   multi agent 

    *   basically decomposes a hard problem into smaller parts to increase the chance that a 
        model can solve them
 
    *   not needed with reasoning models (or one needs less of it)
 


Does multi-agent use less resources than chain of thought? I would imagine Chain of thought leverages the model more. Is there a higher cost factor to that?
yes, as Andrew mentioned, 


    *   there are more tokens on CoT
    
    *   possible to combine it with multiagent where it is already known 
    
        it's not needed to reduce cogs or user cheaper models for some scenarios for optimization

    *   if the CoT agent can't solve it
 
        *   it keeps trying...
 
        *   things get very expensive

 
Is there a specific goal to use multi-agent when the problems can be solved programmatically? Or is the current trend to favor speed of development and leverage chain of thought because it simplifies the architecture?
 
the latter is usually the current starting point, unless you have specific COGS or other constraints


the latter is the current starting point, unless you have specific COGS or other constraints
A strategy could be to start with CoT and iterate to add multiple agents later to help optimize. Am I on the right track here or is this the wrong way of thinking about it?
 
yeah, that's valid if you have all that flexibility
 
if there's a "tell" to go ship in vs/vscode agent mode.. then you're stuck with CoT
 
and you need to get creative with tools etc to bring in the optimizations you may need
 
 https://aka.ms/msbench 
Sign in to your account
 
https://aka.ms/autodev 
shared via SharePoint
 
https://aka.ms/ces 
shared via SharePoint

How does Autogen or Semantic Kernel fit into this picture? I feel many overlapping products.

these are other agentic frameworks that solve real problems, and have merits.  I would personally classify them as generally a little heavier, more rigid and not specifically focused on solving developer agentic scenarios   