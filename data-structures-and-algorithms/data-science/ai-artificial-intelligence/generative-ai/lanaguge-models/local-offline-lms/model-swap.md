# Model swap

model-swap.md

*   llama-swap

    *   https://github.com/mostlygeek/llama-swap

*   llama.cpp

    *   https://github.com/abetlen/llama-cpp-python/pull/931#issuecomment-1867529039

```shell
find \
    ~/.lmstudio/models/ \
    -iname "*.gguf" \
    -size +1k \
    | \
jq -R -s -c '{"models": [split("\n")[:-1][] | {"model": .}]}'
```


```json
{
  "models": 
  [
    {
      "model": "~/.lmstudio/models/unsloth/Qwen3.5-35B-A3B-Experiments-GGUF/Qwen3.5-35B-A3B_tok-16_out-16_exp-16-16-16_shr-16-16-16_ssm-16-16-16-32_atn-16-16-16-16-16-16.gguf"
    },
    {
      "model": "~/.lmstudio/models/unsloth/Qwen3-Coder-30B-A3B-Instruct-GGUF/Qwen3-Coder-30B-A3B-Instruct-BF16-00002-of-00002.gguf"
    },
    {
      "model": "~/.lmstudio/models/unsloth/Qwen3-Coder-30B-A3B-Instruct-GGUF/Qwen3-Coder-30B-A3B-Instruct-BF16-00001-of-00002.gguf"
    },
    {
      "model": "~/.lmstudio/models/unsloth/Qwen3-Coder-Next-GGUF/Qwen3-Coder-Next-UD-Q8_K_XL-00002-of-00003.gguf"
    },
    {
      "model": "~/.lmstudio/models/unsloth/Qwen3-Coder-Next-GGUF/Qwen3-Coder-Next-UD-Q8_K_XL-00001-of-00003.gguf"
    },
    {
      "model": "~/.lmstudio/models/unsloth/Qwen3-Coder-Next-GGUF/Qwen3-Coder-Next-UD-Q8_K_XL-00003-of-00003.gguf"
    },
    {
      "model": "~/.lmstudio/models/unsloth/Qwen3.5-122B-A10B-GGUF/Qwen3.5-122B-A10B-Q5_K_M-00001-of-00003.gguf"
    },
    {
      "model": "~/.lmstudio/models/unsloth/Qwen3.5-122B-A10B-GGUF/Qwen3.5-122B-A10B-Q5_K_M-00002-of-00003.gguf"
    },
    {
      "model": "~/.lmstudio/models/unsloth/Qwen3.5-122B-A10B-GGUF/Qwen3.5-122B-A10B-Q5_K_M-00003-of-00003.gguf"
    },
    {
      "model": "~/.lmstudio/models/unsloth/Qwen3.5-122B-A10B-GGUF/mmproj-F32.gguf"
    },
    {
      "model": "~/.lmstudio/models/unsloth/Qwen3.5-35B-A3B-GGUF/Qwen3.5-35B-A3B-UD-Q8_K_XL.gguf"
    },
    {
      "model": "~/.lmstudio/models/unsloth/Qwen3.5-35B-A3B-GGUF/mmproj-F32.gguf"
    }
  ]
}
```