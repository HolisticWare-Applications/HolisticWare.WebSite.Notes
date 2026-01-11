# `llama.cpp`

https://blog.steelph0enix.dev/posts/llama-cpp-guide/

```bash
find ~ -iname "*.gguf"
find ~ -type f -iname "*.gguf"
```

Result:

```
$HOME/Downloads/phi-2.Q5_K_S.gguf
$HOME/Downloads/mixtral-8x7b-instruct-v0.1.Q8_0.gguf
$HOME/Library/Caches/llama.cpp/ggml-org_gpt-oss-120b-GGUF_gpt-oss-120b-mxfp4-00001-of-00003.gguf
$HOME/Library/Caches/llama.cpp/ggml-org_gpt-oss-120b-GGUF_gpt-oss-120b-mxfp4-00002-of-00003.gguf
$HOME/Library/Caches/llama.cpp/ggml-org_gemma-3-1b-it-GGUF_gemma-3-1b-it-Q4_K_M.gguf
$HOME/Library/Caches/llama.cpp/ggml-org_gpt-oss-120b-GGUF_gpt-oss-120b-mxfp4-00003-of-00003.gguf
$HOME/.lmstudio/models/lmstudio-community/Phi-4-reasoning-plus-GGUF/Phi-4-reasoning-plus-Q8_0.gguf
$HOME/.lmstudio/models/lmstudio-community/DeepSeek-R1-0528-Qwen3-8B-GGUF/DeepSeek-R1-0528-Qwen3-8B-Q8_0.gguf
```


```bash
llama-run \
    $HOME/Library/Caches/llama.cpp/ggml-org_gpt-oss-120b-GGUF_gpt-oss-120b-mxfp4-00001-of-00003.gguf

llama-server \
    --port 55100 \
    --ctx-size \
        128000 \
    --model \
        $HOME/Library/Caches/llama.cpp/ggml-org_gpt-oss-120b-GGUF_gpt-oss-120b-mxfp4-00001-of-00003.gguf \
    --temp 0.2


```

Statistics:
75.04 tokens/s
3529 tokens
47.03s


```
llama.cpp
http://127.0.0.1:8080/#/chat/4ff4f25d-99f6-42b0-9752-efa858167e35
model:          ggml-org_gpt-oss-120b-GGUF_gpt-oss-120b-mxfp4-00001-of-00003.gguf
ctx:            4,096

Statistics:
                75.04 tokens/s
                3529 tokens
                47.03s
```

