# SmallCode

readme.md

*   https://github.com/Doorman11991/smallcode

```shell
# Install globally via npm
npm install -g smallcode
```

```shell
# Or run directly with npx
npx smallcode
```

```shell
# Start in your project directory
cd my-project
smallcode
```

*   https://github.com/Doorman11991/smallcode/blob/master/.env.example

```.env
# SmallCode Configuration
# Copy to .env in your project root

# ─── Model (required) ────────────────────────────────────────────────────────
SMALLCODE_MODEL=your-model-name
SMALLCODE_BASE_URL=http://localhost:1234/v1
SMALLCODE_PROVIDER=openai

# ─── Context ─────────────────────────────────────────────────────────────────
SMALLCODE_CONTEXT_BUDGET=70

# Context window size (auto-detected from model endpoint if not set)
# Set this if auto-detection doesn't work for your setup
# SMALLCODE_CONTEXT_WINDOW=32768

# ─── Bash Timeout ────────────────────────────────────────────────────────────
SMALLCODE_BASH_TIMEOUT=30

# ─── Model Timeout ───────────────────────────────────────────────────────────
# How long to wait for the model to respond (seconds). Default: 300 (5 minutes).
# Increase this if you're running on slow hardware (RK3588, CPU inference, etc.)
# and getting "model timed out" errors.
# SMALLCODE_MODEL_TIMEOUT=300
# SMALLCODE_MODEL_TIMEOUT=600   # 10 min for very slow hardware

# ─── TUI ─────────────────────────────────────────────────────────────────────
SMALLCODE_THEME=dark
SMALLCODE_AUTO_APPROVE=false
SMALLCODE_CLASSIC_TUI=false

# ─── API Keys ────────────────────────────────────────────────────────────────
# Required when using a cloud provider (OpenAI, OpenRouter, DeepSeek, Anthropic)
# Also enables auto-escalation on hard fail when using a local model
# OPENAI_API_KEY=sk-...
# ANTHROPIC_API_KEY=sk-ant-...
# DEEPSEEK_API_KEY=sk-...
#
# Override default escalation model:
# SMALLCODE_ESCALATION_MODEL=claude-sonnet-4-5

# ─── OpenRouter Example ──────────────────────────────────────────────────────
# SMALLCODE_BASE_URL=https://openrouter.ai/api/v1
# SMALLCODE_MODEL=openai/gpt-4o-mini
# OPENAI_API_KEY=sk-or-v1-...

# ─── Multi-Model Routing (optional) ──────────────────────────────────────────
# Auto-pick model based on task complexity
# SMALLCODE_MODEL_FAST=gemma-4-e4b
# SMALLCODE_MODEL_DEFAULT=qwen3-8b
# SMALLCODE_MODEL_STRONG=qwen3-14b

# ─── RTK (Rust Token Killer) ─────────────────────────────────────────────────
# RTK auto-rewrites bash commands (git, tests, ls, etc.) for 60-90% token savings.
# Install: https://github.com/rtk-ai/rtk
# SmallCode auto-detects rtk on PATH — no config needed.
# To disable: SMALLCODE_RTK=false
# SMALLCODE_RTK=false
SMALLCODE_AUTO_COMMIT=false

# ─── Web Browsing (disabled by default) ──────────────────────────────────────
# Enable browser-powered web search and page fetching
# Recommended for medium/large models (20B+) that can use web context effectively
# Uses Playwright with stealth mode for undetected browsing
# SMALLCODE_WEB_BROWSE=true

# ─── Escalation Limits ───────────────────────────────────────────────────────
SMALLCODE_ESCALATION_MAX=5
SMALLCODE_ESCALATION_CONFIRM=true
```
