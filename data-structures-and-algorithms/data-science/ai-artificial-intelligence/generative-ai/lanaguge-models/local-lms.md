# local LMs

local-lms.md

*   Backyard AI

    *   https://backyard.ai/desktop

    *   https://www.reddit.com/r/BackyardAI/comments/1el2odh/ios_android_mobile_app_public_beta/

    ```
    brew install --cask backyard-ai
    ```

*   LM Studio

    *   https://lmstudio.ai/

    *   https://github.com/lmstudio-ai

    ```
    brew install --cask lm-studio
    ```

    https://www.reddit.com/r/LocalLLaMA/comments/1bphf6n/random_question_what_are_your_opinions_on/
    https://www.reddit.com/r/LocalLLaMA/comments/1cvawmz/why_do_people_say_lm_studio_isnt_opensourced/
    https://lmstudio.ai/docs/cli
    https://gptforwork.com/help/ai-models/local-servers/set-up-lm-studio-on-macos

    https://github.com/lmstudio-ai/lms

*   Open WebUI

*   Msty
    https://msty.app/

Jan.ai
    https://jan.ai/

koboldcpp and sillytavern

AnythingLLM

    https://anythingllm.com/

    https://github.com/Mintplex-Labs/anything-llm

## Android

https://www.kdnuggets.com/using-claude-3-7-locally

local llms

*   https://github.com/csarron/OpenCLDemo/tree/master

*   https://ai.google.dev/edge/mediapipe/solutions/genai/llm_inference/android

    *   https://maven.google.com/web/index.html?q=com.google.mediapipe

    *   https://huggingface.co/litert-community/Gemma3-1B-IT

    *   https://ai.google.dev/edge/mediapipe/solutions/genai/llm_inference/index#models

    *   https://maven.google.com/web/index.html?q=com.google.ai.edge.localagents#com.google.ai.edge.localagents:localagents-rag

    *   https://ai.google.dev/edge/mediapipe/solutions/genai/rag/android
    
*   https://picovoice.ai/blog/how-to-run-a-local-llm-on-android/

    *   https://repo1.maven.org/maven2/ai/picovoice/picollm-android/1.3.0/

*   https://www.kdnuggets.com/install-run-llms-locally-android-phones

https://www.reddit.com/r/LocalLLaMA/comments/1fckgnz/how_to_run_local_llm_on_phone/

https://pieces.app/blog/best-llm-for-coding-cloud-vs-local

Models can be obtained in Huggingface. I like the ones made by person named Bartowsky. Phi-3.5 and Gemma 2 2B are both good and the concrete quant version depends on the speed-quality ratio that you need. Basically the bigger model size the smarter and slower it is 
https://huggingface.co/bartowski/Phi-3.5-mini-instruct_Uncensored-GGUF
https://huggingface.co/bartowski/gemma-2-2b-it-abliterated-GGUF

https://www.reddit.com/r/LocalLLaMA/comments/15gc1d6/running_llms_locally_on_android/

https://www.reddit.com/r/LocalLLaMA/comments/16t0lbw/best_model_to_run_locally_on_an_android_phone/

The idea of MLC is to provide APIs on all platforms so that all developers could reuse and develop in their own app. The particular Java API for Android can be found here: 

https://github.com/mlc-ai/mlc-llm/blob/main/android/src/java/ai/mlc/mlcllm/ChatModule.java. Developers could reuse them to broaden the feature set without having to worry about LLM performance

The most coherent small model I've tried so far is 
    Calypso 3B. 
    https://huggingface.co/Aryanne/Calypso-3B-alpha-v2-gguf

Granted, it goes off the rails constantly, but all these smaller models do in my experience and Calypso is the most consistent for me so far. Calypso is also geared towards chat, so it's not very useful for information, but is fun when it's focused.

I've also tried 
    Marx 3B 
    https://huggingface.co/NikolayKozloff/Marx-3B-V2-GGUF
    
    llama2 4B
    https://huggingface.co/Aryanne/Llama-2-4B-gguf

    Basilisk 4B
    https://huggingface.co/Aryanne/Basilisk-4B-gguf

They all behaved similarly in that they would ignore my questions, go off on whatever random subject they felt like, and would constantly answer for the user. Almost useless. I was hoping the jump from 3B to 4B would make for a better experience, but that wasn't the case.

All that said, I've been using llama.cpp server and only started tweaking settings and prompts the last couple days. There is some improvement, so most likely the real problem is my ignorance in that I'm not sure what the most effective settings and prompts are for these models.

Others in this thread seem to have installed kobold in the Termux. That would be better, imo, but I'm not sure how they managed that. I get a tkinter error and there's no tkinter package available so 🤷 If anyone wants to enlighten me on a fix, I would love to hear it.


We (MLC LLM) revamped a new Android doc making it easier to follow: https://llm.mlc.ai/docs/deploy/android.html. Would be great to have more feedbacks here!

Check out quantized

    Microsoft Phi-2 and its 
    https://huggingface.co/radames/phi-2-quantized/tree/main

    Candle Phi WASM demo
    https://huggingface.co/spaces/radames/Candle-phi1-phi2-wasm-demo?model=phi_2_0_q4k
    


https://www.zdnet.com/article/how-to-install-an-llm-on-macos-and-why-you-should/