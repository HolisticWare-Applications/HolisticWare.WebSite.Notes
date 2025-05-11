# Embeddings ONNX

embeddings-onnx.md

*   https://www.reddit.com/r/dotnet/comments/1kgb25u/i_finally_got_embedding_models_running_natively/

*   ONNX Runtime

    *   https://github.com/microsoft/onnxruntime

    *   https://onnxruntime.ai/

        ```
        pip install onnxruntime
        ```

        ```
        pip install onnxruntime-genai
        ```

        *   https://onnxruntime.ai/docs/get-started/with-csharp

        *   ML.net

            *   https://github.com/dotnet/machinelearning

    *   ONNX Runtime Extensions

        *   https://github.com/microsoft/onnxruntime-extensions

            ```
            pip install onnxruntime-extensions
            ```

            *   https://github.com/yuniko-software/tokenizer-to-onnx-model

*   local Embeddings

    *   https://github.com/dotnet/smartcomponents/blob/main/docs/local-embeddings.md

    *   Semantic Search Demo
    
        *   https://github.com/Giorgi/Semantic-Search-Demo

*   Model

    https://huggingface.co/BAAI/bge-m3

*   LLamaSharp

    *   https://github.com/SciSharp/LLamaSharp

    *   https://www.nuget.org/packages/LLamaSharp/

        It allows you to run GGUF models without Python or external services, directly in your project.

         LLamaSharp is not the same as Ollama. It’s a .NET wrapper around llama.cpp,

         https://github.com/ggml-org/llama.cpp

         and it runs models directly in your app without any external services.
The BGE-M3 model is actually available in GGUF format here:
https://huggingface.co/bbvch-ai/bge-m3-GGUF
Since it works with llama.cpp, it should also work with LLamaSharp.

*   Convert your PyTorch training model to ONNX

    *   https://learn.microsoft.com/en-us/windows/ai/windows-ml/tutorials/pytorch-convert-model

*   https://github.com/Const-me/Cgml/tree/master/CGML


 haven't worked with more complex models, but as a little exercise, I was able to run GPT2 in a .NET MAUI app using ML.NET and the ONNX version of the model. I used the TiktokenTokenizer like this:

_tokenizer = TiktokenTokenizer.CreateForModel("gpt2");



