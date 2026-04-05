# RAG != Memory

*   https://www.reddit.com/r/Rag/comments/1okcyr7/rag_is_not_memory_and_that_difference_is_more/

*   https://mem0.ai/research


*   naive RAG

    *   RAG is about retrieval on demand
    
        1.  query gets embedded
        
        2.  compared to a vector store
        
        3.  the top matches come back, 
        
        4.  LLM uses them to ground its answer

*   Proper RAG 

    *   considers conflicts
    
    *   new information
    
    *   time, etc. Otherwise you will pick up the wrong context from your sources. Something like 70% of context becomes obsolete overtime in an org. If RAG doesn't consider these things then everything should just be called 'Memory'.

