# SubAgent with Local LLMs

subagent-with-local-llm.md

prompt:

> Claude Code SubAgent with Local LLMs

https://www.reddit.com/r/LocalLLaMA/comments/1riog2w/use_a_local_llm_as_a_subagent_from_claude_code_to/

    https://gist.github.com/ClassicalDude/fec04535926190093466177423fe34ac

https://www.kdnuggets.com/pairing-claude-code-with-local-models


To run a Claude Code skill or subagent backed by a local model (such as via Ollama, LM Studio, or vLLM), you can bridge local inference endpoints using custom Markdown agent definitions, a helper/proxy script, or a Model Context Protocol (MCP) server.Setting Up a Local SubagentClaude Code natively supports specialized subagents defined via Markdown files with YAML frontmatter in your .claude/agents/ (project-level) or ~/.claude/agents/ (global/user-level) directories. While Claude Code's native model: parameter expects Anthropic aliases (sonnet, opus, haiku), you can offload execution to a local model using an orchestration script or an MCP delegation layer:The MCP / Proxy Approach: Use a local-compatible bridge like Claude Code Delegate or a local transformer proxy (ccproxy) to route specific subagent tool loops to an OpenAI-compatible local endpoint (http://localhost:11434/v1 or http://localhost:1234/v1).Define the Subagent File: Create ~/.claude/agents/local-coder.md:

yaml

---
name: local-coder
description: Offloads isolated code transformations, translations, and doc generation to a local model.
tools: Read, Grep, Glob
model: inherit
---

You are an isolated local subagent. Process the given task using your available read tools, and return a clean, concise 
summary.











Key Implementation StepsLaunch Local Server: Start your local backend (e.g., LM Studio or Ollama) with a tool-capable model like Qwen or DeepSeek-Coder.Register Custom Skill / Command: Place an invocable command script or configuration in ~/.claude/commands/ so you can trigger your workflow directly via slash commands.Isolate Context: Keep tool permissions read-only (Read, Grep, Glob) for the local subagent to prevent unintended modifications and keep token overhead manageable.


1. The Python Orchestrator/Proxy ScriptSave this script as ~/.claude/bin/local_agent_proxy.py (or any location in your system path). It intercepts tool requests from Claude Code and feeds them to your local model via an OpenAI-compatible API (like Ollama or LM Studio).


```python
import os
import sys
import json
import urllib.request 

### Configuration for your local model API

LOCAL_API_URL = os.environ.get("LOCAL_API_URL", "http://localhost:11434/v1/chat/completions")
LOCAL_MODEL_NAME = os.environ.get("LOCAL_MODEL", "qwen2.5-coder:7b") 

def query_local_model(system_prompt, user_prompt):
payload = {
"model": LOCAL_MODEL_NAME,
"messages": [
{"role": "system", "content": system_prompt},
{"role": "user", "content": user_prompt}
],
"temperature": 0.2
} 

data = json.dumps(payload).encode("utf-8")
req = urllib.request.Request(
LOCAL_API_URL,
data=data,
headers={"Content-Type": "application/json"}
)

try:
with urllib.request.urlopen(req) as response:
res_body = json.loads(response.read().decode("utf-8"))
return res_body["choices"][0]["message"]["content"]
except Exception as e:
return f"Error connecting to local model backend: {str(e)}"

def main(): 

# Read the prompt/task injected by Claude Code from stdin or arguments

if len(sys.argv) > 1:
user_prompt = " ".join(sys.argv[1:])
else:
user_prompt = sys.stdin.read().strip()

if not user_prompt:
print("Error: No input provided to the local subagent proxy.")
sys.exit(1)

system_prompt = (
"You are a local code optimization subagent. "
"Analyze the provided code snippets or files, perform the requested "
"refactoring or documentation task, and return ONLY the final output or precise diffs."
)

result = query_local_model(system_prompt, user_prompt)
print(result)

if **name** == "**main**":
main()
```



2. Custom Project-Level Workflow YAML Configuration

In your project's root directory create a file named:

    .claude/agents/local-refactor.md

This configures Claude Code to bundle project context and delegate the actual code-crunching task to your local model 
script.

```markdown
---
name: local-refactor
description: >
    Offloads heavy code refactoring, structural cleanups, and docstring additions to a local LLM to save token
    costs.
tools: 
    * name: Read
      description: Allows the subagent to view the contents of specific project files.
    * name: Grep
      description: Allows searching for string patterns across the local codebase.
model: inherit
---

You are a specialized subagent coordinator for project refactoring. Your job is to gather the relevant file data using your tools and pass it directly to the local model orchestrator script. 

### Protocol:

1. Use Grep or Read to gather all source files requested by the user.
2. Format the gathered code into a clear payload.
3. Pipe that content into the local execution layer by invoking the system command:
python3 ~/.claude/bin/local_agent_proxy.py "<your formatted codebase payload and instructions here>"
4. Return the exact response generated by the local model directly back to the main terminal thread.

```
