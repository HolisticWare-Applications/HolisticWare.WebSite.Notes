# Shimmy

*   https://github.com/Michael-A-Kuykendall/shimmy

```shell
# macOS ARM64 example
curl \
    -L https://github.com/Michael-A-Kuykendall/shimmy/releases/latest/download/shimmy-macos-arm64 \
    -o shimmy
chmod +x shimmy  
./shimmy serve  # Auto-detects MLX on Apple Silicon
```


```shell
```

VS Code:

```json
{
  "github.copilot.advanced": 
  {
    "serverUrl": "http://localhost:11435"
  }
}
```


Discovery

*   model auto-discovery:

    *   Hugging Face cache
    
        ```
        ~/.cache/huggingface/hub/
        ```

    *   Ollama models
    
        ```
        ~/.ollama/models/
        ```

    *   Local directory
    
        ```
        ./models/
        ````

    *   Environment
    
        ```
        SHIMMY_BASE_GGUF=path/to/model.gguf
        ```