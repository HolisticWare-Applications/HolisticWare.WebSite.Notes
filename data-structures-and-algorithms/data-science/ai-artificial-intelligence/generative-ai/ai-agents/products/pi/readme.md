# Pi Coding agent

readme.md

*   https://pi.dev/docs/latest

*   global

    ```
    $HOME/.pi/agent/
    ```

    ```
    $HOME/.agents/
    ```

*   project

    ```
    .pi/
    ```

    ```
    .agents/
    ```

*   https://github.com/badlogic/pi-mono/tree/main/packages/coding-agent

*   https://pi.dev/

```shell
npm install -g @mariozechner/pi-coding-agent
# Adding MCP support to Pi
# Pi intentionally doesn't ship with MCP support. To use MCP, install the following:
## Install the Pi MCP adapter

pi install npm:pi-mcp-adapter
```

*   https://dev.to/theoklitosbam7/pi-coding-agent-a-self-documenting-extensible-ai-partner-dn

*   https://www.youtube.com/watch?v=OMFIPv8a4qA

*   https://github.com/badlogic/pi-mono/blob/main/packages/coding-agent/docs/models.md

*   https://parallel.ai/blog/free-CLI-agent


*   Pointing Pi at Ollama

    *   Pi resolves providers globally, so the Ollama definition goes in 

        ```
        ~/.pi/agent/models.json
        ```

        ```json
        // Point Pi at Ollama
        {
        "providers": 
        {
            "ollama": 
            {
            "baseUrl": "http://localhost:11434/v1",
            "api": "openai-completions",
            "apiKey": "ollama",
            "models": 
            [
                { 
                    "id": "gemma4:26b" 
                }
            ]
            }
        }
        }
        ```

*   https://www.reddit.com/r/LocalLLaMA/comments/1stjwg5/been_using_pi_coding_agent_with_local_qwen36_35b/

