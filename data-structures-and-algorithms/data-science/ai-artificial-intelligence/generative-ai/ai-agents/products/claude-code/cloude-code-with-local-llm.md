# Claude Code with local LLM

cloude-code-with-local-llm.md

*   https://www.reddit.com/r/LocalLLaMA/comments/1qebqv7/local_coding_agents_vs_claude_code/

*   https://www.reddit.com/r/LocalLLaMA/comments/1oub8dt/anyone_been_using_local_llms_with_claude_code/

```
/opt/llama.cpp/bin/llama-server \
    --jinja \
    --no-mmap \
    --no-webui \
    --mlock \
    --nkvo \
    --flash-attn on \
    --n-gpu-layers -1 \
    --threads 12 \
    --threads-batch 24 \
    --batch-size 512 \
    --ubatch-size 2048 \
    --keep -1 \
    --ctx-size 524288 \
    --top-k 0 \
    --top-p 1.0 \
    --min-p 0.01 \
    --temp 1.0 \
    --n-cpu-moe 25 \
    --chat-template-kwargs '{"reasoning_effort": "high"}' \
    --parallel 4 \
    --model /ai_models/LLMs/unsloth/OpenAI/gpt-oss-120b-Q4_K_M-00001-of-00002.gguf \
    --port 8080 
    --host 0.0.0.0
```

```
export ANTHROPIC_BASE_URL="http://0.0.0.0:4000"
export ANTHROPIC_AUTH_TOKEN="SuperSecret"
export API_TIMEOUT_MS=6000000
export ANTHROPIC_MODEL=gpt-oss-120b
export ANTHROPIC_SMALL_FAST_MODEL=gpt-oss-20b
export CLAUDE_CODE_DISABLE_NONESSENTIAL_TRAFFIC=1
```


Running Claude Code with a local LLM involves configuring the CLI tool to use a local API endpoint (like Ollama or LM Studio) instead of Anthropic’s cloud API. By setting ANTHROPIC_BASE_URL to your local server (e.g., http://localhost:11434 for Ollama) and using a compatible model, you can achieve 100% private, free, and fast, uncensored code generation. 
Steps to Run Claude Code Locally:
Install & Setup Local LLM Server: Install Ollama or LM Studio. Download a capable code-generation model (e.g., Qwen2.5-Coder, Mistral, Llama 3).
Start Local API Server: Ensure the server is running. For Ollama, this is usually http://localhost:11434.
Configure Claude Code: Set environment variables in your terminal to redirect traffic:

```shell
export ANTHROPIC_BASE_URL=http://localhost:11434
# any dummy string
export ANTHROPIC_API_KEY=ollama 
export ANTHROPIC_BASE_URL_OLLAMA=http://localhost:11434
export ANTHROPIC_BASE_URL=$ANTHROPIC_BASE_URL_OLLAMA
export ANTHROPIC_BASE_URL_LMS_LM_STUDIO=http://localhost:11440
export ANTHROPIC_BASE_URL_MYSTY=http://localhost:11441
export ANTHROPIC_BASE_URL_JAN=http://localhost:11442

```

Run Claude Code: Execute the tool using the local model:

```shell
claude --model <your-local-model-name>. 
```

Benefits: Complete data privacy, no API costs, and low latency.
Requirements: A powerful local machine (ideally with high VRAM) to support the model's context window.
Best Models: Use models that support tool-calling and have large context windows, such as qwen2.5-coder or specialized glm-4 models.
Alternative: Use LiteLLM to act as a proxy between Claude Code and your local model for better compatibility. 



"$HOME$/Library/Application Support/Jan/data"