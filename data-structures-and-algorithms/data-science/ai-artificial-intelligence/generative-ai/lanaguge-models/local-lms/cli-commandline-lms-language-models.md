# CLI CommandLine LMs Language Models

cli-commandline-lms-language-models.md

Local LMs from Command Line


*   https://news.ycombinator.com/item?id=40782755

    *   https://simonwillison.net/2024/Jun/17/cli-language-models/

        *   Language models on the command-line w/ Simon Willison

            *   https://www.youtube.com/watch?v=QUXQNi6jQ30

*   https://www.reddit.com/r/LocalLLaMA/comments/1d2pz70/a_local_llm_that_summarizes_from_a_command_line/

## Tools

*   Aider-AI/aider

    *   https://github.com/Aider-AI/aider

    *   LM Studio integration
    
        *   https://aider.chat/docs/llms/lm-studio.html


        Best models
        Aider works best with these models, which are skilled at editing code:

            Gemini 2.5 Pro
            DeepSeek R1 and V3
            Claude 3.7 Sonnet
            OpenAI o3, o4-mini and GPT-4.1

        free models
            Aider works with a number of free API providers:

            OpenRouter offers free access to many models, with limitations on daily usage.

            https://openrouter.ai/models/?q=free
    
            Google’s Gemini 2.5 Pro Exp works very well with aider.

    *   https://aider.chat/docs/leaderboards/

    *   https://formulae.brew.sh/formula/aider

        brew install aider

    *   features

        Most of the cli tools just wrap an LLM, but don't give it access to the data it needs to be useful. Aider is an exception of course - it gives great results because it feeds the LLM your source files.


*   Ollama

    brew install ollama

    brew install --cask ollama

    https://formulae.brew.sh/formula/ollama

    https://www.reddit.com/r/ollama/comments/1i8pjrm/ollama_on_mac_via_dmg_install_or_brew_install/

    With brew, it's easier to update. To have it serve in the background:

    brew services start ollama

    After updating through brew update:

    brew services restart ollama

    https://blog.stackademic.com/installing-and-using-ollama-on-macos-acabe185fa3a

    https://gptforwork.com/help/ai-models/local-servers/set-up-ollama-on-macos

    *   brew install --cask ollamac

        *   https://github.com/kevinhermawan/Ollamac

        *   mac app idea for MAUI

*   AIChat: All-in-one LLM CLI Tool

    https://github.com/sigoden/aichat

    brew install aichat

*   ShellOracle

    https://github.com/djcopley/ShellOracle