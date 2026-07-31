

https://github.com/ddalcu/mlx-serve


server

    ```shell    
    brew install mlx-serve
    ```

GUI 

    ```shell    
    brew install --cask mlx-core
    ```


```shell    
pip install huggingface-hub
huggingface-cli download \
    mlx-community/gemma-4-e4b-it-4bit \
    --local-dir ~/.mlx-serve/models/gemma-4-e4b-it-4bit
```


```shell    
mlx-serve \
    --model ~/models/Qwen3.5-4B-Q4_K_M.gguf \
    --serve 
    --port 11474
```

```shell    
mlx-serve \
    list \
        --model-dir $HOME/.lmstudio/models/
```


```shell    
mlx-serve \
    list \
        --model-dir $HOME/.lmstudio/models/mlx-community/
```


```shell    
mlx-serve \
    list \
        --model-dir $HOME/.lmstudio/models/lmstudio-community/
```


```shell    
export MODEL=Qwen3.6-27B-MLX-8bit
export MODEL=Qwen3-Coder-30B-A3B-Instruct-MLX-8bit
export MODEL=Qwen3.6-27B-MLX-8bit

mlx-serve \
    --serve \
        --model-dir $HOME/.lmstudio/models/lmstudio-community/ \
        --model qwen/qwen3.6-27b \
        --port 11474
```


