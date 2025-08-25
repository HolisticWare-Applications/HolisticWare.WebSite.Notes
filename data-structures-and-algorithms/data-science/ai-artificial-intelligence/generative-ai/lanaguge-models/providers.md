# Providers

providers.md

*   local

    *   Ollama

    *   LM Studio

    *   Llama.cpp

        Configure Llama.cpp with Continue to run local language models using high-performance C++ inference,
        including setup instructions for the server and client configuration

    *   LiteLLM

        pip install litellm

        from litellm import completion

        response = completion(
                    model="ollama/llama2",
                    messages = [{ "content": "Hello, how are you?","role": "user"}],
                    api_base="http://localhost:11434"
        )

    *   llamafile

        import litellm 

        response = litellm.completion(
                    # pass the llamafile model name for completeness
                    model="llamafile/mistralai/mistral-7b-instruct-v0.2", 
                    messages=messages,
                    api_base="http://localhost:8080/v1",
                    temperature=0.2,
                    max_tokens=80)

        print(response)    


Llama3.1 for chat
Qwen2.5-Coder for autocomplete
Nomic Embed Text for embeddings