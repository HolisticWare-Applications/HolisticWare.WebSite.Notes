# `llama.cpp`

https://blog.steelph0enix.dev/posts/llama-cpp-guide/

```shell
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


```shell
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

llama.cpp

Tutorial: Offline Agentic coding with llama-server

    https://github.com/ggml-org/llama.cpp/discussions/14758

https://huggingface.co/blog/ggml-org/model-management-in-llamacpp

This auto-discovers models from your llama.cpp cache (LLAMA_CACHE or ~/.cache/llama.cpp). If you've previously downloaded models via llama-server -hf user/model, they'll be available automatically.

You can also point to a local directory of GGUF files:

```shell
llama-server \
    --models-dir ./my-models
```

```shell
curl http://localhost:8080/v1/chat/completions \
  -H "Content-Type: application/json" \
  -d '{
    "model": "ggml-org/gemma-3-4b-it-GGUF:Q4_K_M",
    "messages": [{"role": "user", "content": "Hello!"}]
  }'
```
```shell
curl http://localhost:8080/models
```

https://github.com/ggml-org/llama.cpp/discussions/18685

```shell
llama-server -hf org/repo
llama-server -cl
```


https://www.datacamp.com/tutorial/llama-cpp-tutorial