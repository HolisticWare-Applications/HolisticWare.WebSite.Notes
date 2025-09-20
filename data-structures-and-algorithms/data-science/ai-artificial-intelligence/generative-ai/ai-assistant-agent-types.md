# AI Agent/Assistant Types

*   Commandline CLI

    *   gemini CLI

        *   Google

    *   claude code

        *   

    *   codex

        *   OpenAI

        *   https://developers.openai.com/codex/cli/

        *   https://github.com/openai/codex

    *   goose

        https://block.github.io/goose/docs/getting-started/installation/

    *   warp

        *   https://www.warp.dev/

    *   qwen code AKA qwen CLI

        *   https://github.com/QwenLM/qwen-code

        *   https://github.com/QwenLM/qwen-code

    *   grok CLI

        *   https://grokcli.io/

    *   crush AKA opencode CLI

        *   https://github.com/charmbracelet/crush

        *   https://github.com/opencode-ai/opencod
        
    *   Serena

        *   https://github.com/oraios/serena

        *   coding agent toolkit 
        
        *   capable of turning an LLM into a fully-featured agent that works directly on your codebase.

    *   llxpert

        *   https://github.com/acoliver/llxprt-code

        *   ork of Google's Gemini CLI
        
        *   enhanced with multi-provider support

*   https://dev.to/therealmrmumba/10-claude-code-alternatives-that-every-developer-must-use-4ffd    


https://github.com/QwenLM/Qwen3-Coder

https://qwen.readthedocs.io/en/latest/

https://github.com/anthropics/claude-code

https://github.com/google-gemini/gemini-cli

AI CLI

claude
gemini
qwen

## Gemini

.github/workflows/gemini.yml

    https://github.com/google-gemini/gemini-cli-action


    ```bash
    curl "https://generativelanguage.googleapis.com/v1beta/models/gemini-2.0-flash:generateContent" \
    -H 'Content-Type: application/json' \
    -H 'X-goog-api-key: APIKEY' \
    -X POST \
    -d \
        '{
            "contents": 
            [
            {
                "parts": 
                [
                {
                    "text": "Explain how AI works in a few words"
                }
                ]
            }
            ]
        }'
    ```

