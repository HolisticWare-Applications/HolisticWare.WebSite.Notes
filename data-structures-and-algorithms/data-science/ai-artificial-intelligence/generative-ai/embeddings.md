# Embeddings

embeddings.md

*   https://huggingface.co/spaces/mteb/leaderboard

*   https://www.reddit.com/r/dotnet/comments/1kgb25u/i_finally_got_embedding_models_running_natively/

*   https://github.com/dotnet/smartcomponents/blob/main/docs/local-embeddings.md

*   https://github.com/Giorgi/Semantic-Search-Demo

*   https://github.com/SciSharp/LLamaSharp


*   run GPT2 in a .NET MAUI app using ML.NET and the ONNX version of the model. 

    used the TiktokenTokenizer like this:

    ```csharp
    _tokenizer = TiktokenTokenizer.CreateForModel("gpt2");
    ```

*   https://github.com/curiosity-ai/umap-sharp

*   https://github.com/chuckbeasley/HuggingfaceOnnx

*   https://menalb.hashnode.dev/semantic-search-with-vector-embedding

*   https://github.com/dotnet-smartcomponents/smartcomponents/blob/main/docs/local-embeddings.md#shrinking-embeddings-quantization

*   Mastering Semantic Classification with Embeddings and Vector Similarity in .NET/C#

    *   https://www.youtube.com/watch?v=SoIRV6vPM7Y&ab_channel=MicrosoftReactor

*   Models tested:

    *   BAAI/bge-base-en-v1.5

    *   intfloat/e5-base-v2

    *   nomic-ai/nomic-embed-text-v1

    *   sentence-transformers/all-MiniLM-L6-v2

*   Dataset: BEIR TREC-COVID (real medical queries + relevance judgments)

```
Model	        ms / 1K Tokens	Query Latency (ms_	top-5 hit rate
MiniLM-L6-v2	14.7	        68	                78.1%
E5-Base-v2	    20.2	        79	                83.5%
BGE-Base-v1.5	22.5	        82	                84.7%
Nomic-Embed-v1	41.9	        110	                86.2%
```

*   embeddinggemma:300m

*   qwen3-embedding-0.6b and 4b

*   https://www.reddit.com/r/Rag/comments/1nro65j/opensource_embedding_models_which_ones_the_best

*   https://supermemory.ai/blog/best-open-source-embedding-models-benchmarked-and-ranked/

*   https://www.reddit.com/r/Rag/comments/1o4xfs9/replacing_openai_embeddings/


HuggingFaceEmbeddings sentence_transformers


sentence_transformers python package installed.

```python
from langchain_huggingface import HuggingFaceEmbeddings

model_name = "sentence-transformers/all-mpnet-base-v2"
model_kwargs = {'device': 'cpu'}
encode_kwargs = {'normalize_embeddings': False}
hf = HuggingFaceEmbeddings(
    model_name=model_name,
    model_kwargs=model_kwargs,
    encode_kwargs=encode_kwargs
)
```