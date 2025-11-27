OpenAI Codex

*   IDE extension

*   CLI

*   cloud

https://www.reddit.com/r/ollama/comments/1lucq0b/codexollama_airgapped/

```
export CODEX_OSS_BASE_URL=http://localhost:11434/v1
export OLLAMA_MODEL=gpt-oss:120b
export OLLAMA_MODEL=deepseek-coder-v2:236b
export OLLAMA_MODEL=codegemma:7b
codex \
    --oss \
        -m "$OLLAMA_MODEL" \
        "summarize this repo"
```

you can set the ollama address with a cli option or the 

$HOME/.codex/config.toml 

https://github.com/openai/codex/blob/main/codex-rs/config.md

```
[model_providers.ollama]

name = "Ollama"

base_url = "http://localhost:11434/v1"
```


thinking/reasoning+

    gpt-oss:120b
    mistral-large:123b
    llama3.3:latest

coding with tools

    devstral
    mistral-large:123b
    cogito:70b
    qwen2.5-coder:32b
    bjoernb/qwen3-coder-30b-1m
    ALIENTELLIGENCE/pythoncoderv2


ollama pull \
    devstral
    bjoernb/qwen3-coder-30b-1m
    ALIENTELLIGENCE/pythoncoderv2

coding without tools
    deepseek-coder-v2:236b
    deepseek-coder:33b
    phind-codellama:34b
    codellama:70b
    codegemma:7b

summarize this repo

• Explored
  └ List ls -R
    Read README.md

> HolisticWare.Core.Math.Discrete.GraphTheory – a .NET library that provides core graph‑theory building blocks and algorithms.

  - Purpose – Supplies reusable data structures (Graph, Node/Vertex, Edge/Arc, Walk, Path, Cycle, Component) and common graph algorithms for .NET projects.
  - Key Algorithms – Breadth‑First Search, Depth‑First Search, Dijkstra’s shortest‑path (with a .NET PriorityQueue example).
  - Design – Implements containers for nodes and edges, enabling traversal, path‑finding, and component analysis. Intended for consumption as a library or NuGet package (net6.0+.
  - References – Links to .NET generic math docs, tutorials on graph representations, and numerous academic/online resources for deeper study.

  The repository therefore serves as a foundation for any C# application that needs robust, generic graph handling without reinventing the underlying structures or search routines.


For projects and classes in 
    source/HolisticWare.Core.Math.Discrete.GraphTheory/
create NUnit unit tests in
    tests/unit-tests/new


doesn't want to fiddle with config files i made a tool to help linking models to codex cli :)

https://github.com/supermarsx/codex-cli-linker


```
codex exec --config
```