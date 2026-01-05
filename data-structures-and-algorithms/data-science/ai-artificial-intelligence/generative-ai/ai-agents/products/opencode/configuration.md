
export OPENCODE_CONFIG=/path/to/my/custom-config.json
opencode run "Hello world"

export OPENCODE_CONFIG_DIR=/path/to/my/config-directory
opencode run "Hello world"


https://github.com/rothnic/opencode-island/tree/main/docs

```
$HOME/.config/opencode/opencode.json
$HOME/.config/opencode/opencode.jsonc
```

https://github.com/inkeep/agents/blob/main/opencode.jsonc

1. **Global Configuration** (User-level)
   - `~/.config/opencode/opencode.jsonc`
   - Applies to all OpenCode sessions
   
2. **Project Configuration** (Project-level)
   - `<project-root>/.opencode/opencode.jsonc`
   - Project-specific overrides

3. **Environment Variables**
   - Runtime configuration
   - Highest priority


```jsonc
{
  "$schema": "https://opencode.ai/config.json",
  // "plugin": ["opencode-openai-codex-auth"],
  // "enterprise": {
  //   "url": "https://enterprise.dev.opencode.ai",
  // },
  "instructions": ["STYLE_GUIDE.md"],
  "provider": 
  {
    "ollama": 
    {
      "npm": "@ai-sdk/openai-compatible",
      "name": "Ollama (local)",
      "options": 
      {
        "baseURL": "http://localhost:11434/v1"
      },
      "models": 
      {
        "deepseek-r1:1.5b": 
        {
          "name": "DeepSeek R1 1.5B"
        },
        "qwen3-coder:30b": 
        {
          "name": "Qwen3 Coder 30B"
        }
      }
    }
  }
  "models" :
  {
    // Multiple model configurations
    "configurations": {
      "fast": {
        "provider": "openai",
        "model": "gpt-3.5-turbo"
      },
      "powerful": {
        "provider": "anthropic",
        "model": "claude-opus-4"
      },
      "local": {
        "provider": "ollama",
        "model": "llama3",
        "baseUrl": "http://localhost:11434"
      }
    }
  },  
  "permission": 
  {
    "bash": 
    {
      "ls foo": "ask",
    },
  },
  "mcp": 
  {
    "context7": 
    {
      "type": "remote",
      "url": "https://mcp.context7.com/mcp",
    },
  },
  "tools": 
  {
    "github-triage": false,
    "github-pr-search": false,
  },
}
```