# Splitting vs Chunking


splitting-vs-chunking.md


*   Splitting 

    *   more general term
    
        often used for dividing text into smaller units based on simple criteria like character count or sentence boundaries
        
*   Chunking

    *   more sophisticated approach 
    
        aims to create meaningful, semantically coherent segments of text, often considering factors like context and topic. 

## Videos

*   But, How is Chunking Done ? Splitting Basics Using LangChain

    https://www.youtube.com/watch?v=tMwdl9hFPns


*   The 5 Levels Of Text Splitting For Retrieval

    https://www.youtube.com/watch?v=8OJC21T2SL4&ab_channel=GregKamradt

    *   LangChain: 

        https://python.langchain.com/docs/modules/data_connection/document_transformers/semantic-chunker

    *   Llama Index: 

        https://llamahub.ai/l/llama-packs/llama-index-packs-node-parser-semantic-chunking?from=all

    ```python
    from langchain.text_splitter import RecursiveCharacterTextSplitter
    ```

    *   Theory & Importance of Text Splitting:
    
        *   Context Limits
        
            Language models have limitations on the amount of data they can process at once.
            
            Splitting helps by breaking down large texts into manageable chunks.

        *   Signal-to-Noise Ratio: Providing focused information relevant to the task improves the model's accuracy and efficiency. Splitting eliminates unnecessary data, enhancing the signal-to-noise ratio.
    Retrieval Optimization: Splitting prepares data for effective retrieval, ensuring the model can easily access the necessary information for its task.
    Five Levels of Text Splitting:
    Level 1: Character Splitting:
    Concept: Dividing text based on a fixed number of characters.
    Pros: Simplicity and ease of implementation.
    Cons: Rigidity and disregard for text structure.
    Tools: LangChain's CharacterTextSplitter.
    Level 2: Recursive Character Text Splitting:
    Concept: Recursively splitting text using a hierarchy of separators like double new lines, new lines, spaces, and characters.
    Pros: Leverages text structure (paragraphs) for more meaningful splits.
    Cons: May still split sentences if chunk size is too small.
    Tools: LangChain's RecursiveCharacterTextSplitter.
    Level 3: Document Specific Splitting:
    Concept: Tailoring splitting strategies to specific document types like markdown, Python code, JavaScript code, and PDFs.
    Pros: Utilizes document structure (headers, functions, classes) for better grouping of similar information.
    Cons: Requires specific splitters for different document types.
    Tools: LangChain's various document-specific splitters, Unstructured library for PDFs and images.
    Level 4: Semantic Splitting:
    Concept: Grouping text chunks based on their meaning and context using embedding comparisons.
    Pros: Creates semantically coherent chunks, overcoming limitations of physical structure-based methods.
    Cons: Requires more processing power and is computationally expensive.
    Methods: Hierarchical clustering with positional reward, finding breakpoints between sequential sentences.
    Level 5: Agentic Chunking:
    Concept: Employing an agent-like system that iteratively decides whether new information belongs to an existing chunk or should initiate a new one.
    Pros: Emulates human-like chunking with dynamic decision-making.
    Cons: Highly experimental, slow, and computationally expensive.
    Tools: LangChain Hub prompts for proposition extraction, custom agentic chunker script.
    Bonus Level: Alternative Representations:
    Concept: Exploring ways to represent text beyond raw form for improved retrieval.
    Methods: Multi-vector indexing (using summaries or hypothetical questions), parent document retrieval, graph structure extraction.
    Key Takeaways:
    The ideal splitting strategy depends on your specific task, data type, and desired outcome.
    Consider the trade-off between simplicity, accuracy, and computational cost when choosing a splitting method.
    Experiment with different techniques and evaluate their effectiveness for your application.
    Be mindful of future advancements in language models and chunking technologies.
    Further Exploration:
    Full Stack Retrieval website: Explore tutorials, code examples, and resources for retrieval and chunking techniques.
    LangChain library: Discover various text splitters, document loaders, and retrieval tools.
    Unstructured library: Explore options for extracting information from PDFs and images.
    LlamaIndex library: Investigate alternative chunking and retrieval methods.
    Research papers and articles on text splitting and retrieval.
    Chunking Strategies in RAG: Optimising Data for Advanced AI Responses

    https://www.youtube.com/watch?v=pIGRwMjhMaQ&ab_channel=MervinPraison

    ```python
    from langchain.text_splitter import RecursiveCharacterTextSplitter
    ```

    based on Greg's work

https://github.com/langchain-ai/langchain/discussions/18001

https://github.com/drittich/SemanticSlicer

https://python.langchain.com/docs/how_to/recursive_text_splitter/

https://towardsdev.com/unlocking-langchain-text-splitting-methodologies-for-retrieval-fcb35e442778

https://medium.com/@developer.yasir.pk/understanding-recursive-character-text-splitting-8419518db6f4

https://github.com/tryAGI/LangChain

    Proposal based

    a plan or suggestion, especially a formal or written one, put forward for consideration by others.






## C# file indexing

https://stackoverflow.com/questions/3540257/indexing-files-and-quickiest-way-to-find-a-file-in-folders

https://github.com/jchristn/IndexEngine

Lucene.net 

