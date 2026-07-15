

*   https://omlx.ai/

*   https://github.com/jundot/omlx

```shell
export OPENAI_PORT=11464

omlx serve \
    --model-dir $HOME/.lmstudio/models/ \
    --port $OPENAI_PORT \
```

OpenAI-compatible client can connect to 

    export OPENAI_PORT=11464
    open http://localhost:$OPENAI_PORT/v1

A built-in chat UI is also available at 

    export OPENAI_PORT=11464
    open http://localhost:$OPENAI_PORT/admin/chat


```shell
brew tap jundot/omlx https://github.com/jundot/omlx
brew install omlx
```

```shell
# Upgrade to the latest version
brew update && brew upgrade omlx
```


Features
Inference

Continuous batching via mlx-lm - handles multiple concurrent requests

Multi-model serving - load LLM + Embedding + Reranker simultaneously, with LRU eviction

Reasoning model support - automatic <think> tag handling (DeepSeek, MiniMax, etc.)

Harmony protocol - native support for gpt-oss models

Caching

Paged KV Cache - block-based with prefix sharing and copy-on-write (vLLM&vllm-mlx project inspired)

SSD tiered caching - automatic GPU-to-SSD offloading for virtually unlimited context caching

Hybrid cache - mixed KVCache + RotatingKVCache for complex architectures (Gemma3, etc.)

Persistent cache - KV cache blocks survive server restarts

API

OpenAI compatible - /v1/chat/completions, /v1/completions, /v1/models, /v1/embeddings

Anthropic compatible - /v1/messages

Tool calling

    JSON, 
    
    Qwen, 
    
    Gemma, 
    
    MiniMax, 
    
    GLM formats + MCP

Structured output - JSON mode and JSON Schema

macOS App

Native menubar app (PyObjC, not Electron)

Admin dashboard with built-in chat and real-time monitoring

HuggingFace model downloader built into the dashboard

Signed & notarized DMG

https://medium.com/macoclock/mlx-lm-vs-omlx-i-was-wrong-about-the-winner-8f36be328069

