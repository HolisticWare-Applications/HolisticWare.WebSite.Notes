


https://github.com/ggml-org/llama.cpp

https://www.cherry-ai.com/
https://github.com/CherryHQ/cherry-studio


https://github.com/Renset/macai

https://msty.ai/

https://sanctum.ai/

https://ibm.github.io/prompt-declaration-language/

    https://github.com/IBM/prompt-declaration-language

    https://www.litellm.ai/#pricing

    https://www.litellm.ai/


https://code2prompt.dev/docs/how_to/install/

    pip install code2prompt_rs

    https://code2prompt.dev/
    
    https://code2prompt.dev/docs/explanations/tokenizers/

    https://github.com/zurawiki/tiktoken-rs


https://gorilla.cs.berkeley.edu/

    https://github.com/ShishirPatil/gorilla

    https://github.com/gorilla-llm/gorilla-cli

https://docs.gptscript.ai/

    https://docs.gptscript.ai/examples/local-files

    https://github.com/gptscript-ai/gptscript

    required 
    
        OpenAI API key

https://github.com/mark3labs/mcphost

    MCPHost acts as a host in the MCP client-server architecture, where:

Currently supports:

Anthropic Claude models (Claude 3.5 Sonnet, Claude 3.5 Haiku, etc.)
OpenAI models (GPT-4, GPT-4 Turbo, GPT-3.5, etc.)
Google Gemini models (Gemini 2.0 Flash, Gemini 1.5 Pro, etc.)
Any Ollama-compatible model with function calling support
Any OpenAI-compatible API endpoint


Hosts (like MCPHost) are LLM applications that manage connections and interactions
Clients maintain 1:1 connections with MCP servers
Servers provide context, tools, and capabilities to the LLMs

# For all providers (use --provider-api-key flag or these environment variables)
export OPENAI_API_KEY='your-openai-key'        # For OpenAI
export ANTHROPIC_API_KEY='your-anthropic-key'  # For Anthropic
export GOOGLE_API_KEY='your-google-key'        # For Google/Gemini    


Configuration ⚙️
MCP Servers
MCPHost will automatically create a configuration file in your home directory if it doesn't exist. 

It looks for config files in this order:

    .mcphost.yml or 
    .mcphost.json (preferred)

    .mcp.yml 
    .mcp.json (backwards compatibility)

Config file locations by OS:

Linux/macOS: 

    $HOME/.mcphost.yml
    $HOME/.mcphost.json
    $HOME/.mcp.yml
    $HOME/.mcp.json

Windows: 
    
    %USERPROFILE%\.mcphost.yml
    %USERPROFILE%\.mcphost.json
    %USERPROFILE%\.mcp.yml
    %USERPROFILE%\.mcp.json

specify a custom location using the --config flag.



https://mentat.ai/docs/pricing

    rawdog


tenere

    https://github.com/pythops/tenere

    Tenere can be configured using a TOML configuration file. By default, the configuration file is located at:

Linux: $HOME/.config/tenere/config.toml or $XDG_CONFIG_HOME/tenere/config.toml
Mac: $HOME/Library/Application Support/tenere/config.toml
Windows: ~/AppData/Roaming/tenere/config.toml

tenere -c ~/path/to/custom/config.toml