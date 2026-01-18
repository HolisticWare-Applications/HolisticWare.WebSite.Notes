Ollama MCP

go install github.com/mark3labs/mcphost@latest

`local.json`

```json
{
    "mcpServers": 
    {
        "ddg-search": 
        {
            //"command": "C:\\Users\\datas\\anaconda3\\Scripts\\uvx.exe",
            "command": "uvx",
            "args": 
            [
                "duckduckgo-mcp-server"
            ]
        },
        "filesystem": 
        {
            "command": "npx",
            "args": 
            [
                "-y",
                "@modelcontextprotocol/server-filesystem",
                "C:\\Users\\datas\\OneDrive\\Desktop\\ollama-mcp"
            ]
        }
    }  
}
```

```bash
ollama run qwen2.5
mcphost \
    -m ollama:qwen2.5 \
    --config "C:\Users\datas\OneDrive\Desktop\local.json"
```


https://medium.com/data-science-in-your-pocket/model-context-protocol-mcp-using-ollama-e719b2d9fd7a

https://www.reddit.com/r/ollama/comments/1kiw05t/built_a_simple_way_to_oneclick_install_and/

https://github.com/runebookai/tome


MCP Clients

https://github.com/jonigl/mcp-client-for-ollama

MCP Servers

https://github.com/rawveg/ollama-mcp



Anthropic MCP with Ollama, No Claude? Watch This!

    https://www.youtube.com/watch?v=9mciRwpcLNY&ab_channel=ChrisHay

    https://github.com/chrishayuk/mcp-cli

    uvx mcp-cli --help

    mcp-cli --server sqlite

    # Use other Ollama models
    mcp-cli --model llama3.3              # Latest Llama
    mcp-cli --model qwen2.5-coder         # Coding-focused
    mcp-cli --model deepseek-coder        # Another coding model
    mcp-cli --model granite3.3            # IBM Granite

MCP Complete Tutorial - Connect Local AI Agent (Ollama) to Tools with MCP Server and Client

    https://www.youtube.com/watch?v=aiH79Q-LGjY&ab_channel=VenelinValkov

Learn MCP Servers with Claude, Ollama, and OpenAI

    https://www.youtube.com/watch?v=StgbwIQH-C4&ab_channel=Farzad%28AIRoundTable%29

        https://github.com/Farzad-R/mcp-lab

Ollama MCP AI Agents: Build POWERFUL & FREE Local AI in Minutes

    https://www.youtube.com/watch?v=Uq5lgErh3oo&ab_channel=MervinPraison

    https://github.com/punkpeye/awesome-mcp-servers

    https://github.com/MervinPraison/PraisonAI/



ollama mcp


Only models that have tool support will work with MCP Servers.

    https://ollama.com/search?c=tools

Dolphin MCP

https://www.reddit.com/r/ollama/comments/1k1k1l3/using_ollama_and_mcp/

oterm

    https://github.com/ggozad/oterm?tab=readme-ov-file


https://github.com/OpenAgentPlatform/Dive

    desktop MCP hosting app

https://huggingface.co/learn/mcp-course/en/unit2/continue-client?local-models=ollama

https://lobehub.com/mcp/mudit7715-mcp

    https://github.com/Mudit7715/MCP


https://huggingface.co/blog/python-tiny-agents


