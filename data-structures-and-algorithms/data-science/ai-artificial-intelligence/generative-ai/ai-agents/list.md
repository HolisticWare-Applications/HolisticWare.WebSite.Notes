# AI Agents

list.md


AI Agents are basically LLMs that do something instead of just replying. We support both tool-call-enabled models 
like OpenAI but have even now have a no-code way to bring AI agents to every open-source LLMs like with 

Ollama 
LMStudio.


Now, with no code required, you can take any LLM and get automatic web scraping, web-browsing, chart generation, RAG memory, and summarization all autonomously and running locally.


https://github.com/Mintplex-Labs/anything-llm

LM Studio - https://lmstudio.ai/
Ollama - https://ollama.com/

How to Run LLM Locally on Your Mac
https://www.youtube.com/watch?v=e5iaYkSNrhY


llm

    https://llm.datasette.io/en/stable/

    brew install llm

vLLM

    https://github.com/vllm-project/vllm

    https://docs.vllm.ai/en/latest/getting_started/installation/gpu.html#install-specific-revisions-using-pip

    https://medium.com/@rohitkhatana/installing-vllm-on-macos-a-step-by-step-guide-bbbf673461af


aprhodite


TGI 

are better alternatives IMO. You get in-flight batching, batched inference, and so on. You can really use the hardware to the max with those two. A bit harder to setup (conda & terminal skills should help) but once you have them going it's just like hitting an oAI endpoint, but locally.

llama.cpp

    brew install llama.cpp

    llama --hf-repo ggml-org/tiny-llamas -m stories15M-q4_0.gguf -n 400 -p I

    llama-server --hf-repo ggml-org/tiny-llamas -m stories15M-q4_0.gguf -n 400 -p I



Koboldcpp 

    https://github.com/LostRuins/koboldcpp

    has an openAI style API as well as a custom one with some niceties

TabbyAPI 

    https://github.com/theroyallab/tabbyAPI

    exllama 2

LocalAI

    https://localai.io/

    https://github.com/mudler/LocalAI

ramalama 

    GitHub.com/containers/ramalama

Dive AI Agent
    
    https://github.com/OpenAgentPlatform/Dive