# Products

readme.md

*   Claude Code

*   GitHub Copilot CLI

*   Google Gemini CLI

*   



```
  - Cursor      ${c("dim", ".cursor/mcp.json")}
  - Claude Code ${c("dim", ".mcp.json")}
  - Windsurf    ${c("dim", ".windsurf/mcp.json")}
  - Cline       ${c("dim", ".cline/mcp.json")}
  - Roo Code    ${c("dim", ".roo/mcp.json")}
  - Gemini CLI  ${c("dim", ".gemini/settings.json")}
  - Codex       ${c("dim", ".codex/config.toml")}
  - OpenCode    ${c("dim", ".opencode/opencode.jsonc")}

```


ollama run gemma3:27b "Explain me following image /Users/moljac/Downloads/IMG_2441.JPG"

AI harness


An AI agent harness is the essential software infrastructure layer that surrounds a Large Language Model (LLM) to turn it into a reliable, autonomous agent. It acts as an "operating system," providing memory, security tools, and error correction that raw models lack. It enables AI to handle complex tasks by enforcing guardrails. 
Salesforce
Salesforce
 +2
Key Components of an AI Harness:
Execution Runtime & Tool Registry: Defines, manages, and executes the tools an agent can use, such as shell commands, browser access, or API calls.
Sandboxed Environment: Provides a safe, isolated space for agents to operate without risking production systems.
Context Management & Memory: Ensures the agent maintains state, remembers previous actions across sessions, and manages long-term memory.
Guardrails & Validation: Enforces constraints on AI actions and validates outputs for errors, preventing runaway agents.
Feedback Loops: Implements logic for the agent to self-correct (e.g., trying a command again if it fails). 
Salesforce
Salesforce
 +4
Harness Engineering Discipline:
"Harness engineering" is the emerging field of designing these systems to make agents reliable. 
Step 1: Define Scope: Define exactly what the agent can and cannot do.
Step 2: Create Configuration: Create machine-readable files (.cursorrules or AGENTS.md) documenting project constraints.
Step 3: Build Feedback Loops: Establish a write-test-fix cycle to make agents self-correcting.
Step 4: Implement Guardrails: Use sandboxes to restrict file access and ensure security.
Step 5: Ensure Observability: Log agent actions and tool calls for debugging. 
Examples of Harness Frameworks:
LangGraph/LangChain: Offers stateful, graph-based orchestration for complex agent workflows.
CrewAI: Focuses on multi-agent collaboration with specialized roles.
Claude Code/SDK: Provides a built-in, secure harness for long-running agents.
OpenAI Assistants API: Built-in sandboxed tool execution and file management. 


https://medium.com/be-open/what-is-ai-harness-engineering-your-guide-to-controlling-autonomous-systems-30c9c8d2b489

https://parallel.ai/articles/what-is-an-agent-harness

https://parallel.ai/articles/what-is-an-agent-harness
