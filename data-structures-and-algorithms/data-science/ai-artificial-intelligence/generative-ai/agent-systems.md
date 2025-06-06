# Agent Systems

agent-systems.md

1.  LangChain

    A good starting point. It’s widely adopted and works well for building simple agent workflows. 
    
2.  AutoGen
    
    Particularly impressive for code generation and complex multi-agent coordination. 

3.  CrewAI

    flexible team-based structure. 
    However, I often face compatibility issues with Azure-hosted LLMs, which can be a blocker. 




https://www.reddit.com/r/AI_Agents/comments/1l0vztz/which_agent_system_is_best/


From Anthropic's "buliding effective AI agents"

https://www.anthropic.com/engineering/building-effective-agents

These frameworks make it easy to get started by simplifying standard low-level tasks like calling LLMs, defining and parsing tools, and chaining calls together. However, they often create extra layers of abstraction that can obscure the underlying prompts and responses, making them harder to debug. They can also make it tempting to add complexity when a simpler setup would suffice.

We suggest that developers start by using LLM APIs directly: many patterns can be implemented in a few lines of code. If you do use a framework, ensure you understand the underlying code. Incorrect assumptions about what's under the hood are a common source of customer error.




Google ADK is my daily choice, the adk web interface makes debugging MCP calls and other logic easy. Also has more tutorials than e.g. Semantic Kernel for example, which is longer on the market.

Semantic Kernel is the thing that I create agents with at work. It's okay, but I'd change it in a heartbeat for LangGraph (for it's maturity), Pydantic AI (data driven evaluations) or Google ADK (completeness and debugging, also deployment).




I HIGHLY recommend you take a look at Pydantic AI (not the regular pydantic library which is just about better class attribute declarations and error handling). The pydantic ai framework feels a lot more intuitive and less of a mess than langchain for example. You can basically define an agent (wrapping an LLM) and connect it to an MCP server in like 4 lines of code, easy pz.

I don't have experience with Autogen so can't compare, but I can tell you that langchain feels much much messier to me and they do an awful job of deprecating older patterns and it's just overall horrible to work with.

Be warned, if you're going to use a coding assistant (cursor, co-pilot, whatever). The pydantic ai library is new, so they will hallucinate non-functional code. Just read the docs yourself, it's stupid simple. Or if you have to, scrape the docs into a markdown file and have that available to your coding assistant.

Edit: If you're having trouble connect to azure hosted LLMs, you're likely confused. They follow the common convention of hosting LLMs using an "open ai compatible" REST api which is a standard these days. Here's the pydantic ai specific example for Azure foundry, but you'll notice they are just using the OpenAI connector when you look at the code: https://ai.pydantic.dev/models/openai/#azure-ai-foundry




Litellm + pydantic + core python is all you need


list of curated open-source repos for building AI agents https://www.aitidbits.ai/p/open-source-agents-updated





Another option is voltagent, I’m one of the maintainers.
https://github.com/VoltAgent/voltagent

It’s a ts-based framework for building and orchestrating AI agents with a flexibility. It’s LLM-agnostic and has built-in n8n-style observability (timeline view, tracing, state inspection..), which really helps with debugging and scaling.

We’ve seen people use it in production setups where they need to coordinate multiple agents or integrate external tools. Could be a good fit if you’re thinking about agents that execute scripts based on input.


 I was going to point to Anthropic’s post on building effective agents, but I don’t think that fully answers the question you asked. Your asking more about what platforms to use correct?

In my opinion, a lot of the frameworks that are meant to make agent development easier actually end up killing your agent in production. Sure, they help you get off the ground quickly. The first few demos look great. You might even get something to market. But then reality hits. Things break. Iteration slows. The abstraction that once gave you speed becomes the thing dragging you down.

What I appreciate about Anthropic’s guide is that it strips things down to the essential components. Once you understand those, it becomes a software engineering problem. You can buy or build the pieces you need and assemble from there.

Now, full transparency: I work at a company building some of those building blocks, so I’m obviously a little biased. But the reason we’re building them is because we believe in that modular, unopinionated approach. Whether you use our tools or someone else’s, I think the right path is to treat agents as software—and avoid getting locked into rigid, overly abstracted frameworks.

So what are the essential building blocks?

    A solid RAG solution

    Memory — semantic, working, procedural, episodic (this paper does a great job explaining the distinctions)

    Stateful compute

    Data access and control

And ideally, you want both compute and data to be branchable and versionable, so you can test new agent versions in parallel against real production conditions. 



If you are working with Azure, I recommend using Semantic-Kernel (or Azure AI Agent service) simple and straightforward, have lots of inbuild connectors + MCP support.

Autogen is still in research preview and does not provide good deployment options.

Langgraph a good tool, but I find somewhat confusing. I have not tried CrewAI.


Do not use a bloated unnecessary framework to build agents. Seriously not worth it. You can build with simple api primitives. Here’s https://CHAI.new I built it to help people convert prompts to prod ready agents without any frameworks. Here’re top eight agent architectures without any frameworks https://Langbase.com/agents

I recently built a multi-agent system using Agno and have liked it so far. I have also heard good things about DSPy. 

