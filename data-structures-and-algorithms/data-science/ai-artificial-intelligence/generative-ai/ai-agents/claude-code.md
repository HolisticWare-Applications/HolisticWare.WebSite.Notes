# Claude Code

npm install -g @anthropic-ai/claude-code

  npm install -g @musistudio/claude-code-router

    https://github.com/search?q=CLAUDE.md&type=repositories

    https://github.com/lmontanares/claude-md-builder

    https://github.com/yegor256/prompt

    https://github.com/SabrinaRamonov/ai-coding-rules/blob/main/CLAUDE.md

    https://github.com/ArthurClune/claude-md-examples
    https://github.com/Tanq16/ai-context
    https://github.com/ithacaxyz/claude-md
    https://github.com/nwiizo/ccat/blob/main/CLAUDE.md

    https://github.com/hesreallyhim/awesome-claude-code
    https://github.com/langgptai/awesome-claude-prompts
    https://github.com/asgeirtj/system_prompts_leaks
    https://github.com/zebbern/claude-code-guide

    $HOME/.claude.json
claude-code.md



https://www.reddit.com/r/LocalLLaMA/comments/1pc4muy/comment/nrv8jzi/

```shell
# <--- start llama
llama-server \
    --model $HOME/.lmstudio/models/lmstudio-community/DeepSeek-R1-0528-Qwen3-8B-GGUF/DeepSeek-R1-0528-Qwen3-8B-Q8_0.gguf \
    --temp 0.6 \
    --top-k 20 \
    --ctx-size 75000 \
    --port 8080 \
    --metrics \
    --jinja \
    --min-p 0.00 \
    --top-p 0.95 \
    --n-gpu-layers 99 \
    --n-cpu-moe 99 \
    --host 127.0.0.1 \
    --presence-penalty 1.0 \
    --threads 16 \
    --no-mmap \
    --tensor-split 99,0 \
    -a claude-sonnet-4-5 \
    --api-key local-claude \
    &

export ANTHROPIC_BASE_URL=http://127.0.0.1:8080
export ANTHROPIC_AUTH_TOKEN=local-claude
claude
```

How to Run Local LLMs with Llama.cpp: Complete Guide

    https://www.youtube.com/watch?v=EPYsP-l6z2s

    
