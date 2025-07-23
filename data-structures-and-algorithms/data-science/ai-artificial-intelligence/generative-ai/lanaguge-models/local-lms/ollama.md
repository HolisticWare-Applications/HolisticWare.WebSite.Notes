#

* https://github.com/ollama/ollama

ollama.md

```
ollama
Usage:
  ollama [flags]
  ollama [command]

Available Commands:
  serve       Start ollama
  create      Create a model from a Modelfile
  show        Show information for a model
  run         Run a model
  stop        Stop a running model
  pull        Pull a model from a registry
  push        Push a model to a registry
  list        List models
  ps          List running models
  cp          Copy a model
  rm          Remove a model
  help        Help about any command

Flags:
  -h, --help      help for ollama
  -v, --version   Show version information
```

## Multiple Serves

* https://www.reddit.com/r/LocalLLaMA/comments/1go86pm/does_ollama_work_as_a_server_to_server_multiple/


```shell
docker run -d --gpus=all -v ollama:/root/.ollama -p 11434:11434 --name ollama-13gb ollama/ollama

docker run -d --gpus=all -v ollama:/root/.ollama -p 11435:11434 --name ollama-5gb ollama/ollama
```

OLLAMA_NUM_PARALLEL: Maximum number of parallel requests

OLLAMA_MAX_QUEUE: The queue length, defines number of requests that might be sitting there and waiting for being picked up

OLLAMA_MAX_LOADED_MODELS: Maximum number of loaded models

OLLAMA_KEEP_ALIVE: The duration that models stay loaded in memory (-1 is forever)


```shell
export OLLAMA_HOST=127.0.0.1:55501 ; launchctl setenv OLLAMA_HOST "0.0.0.0:55501" ; ollama serve & 
export OLLAMA_HOST=127.0.0.1:55502 ; launchctl setenv OLLAMA_HOST "0.0.0.0:55502" ; ollama serve & 
export OLLAMA_HOST=127.0.0.1:55503 ; launchctl setenv OLLAMA_HOST "0.0.0.0:55503" ; ollama serve &
```


*   https://www.reddit.com/r/LocalLLaMA/comments/1go86pm/does_ollama_work_as_a_server_to_server_multiple/

OLLAMA_NUM_PARALLEL: Maximum number of parallel requests

OLLAMA_MAX_QUEUE: The queue length, defines number of requests that might be sitting there and waiting for being picked up

OLLAMA_MAX_LOADED_MODELS: Maximum number of loaded models

OLLAMA_KEEP_ALIVE: The duration that models stay loaded in memory (-1 is forever)

https://github.com/ollama/ollama/issues/2109




```
phi3.5:latest
phi:latest
deepseek-r1:latest
nomic-embed-text:latest
phi4:latest
marco-o1:latest
qwq:latest
all-minilm:latest
llama3.3:latest
llama3.2-vision:latest
```
