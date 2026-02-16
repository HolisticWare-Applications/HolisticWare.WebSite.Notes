# Claude Code with llama.cpp

cloude-code-with-lamma-cpp.md

*   https://www.reddit.com/r/LocalLLaMA/comments/1qebqv7/local_coding_agents_vs_claude_code/

*   https://www.reddit.com/r/LocalLLaMA/comments/1oub8dt/anyone_been_using_local_llms_with_claude_code/

Running Claude Code with a local LLM involves configuring the CLI tool to use a local API endpoint (like Ollama or LM Studio) instead of Anthropic’s cloud API. By setting ANTHROPIC_BASE_URL to your local server (e.g., http://localhost:11434 for Ollama) and using a compatible model, you can achieve 100% private, free, and fast, uncensored code generation. 
Steps to Run Claude Code Locally:
Install & Setup Local LLM Server: Install Ollama or LM Studio. Download a capable code-generation model (e.g., Qwen2.5-Coder, Mistral, Llama 3).
Start Local API Server: Ensure the server is running. For Ollama, this is usually http://localhost:11434.
Configure Claude Code: Set environment variables in your terminal to redirect traffic:

```shell
export ANTHROPIC_BASE_URL=http://localhost:11434
# any dummy string
export ANTHROPIC_API_KEY=ollama 
```

Run Claude Code: Execute the tool using the local model:

```shell
claude --model <your-local-model-name>. 
```

Benefits: Complete data privacy, no API costs, and low latency.
Requirements: A powerful local machine (ideally with high VRAM) to support the model's context window.
Best Models: Use models that support tool-calling and have large context windows, such as qwen2.5-coder or specialized glm-4 models.
Alternative: Use LiteLLM to act as a proxy between Claude Code and your local model for better compatibility. 