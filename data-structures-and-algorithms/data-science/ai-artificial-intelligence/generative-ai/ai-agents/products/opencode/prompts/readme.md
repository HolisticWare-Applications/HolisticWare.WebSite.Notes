# opencode prompts

*   https://www.reddit.com/r/opencodeCLI/comments/1p6lxd4/shortened_system_prompts_in_opencode/

*   https://opencode.ai/docs/agents/

```
0.0-0.2: Very focused and deterministic responses, ideal for code analysis and planning
0.3-0.5: Balanced responses with some creativity, good for general development tasks
0.6-1.0: More creative and varied responses, useful for brainstorming and exploration
```


```json
{
  "agent": 
  {
    "analyze": 
    {
      "temperature": 0.1,
      "prompt": "{file:./prompts/analysis.txt}"
    },
    "build": 
    {
      "temperature": 0.3
    },
    "brainstorm": 
    {
      "temperature": 0.7,
      "prompt": "{file:./prompts/creative.txt}"
    },
    "design": 
    {
      "temperature": 0.9,
      "prompt": "{file:./prompts/creative.txt}"
    }
  }
}
```