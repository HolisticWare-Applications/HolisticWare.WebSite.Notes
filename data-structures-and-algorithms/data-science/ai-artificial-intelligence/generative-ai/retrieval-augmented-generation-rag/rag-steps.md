# RAG Steps

*   https://www.c-sharpcorner.com/article/building-a-local-document-rag-system-using-node-js-supabase-and-openai/

*   feed PDF to multimodal LM to get tags/lists of

    *   text

    *   structure

        *   title

        *   pages

        *   paragraphs

        *   images

        *   tables

*   https://github.com/itanishqshelar/SmartRAG

*   AI/ML Models
    
    *   Ollama - Local LLM hosting (Llama 3.1 8B model)
    
    *   PyTorch - Deep learning framework
    
    *   Transformers - Hugging Face model library
    
    *   OpenAI Whisper - Speech-to-text conversion (base model)
    
    *   BLIP - Image captioning (Salesforce/blip-image-captioning-base)

*   Vector Database & Embeddings
    
    *   ChromaDB - Vector storage and similarity search
    
    *   Nomic Embed Text - Text embeddings via Ollama (768-dim vectors)
    
    *   CLIP - Visual embeddings for images (openai/clip-vit-base-patch32)
    
    *   FAISS - Alternative vector search (Facebook AI)

*   Document Processing
    
    *   PyPDF2 - PDF text extraction
    
    *   python-docx - Word document processing
    
    *   pdfplumber - Advanced PDF parsing

    *   python-pptx - PowerPoint file support

*   Image Processing
    
    *   Pillow (PIL) - Image manipulation
    
    *   OpenCV - Computer vision operations
    
    *   Tesseract OCR - Text extraction from images
    
    *   pytesseract - Python wrapper for Tesseract

*   Audio Processing
    
    *   PyDub - Audio file manipulation

    *   librosa - Audio analysis and processing

    *   Whisper - Audio transcription

*   Utilities
    
    *   NumPy - Numerical computations
    
    *   PyYAML - Configuration management
    
    *   tqdm - Progress bars
    
    *   requests - HTTP client



 RAG

1.From Answers to Guidance: A Proactive Dialogue System for Legal Documents  https://arxiv.org/abs/2510.19723v1
2.CoSense-LLM: Semantics at the Edge with Cost- and Uncertainty-Aware Cloud-Edge Cooperation https://arxiv.org/abs/2510.19670v1
3.LLavaCode: Compressed Code Representations for Retrieval-Augmented Code Generation  https://arxiv.org/abs/2510.19644v1
4.Algorithmic Fairness in NLP: Persona-Infused LLMs for Human-Centric Hate Speech Detection   https://arxiv.org/abs/2510.19331v1
5.Think Straight, Stop Smart: Structured Reasoning for Efficient Multi-Hop RAG    https://arxiv.org/abs/2510.19171v1

This is roughly how RAG works:

You ask a question to the RAG application.

The application will search a vector database for chunks of information related to your question.

The question + vector db are forwarded to the LLM with a prompt containing the retrieval info plus a prompt: "answer this question using this information/references".

The LLM will stream the response, linking to any original documents used to answer the question.

https://www.reddit.com/r/LocalLLaMA/comments/1ofq6m7/which_model_has_the_best_world_knowledge_open/

Production RAG: what we learned from processing 5M+ documents
Tools & Resources

I've spent the past 8 months the trenches, I want to share what actually worked vs. wasted our time. We built RAG for Usul AI (9M pages) and an unnamed legal AI enterprise (4M pages).
Langchain + Llamaindex

We started out with youtube tutorials. First Langchain -> Llamaindex. Got to a working prototype in a couple of days and were optimistic with the progress. We run tests on subset of the data (100 documents) and the results looked great. We spend the next few days running the pipeline on the production dataset and got everything working in a week — incredible.

Except it wasn’t, the results were subpar and only the end users could tell. We spent the following few months rewriting pieces of the system, one at a time, until the performance was at the level we wanted. Here are things we did ranked by ROI.
What moved the needle

    Query Generation: not all context can be captured by the user’s last query. We had an LLM review the thread and generate a number of semantic + keyword queries. We processed all of those queries in parallel, and passed them to a reranker. This made us cover a larger surface area and not be dependent on a computed score for hybrid search.

    Reranking: the highest value 5 lines of code you’ll add. The chunk ranking shifted a lot. More than you’d expect. Reranking can many times make up for a bad setup if you pass in enough chunks. We found the ideal reranker set-up to be 50 chunk input -> 15 output.

    Chunking Strategy: this takes a lot of effort, you’ll probably be spending most of your time on it. We built a custom flow for both enterprises, make sure to understand the data, review the chunks, and check that a) chunks are not getting cut mid-word or sentence b) ~each chunk is a logical unit and captures information on its own

    Metadata to LLM: we started by passing the chunk text to the LLM, we ran an experiment and found that injecting relevant metadata as well (title, author, etc.) improves context and answers by a lot.

    Query routing: many users asked questions that can’t be answered by RAG (e.g. summarize the article, who wrote this). We created a small router that detects these questions and answers them using an API call + LLM instead of the full-blown RAG set-ups.

Our stack

    Vector database: Azure → Pinecone → Turbopuffer (cheap, supports keyword search natively)

    Document Extraction: Custom

    Chunking: Unstructured.io by default, custom for enterprises (heard that Chonkie is good)

    Embedding: text-embedding-3-large, haven’t tested others

    Reranker: None → Cohere 3.5 → Zerank (less known but actually good)

    LLM: GPT-4.1 → GPT-5 → GPT-4.1 (covered by Azure credits)

Going Open-source

We put all our learning into an open-source project: https://github.com/agentset-ai/agentset under an MIT license. Happy to share any learnings.

For those interested there is a discussion on this on hackernews https://news.ycombinator.com/item?id=45645349

OP. Reranking is a specialized LLM that takes the user query, and a list of candidate results, then re-sets the order based on which ones are more relevant to the query.

Here's sample code: https://docs.cohere.com/reference/rerank


https://news.ycombinator.com/item?id=45645349


https://blog.pamelafox.org/2024/06/vector-search-is-not-enough.html

