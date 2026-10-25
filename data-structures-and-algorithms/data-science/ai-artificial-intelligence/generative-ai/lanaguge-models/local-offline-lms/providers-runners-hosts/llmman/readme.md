# llmman

readme.md

* https://github.com/llmmanorg/llmman

```shell
brew install llmmanorg/tap/llmman
```

==> llmman
To start llmmanorg/tap/llmman now and restart at login:
  brew services start llmmanorg/tap/llmman
Or, if you don't want/need a background service you can just run:
  /opt/homebrew/opt/llmman/bin/llmman serve


llmman serve
One endpoint on 127.0.0.1:17434 that speaks Ollama, OpenAI and Anthropic:

API	Endpoints

OpenAI	

  /v1/chat/completions
  /v1/completions
  /v1/embeddings
  /v1/models
  /v1/responses
  /v1/audio/transcriptions

Anthropic

  /v1/messages

Ollama

  /api/chat
  /api/generate
  /api/embed
  /api/tags
  /api/ps
  /api/pull
  /api/push
  /api/create
  .

llmman launch claude --model qwen3.8  # an agent on a local model
llmman run qwen3.8                    # just chat with a model
llmman serve                          # an Ollama/OpenAI/Anthropic-compatible endpoint

 llmman
Run any agent on any model, models stored as OCI images

Usage: llmman [COMMAND]

Commands:
  launch     Launch an integration
  run        Run a model interactively or with a one-shot prompt
  build      Package model files into a local OCI image
  login      Log in to a container registry or HuggingFace
  logout     Log out from a container registry or HuggingFace
  push       Push a local image to a registry
  pull       Pull an image from a registry to the local store
  search     Search for models on Docker Hub and Hugging Face
  transfer   Transfer an image directly from one location to another (e.g. HuggingFace to an OCI registry)
  verify     Check a registry model's signatures against trusted public keys
  list       List locally stored images
  ps         List models currently loaded by a running `llmman serve`
  log        Show the prompts `llmman serve` has seen, newest first (like `git log`)
  usage      Show the tokens and cost of what `llmman serve` has served, per model
  providers  List the hosted providers `--provider` can route to
  config     Read and write llmman.conf settings
  cp         Copy a local image to a new reference
  rm         Remove a local image, freeing its blobs and extracted cache no longer referenced by any other model (set LLMMAN_NOPRUNE to skip)
  stop       Stop (unload) a running model
  show       Show a local model's architecture, parameters, license, and template
  serve      Start an inference server (Ollama, OpenAI, Anthropic compatible APIs)
  help       Print this message or the help of the given subcommand(s)

Options:
  -h, --help     Print help
  -V, --version  Print version



multimodal decision classifier 

  https://huggingface.co/ngquocvinh/Jev-Omni-GGUF/tree/main
