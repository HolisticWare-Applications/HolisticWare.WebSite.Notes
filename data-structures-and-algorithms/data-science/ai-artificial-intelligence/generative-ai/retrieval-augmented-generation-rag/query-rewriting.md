# Query rewriting

query-rewriting.md

Query Rewriting

query rewriting
query translation


https://en.wikipedia.org/wiki/Query_rewriting

Query rewriting transforms or modifies a user's search query to improve retrieval accuracy, relevance, and performance. Used in search systems and AI-powered RAG applications, it handles issues like misspellings, synonyms, and ambiguous intent, often employing Large Language Models (LLMs) to generate more effective queries before execution. 
Key aspects of query rewriting include:
Objectives: It aims to improve search accuracy, enhance user intent, and boost performance by refining ambiguous, poorly-formed, or inefficient queries.
Techniques:
Query Expansion: Adding synonyms or related terms to broaden search results (e.g., using "car" instead of just "automobile").
Spell Correction: Fixing typos.
Contextual Enhancement: Restructuring queries to be more specific to the domain, often using LLMs.
Query Generation/Paraphrasing: Generating multiple variations of a query for ensemble retrieval, often used in LlamaIndex Python Documentation.
Applications:
RAG (Retrieval-Augmented Generation): Optimizing RAG pipelines by improving the quality of retrieved documents before answering, as seen in this YouTube video and this YouTube video.
Search Engines: Utilized in OpenSearch and Azure AI Search to improve search results, according to the OpenSearch Documentation and Microsoft Learn.
Database Optimization: Modifying SQL queries to improve execution performance. 

Rewriting RAG Queries with OpenAI Structured Outputs

    youtube.com/watch?v=J6o3B_OGA-Y

https://learn.microsoft.com/en-us/azure/search/query-lucene-syntax

https://medium.com/@rogi23696/build-an-advanced-rag-app-query-rewriting-1cedbfbfbc59

https://colab.research.google.com/drive/1-NT0_mmyoSnaDQJ1Zuo0XX613TG5lzjZ?usp=sharing

https://medium.com/@rogi23696/build-an-advanced-rag-app-query-rewriting-1cedbfbfbc59

RAG from scratch: Part 5 (Query Translation -- Multi Query)

    https://www.youtube.com/watch?v=JChPi0CRnDY

Query rewriting is the process of modifying a user's search query to improve retrieval accuracy and relevance, often by expanding it with similar terms. 
Common synonyms and related terms for "query rewriting" include:
Query Expansion: The specific process of adding synonyms, related keywords, or broader terms to a search to increase recall.
Query Reformulation: The broader act of changing a query to better meet information needs, often involving rephrasing.
Query Refinement: Refining, improving, or narrowing down a query for better precision.
Query Transformation: Converting the original, raw query into a more effective structure or set of terms.
Query Enhancement: Adding or substituting terms to improve search results.
Query Understanding (Context-Aware): A broader approach focusing on interpreting intent, which leads to rewriting.
Search/Query Substitution: Replacing or adding terms based on automated dictionaries or machine learning. 
Key Aspects of Query Rewriting
Goal: To bridge the gap between user input and the document index to improve precision and recall.
Techniques: Synonym detection, spelling correction, stopword removal, and semantic expansion.
Context: Used heavily in search engines, e-commerce, and RAG (Retrieval-Augmented Generation) systems. 