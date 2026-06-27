Opencode System prompt

https://cefboud.com/posts/coding-agents-internals-opencode-deepdive/

```shell
opencode --system "" ""
````

https://agentfactory.panaversity.org/docs/agentic-coding-crash-course

https://www.reddit.com/r/opencodeCLI/comments/1p6lxd4/shortened_system_prompts_in_opencode/


GPT models (gpt-, o1, o3): Uses PROMPT_BEAST - an aggressive, thorough prompt

GPT-5: Uses PROMPT_CODEX

Claude: Uses PROMPT_ANTHROPIC - standard assistant prompt

Gemini: Uses PROMPT_GEMINI - structured, safety-focused

Polaris: Uses PROMPT_POLARIS

Others: Default to PROMPT_ANTHROPIC_WITHOUT_TODO



Well, system prompt can be different things. There’s the system prompt that’s being held by the llm - meaning depending on the model you choose, it’s on the provider side. Then there’s AGENTS.md, which is being added to the context of either of the agents - meaning primary agents and secondary subagents. Then there’s the agent prompt which I was referring to. There are two basic agents you get -> BUILD/PLAN. These are loaded automatically from the schema, but you can disable them in the opencode.jsonc. For example I’ve been building my own agents instead of the two and you can add a variable of their prompts in the path I’ve mentioned.

https://www.reddit.com/r/opencodeCLI/comments/1s7oyj2/is_there_an_easybaked_in_way_to_see_and_modify/

