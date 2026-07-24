# AgentMemory

*   https://github.com/rohitg00/agentmemory

```shell
npm install -g @agentmemory/agentmemory
```

```shell
# start the memory server on :3111
agentmemory

# seed sample sessions + prove recall
agentmemory demo

# one command: boot server, run demo, tear down (no second terminal)
agentmemory demo --serve


# wire MCP into your agent (also: copilot-cli, codex, cursor, gemini-cli, ...)
agentmemory connect claude-code
```


```shell
# install 15 native skills (8 you can invoke, 7 reference) so your agent knows when to use the tools
npx skills add rohitg00/agentmemory -y
```


*   REST API

    *   http://localhost:3111

*   Viewer

    *   http://localhost:3113

*   Streams

    *   ws://localhost:3112

*   Engine

    *   ws://localhost:49134


Local (Ollama / LM Studio / vLLM / llama.cpp)	

    OPENAI_API_KEY=local
    OPENAI_BASE_URL=http://localhost:11434/v1
    OPENAI_MODEL=<your model>


Anthropic API	

    ANTHROPIC_API_KEY
    Per-token billing

OpenAI API
    OPENAI_API_KEY
Gemini
    GEMINI_API_KEY
    Also enables embeddings
OpenRouter
    OPENROUTER_API_KEY
    Any model
