# Runtimes LLMs

*   optimized for small resources

    *   llama.cpp

        *   https://github.com/ggml-org/llama.cpp

    *   Ollama

        *   https://ollama.com/

    *   MLC LLM

        *   https://github.com/mlc-ai/mlc-llm

    *   LlamaEdge

        *   https://github.com/LlamaEdge/LlamaEdge

        *   https://llamaedge.com/

*   optimized

    *   vLLM
    
        *   https://github.com/vllm-project/vllm

        *   https://github.com/vllm-project/vllm-metal

    *   SGL SGLang

        *   https://github.com/sgl-project/sglang

    *   Max 

        *   https://github.com/modular/modular

    *   LMDeploy

        *   https://github.com/InternLM/lmdeploy

    *   TensorRT-LLM

        *   https://github.com/NVIDIA/TensorRT-LLM

    *   Huggingface TGI Text Generation Inference

        *   https://github.com/huggingface/text-generation-inference

*   Apple Silicon MLX

    *   https://github.com/madroidmaq/mlx-omni-server

    *   https://github.com/arcee-ai/fastmlx

    *   https://github.com/Trans-N-ai/swama

*   https://github.com/RamboRogers/mlx-gui

*   On Device Runtimes/Providers/Engines

    *   on device

    *   edge

    *   LiteRT 

        *   formerly TensorFlow Lite
        
        *   Google

        *   for on-device machine learning

        *   https://developers.google.com/edge/litert

        *   https://github.com/google-ai-edge/litert-samples/tree/main/compiled_model_api

        *   https://github.com/google-ai-edge/LiteRT-LM

        *   https://github.com/ayutaz/uLiteRT
    
    *   ONNX Runtime 

        *   for cross-platform model consistency, 

        *   cross-platform flexibility
        
        *   supporting models trained across 
        
            *   PyTorch
            
            *   JAX
            
            *   scikit-learn
            
        *   no dependencies on Google's ecosystem.    

        *   https://github.com/microsoft/onnxruntime

        *   https://onnxruntime.ai/


    *   Cactus 

        *   for modern edge-AI LLM/vision hybrid routing
        
        *   Built specifically as a modern mobile-first runtime for LLMs and vision with native 
            Swift/Kotlin bindings and automatic cloud fallbacks

    *   PyTorch Mobile. Additional edge engines include 

        Best if your primary training pipeline is natively in PyTorch, allowing direct deployment 
        without conversion steps

    *   AWS Neuron 

    *   MediaPipe.Key 

        Google's alternative high-level SDK for running pre-built on-device machine learning 
        pipelines (like vision/audio) utilizing hardware acceleration.
