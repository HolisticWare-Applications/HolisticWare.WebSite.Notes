# Chunklet

chunklet.md

*   https://github.com/speedyk-005/chunklet

```shell
pip install chunklet
```

```python
from chunklet import Chunklet

# Sample text
text = (
    "She loves cooking. He studies AI. The weather is great. "
    "We play chess. Books are fun. Robots are learning."
)

# Initialize Chunklet 
chunker = Chunklet(verbose=False, use_cache=True) # Note: this are by default

# 1. Preview the sentences
sentences = chunker.preview_sentences(text)
print("Sentences to be chunked:")
for s in sentences:
    print(f"- {s}")

# 2. Chunk the text by sentences
chunks = chunker.chunk(
    text,
    mode="hybrid",
    max_sentences=2,
    overlap_percent=20
)

# Print the chunks
print("\nChunks:")
for i, chunk in enumerate(chunks):
    print(f"--- Chunk {i+1} \")
    print(chunk)

```