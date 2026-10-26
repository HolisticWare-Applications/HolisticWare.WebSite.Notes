# Decision Models

decision-models.md

Decison Models

llama.cpp server

  supports decision models through the 

  /v1/systemone endpoint. 

  user sends a state (text, JSON, a screenshot) and typed questions. The model returns a probability for each option in a single forward pass.

The API follows the System One format introduced with TypeSafe's Jev model, so existing clients only need a new base URL. Implementation details are in PR #29818.

Supported models
Model	Size	Based on	Languages	Images	License	Speed*
Julia-1	144M	mmBERT-small	50+	no	Apache 2.0	3 ms
Laya	421M	ModernBERT-large	English	no	Apache 2.0	5 ms
Kev-4B	4B	Qwen3.5-4B-Base	English	no	Apache 2.0	12 ms
lev	4B	Qwen3.5-4B	English	no	Apache 2.0	36 ms
OpenJev	27B	Qwen3.8-27B	en, de, fr, hi, zh, ja	yes	CC BY-NC 4.0	43 ms
Clef	27B	Qwen3.8-27B	English	yes	Apache 2.0	—


https://huggingface.co/collections/ggml-org/decision-models

jevify

https://github.com/fidecastro/jevify

https://daily.dev/posts/llama-cpp-adds-multimodal-model-support-and-metal-speedups-with-clef-models-runnable-via-llama-serv-wxofzi2xh
