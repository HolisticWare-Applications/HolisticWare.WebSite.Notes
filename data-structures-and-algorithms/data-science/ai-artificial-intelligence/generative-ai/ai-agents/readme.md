# AI Agents


https://www.reddit.com/r/Rag/comments/1ldqmwk/a_free_goldmine_of_tutorials_for_the_components/

https://github.com/NirDiamant/agents-towards-production

Orchestration

Tool integration

Observability

Deployment

Memory

UI & Frontend

Agent Frameworks

Model Customization

Multi-agent Coordination

Security

Evaluation



I thought I knew of two, but my memory betrayed me - one was a Nic.

OS programming 

    Windows
    
    Nir Lichtman https://youtube.com/@nirlichtman

C + Algorithms

    Imposter Nir https://youtube.com/@nicbarkeragain


https://galileo.ai/blog/deep-research-agent?utm_source=reddit


 When I first started learning how to build AI agents, I was overwhelmed. There were so many tools, each claiming to be essential. Half of them had gorgeous but confusing landing pages, and I had no idea what layer they belonged to or what problem they actually solved.

So I spent time untangling the mess—and now that I’ve got a clearer picture, here’s the full stack I wish I had on day one.

    Agent Logic – the brain and workflow engine. This is where you define how the agent thinks, talks, reasons. Tools I saw everywhere: Lyzr, Dify, CrewAI, LangChain

    Memory – the “long-term memory” that lets your agent remember users, context, and past chats across sessions. Now I know: Zep, Letta

    Vector Database – stores all your documents as embeddings so the agent can look stuff up by meaning, not keywords. Turns out: Milvus, Chroma, Pinecone, Redis

    RAG / Indexing – the retrieval part that actually pulls relevant info from the vector DB into the model’s prompt. These helped me understand it: LlamaIndex, Haystack

    Semantic Search – smarter enterprise-style search that blends keyword + vector for speed and relevance. What I ran into: Exa, Elastic, Glean

    Action Integrations – the part that lets the agent actually do things (send an email, create a ticket, call APIs). These made it click: Zapier, Postman, Composio

    Voice & UX – turns the agent into a voice assistant or embeds it in calls. (Didn’t use these early but good to know.) Tools: VAPI, Retell AI, ElevenLabs

    Observability & Prompt Ops – this is where you track prompts, costs, failures, and test versions. Critical once you hit prod. Hard to find at first, now essential: Keywords AI, Helicone, Agenta, Portkey

    Security & Compliance – honestly didn’t think about this until later, but it matters for audits and enterprise use. Now I’m seeing: Vanta, Drata, Delve

    Infra Helpers – backend stuff like hosting chains, DBs, APIs. Useful once you grow past the demo phase. Tools I like: LangServe, Supabase, Neon, TigerData

A possible workflow looks like this:

    Start with a goal → use an agent builder.

    Add memory + RAG so the agent gets smart over time.

    Store docs in a vector DB and wire in semantic search if needed.

    Hook in integrations to make it actually useful.

    Drop in voice if the UX calls for it.

    Monitor everything with observability, and lock it down with compliance.

how we approach these with VoltAgent, our open-source TypeScript framework for building AI agents.(I'm maintainer)
https://github.com/voltagent/voltagent

We think of an agent as:

    Workflow (Planner): defines the steps/tasks

    LLM Provider: connects to OpenAI, Groq, etc.

    Memory: long-term or session-based (like RAG)

    Tools: plugins for API calls, DB queries, file ops, etc.




To build your own AI agent, you can follow these guidelines and recommendations:
Core Components of an AI Agent

    Reasoning: The agent should be able to break down tasks and make decisions based on inputs.

    Memory: Implementing a memory system allows the agent to retain information across interactions, enhancing its ability to provide contextually relevant responses.

    Tool Use: The agent should be able to interact with external APIs and tools to perform tasks, such as fetching data or executing commands.

    Planning: A planning mechanism helps the agent create structured workflows to achieve complex goals.

Recommended Frameworks

    LangChain: Great for building applications that require LLMs and tool integration. It provides a flexible architecture for managing workflows.

    CrewAI: Focused on creating agents that can perform tasks autonomously, integrating with various tools and APIs.

    AutoGen: Useful for generating agents that can adapt based on user interactions and feedback.

System Structure

    Microservices: This architecture is beneficial for scalability and allows you to develop and deploy different components independently. Each service can handle specific tasks, such as API interactions or data processing.

    Monolith: If your project is small or in the early stages, a monolithic structure can simplify development and deployment. However, it may become challenging to manage as the project grows.

Model Training vs. API Usage

    Using APIs: Leveraging APIs like OpenAI or Groq can save time and resources, allowing you to focus on building the agent's logic rather than training models from scratch.

    Training a Model: If you have specific needs that existing models do not meet, consider training your own model. This requires more resources and expertise but can yield tailored results.

Long-term Memory and Persistent State

    Implement a database or a state management system to store user interactions and relevant data. This allows the agent to recall past interactions and provide a more personalized experience.

    Consider using frameworks that support state management out of the box, or integrate a database solution that fits your architecture.

Resources

    For a comprehensive guide on building AI agents, check out How to Build An AI Agent.

    Explore the CrewAI framework for building autonomous agents.

    Look into LangChain for managing workflows with LLMs.

These resources and guidelines should help you get started on your journey to building an AI agent.











workflow

    Brains / LLM orchestration: Lyzr, Dify, CrewAI, LangChain

    Long-term memory: Zep, Letta

    Knowledge store (vectors): Chroma, Milvus, Pinecone

    Retrieval-augmented generation: LlamaIndex, Haystack

    Semantic / enterprise search: Glean, Elastic, Exa

    Action integrations: Zapier, Postman, Composio

    Observability & prompt ops: Keywords AI, Helicone, Agenta, Portkey

    Security & compliance: Vanta, Drata, Delve

    Infra & serving (if self-hosted): LangServe, Supabase, Neon



