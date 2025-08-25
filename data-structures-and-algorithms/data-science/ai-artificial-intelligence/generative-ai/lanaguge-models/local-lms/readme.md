# Local Models

*   https://www.datacamp.com/tutorial/run-llms-locally-tutorial

*   https://medium.com/@cactusmccoy/run-a-llm-locally-from-cli-gui-or-web-app-48224ebcd511

*   tools

    *   Ollama

    *   openwebui

        *   https://github.com/open-webui/open-webui

            brew install uv

            https://www.jjude.com/tech-notes/run-owui-on-mac/

            

    *   Msty

    *   LM Studio

    *   Jan

## For Coding

*   This IS the best Local LLM for Coding Right Now | GLM-4-32B

    *   https://www.youtube.com/watch?v=YG6s4t9vaiw

    *   https://docs.google.com/document/d/1ZzFZn4fQERvqFW4xpHmfZcXu7KT7NiKE4XnDfS8scrQ/edit?tab=t.psdmn0v1tgf3

*   https://huggingface.co/THUDM/GLM-4-32B-0414

*   Which Coding LLM is Best? Local AI Code Model Comparison (2025)

    *   https://www.youtube.com/watch?v=Tgf1jMX9Ys4

*   Which Local Coding LLM is Best?

    *   https://www.youtube.com/shorts/35MKI2n3hXE

    *   DeepSeek Coder

    *   YI Coder

    *   QWEN Coder


There are many ways to run local models that are compatible with Continue. Three popular options are Ollama, Llama.cpp, and LM Studio. Ollama is an open-source tool that allows users to easily run large language models (LLMs) locally. Llama.cpp is a high-performance C++ library for running LLMs that also includes an OpenAI-compatible server. LM Studio provides a graphical interface for running local models.

Llama.cpp provides llama-server, a lightweight, OpenAI API compatible, HTTP server for serving LLMs. You can either build it from source by following the instructions in the Llama.cpp repository, or use a pre-built binary if available for your system. Check out the Llama.cpp documentation for more information.

Once you have llama-server, you can run a model from Hugging Face with a command like this:

llama-server -hf unsloth/Devstral-Small-2505-GGUF:Q4_K_M


To use Ollama, you can install it and download the model you want to run with the ollama run command.

For example, you can download and run the Devstral-Small model with:

ollama run unsloth/devstral-small-2505-gguf:Q4_K_M